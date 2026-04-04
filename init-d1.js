// D1 数据库初始化脚本
// 用于将 README.md 中的博客数据导入到 D1 数据库

const fs = require("fs");
const Parser = require("rss-parser");
const parser = new Parser({ timeout: 12000 });

// 解析 README 中的表格（支持最后一行没有换行符）
const pattern =
  /\| *([^\|]*) *\| *(http[^\|]*) *\| *([^\|\n]*) *\| *([^\| \n]*) *\| *([^\| \n]*) *\| *([^\| \n]*) *\|/g;
const readmeMdContent = fs.readFileSync("./README.md", { encoding: "utf-8" });

const blogs = [];
let resultArray;
while ((resultArray = pattern.exec(readmeMdContent)) !== null) {
  blogs.push({
    title: resultArray[1].trim(),
    html_url: resultArray[2].trim(),
    description: resultArray[3].trim(),
    avatar_url: resultArray[4].trim(),
    xml_url: resultArray[5].trim(),
    category: resultArray[6].trim(),
  });
}

// 生成 SQL 初始化脚本
function generateInitSQL() {
  let sql = `-- D1 Database Initialization Script
-- Generated on ${new Date().toISOString()}

-- Create tables
CREATE TABLE IF NOT EXISTS blogs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  html_url TEXT NOT NULL,
  description TEXT,
  avatar_url TEXT,
  xml_url TEXT,
  category TEXT,
  status TEXT DEFAULT 'active',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  blog_id INTEGER NOT NULL,
  title TEXT NOT NULL,
  link TEXT NOT NULL,
  summary TEXT,
  pub_date DATETIME NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (blog_id) REFERENCES blogs(id)
);

-- Create indexes
CREATE INDEX IF NOT EXISTS idx_posts_blog_id ON posts(blog_id);
CREATE INDEX IF NOT EXISTS idx_posts_pub_date ON posts(pub_date DESC);
CREATE INDEX IF NOT EXISTS idx_blogs_category ON blogs(category);
CREATE INDEX IF NOT EXISTS idx_blogs_status ON blogs(status);

-- Insert blogs
`;

  blogs.forEach((blog, index) => {
    const status = blog.category.includes("lost") ? "lost" : "active";
    const category = blog.category.replace("lost-", "");

    sql += `INSERT OR REPLACE INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  ${index + 1},
  '${escapeSQL(blog.title)}',
  '${escapeSQL(blog.html_url)}',
  '${escapeSQL(blog.description)}',
  '${escapeSQL(blog.avatar_url)}',
  '${escapeSQL(blog.xml_url)}',
  '${escapeSQL(category)}',
  '${status}'
);\n`;
  });

  sql += `\n-- Blogs inserted: ${blogs.length}\n`;

  return sql;
}

// 转义 SQL 字符串
function escapeSQL(str) {
  if (!str) return "";
  return str.replace(/'/g, "''").replace(/\\/g, "\\\\");
}

// 生成数据同步脚本（用于 Worker）
async function generateSyncScript() {
  const posts = [];

  for (const blog of blogs) {
    if (blog.xml_url === "" || blog.category.includes("lost")) {
      continue;
    }

    try {
      const feed = await parser.parseURL(blog.xml_url);
      console.log(`Fetched: ${blog.title} - ${feed.items.length} items`);

      // 每个博客只取最新 5 篇文章
      const latestPosts = feed.items.filter((item) => item.title).slice(0, 5); // 限制每个博客 5 篇

      latestPosts.forEach((item) => {
        const pubDate = new Date(item.pubDate ?? item.published);
        posts.push({
          blog_title: blog.title,
          title: item.title,
          link: item.link,
          summary: item.summary || item.content || "",
          pub_date: pubDate.toISOString(),
        });
      });
    } catch (err) {
      console.error(`Error fetching ${blog.title}:`, err.message);
    }
  }

  // 去重并排序（根据 link 去重，更准确）
  const uniquePosts = posts.filter(
    (arr, index, self) => index === self.findIndex((t) => t.link === arr.link),
  );
  uniquePosts.sort((a, b) => new Date(b.pub_date) - new Date(a.pub_date));

  console.log(`\nTotal posts fetched: ${posts.length}`);
  console.log(`Total unique posts: ${uniquePosts.length}`);
  console.log(
    `Will sync ${uniquePosts.length} posts to D1 (${blogs.length} blogs × ~5 posts each)`,
  );

  // 生成插入 SQL
  let sql = `-- Posts sync script\n-- Generated on ${new Date().toISOString()}\n-- Total blogs: ${blogs.length}\n-- Posts per blog: 5\n-- Total posts to sync: ${uniquePosts.length}\n\n`;

  // 同步所有文章（每个博客最新 5 篇）
  uniquePosts.forEach((post, index) => {
    sql += `-- Post ${index + 1}: ${post.blog_title} - ${post.title}\n`;
    sql += `INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '${escapeSQL(post.blog_title)}'),
  '${escapeSQL(post.title)}',
  '${escapeSQL(post.link)}',
  '${escapeSQL(post.summary.substring(0, 500))}',
  '${post.pub_date}'
);\n`;
  });

  return sql;
}

// 主函数
async function main() {
  console.log("=== D1 Database Initialization ===\n");
  console.log("Step 1: Generating init SQL...");

  // 生成初始化 SQL
  const initSQL = generateInitSQL();
  fs.writeFileSync("./d1-init.sql", initSQL);
  console.log("✅ Generated: d1-init.sql (schema and blogs)");
  console.log("Step 2: Fetching RSS feeds...");

  // 生成数据同步 SQL
  console.log("\nFetching RSS feeds...");
  const syncSQL = await generateSyncScript();
  fs.writeFileSync("./d1-sync-posts.sql", syncSQL);
  console.log("✅ Generated: d1-sync-posts.sql (posts data)");
  console.log("Step 3: Complete!");

  console.log("\n=== Done ===");

  // 在 GitHub Actions 中输出特殊标记，帮助检测完成
  console.log("::group::Initialization Complete");
  console.log("SQL files generated successfully!");
  console.log("- d1-init.sql: Schema and blogs");
  console.log("- d1-sync-posts.sql: Posts data");
  console.log("::endgroup::");

  // 强制刷新 stdout，确保 GitHub Actions 检测到完成
  console.log("\n[COMPLETE] Script execution finished successfully");

  // 确保在 GitHub Actions 中正确退出
  process.exit(0);
}

main().catch((err) => {
  console.error("❌ Error:", err.message);
  process.exit(1);
});
