// D1 数据库初始化脚本
// 用于将 README.md 中的博客数据导入到 D1 数据库

const fs = require('fs');
const Parser = require('rss-parser');
const parser = new Parser({ timeout: 12000 });

// 解析 README 中的表格
const pattern = /\| *([^\|]*) *\| *(http[^\|]*) *\| *([^\|\n]*) *\| *([^\| \n]*) *\| *([^\| \n]*) *\| *([^\| \n]*) *\|\n/g;
const readmeMdContent = fs.readFileSync('./README.md', { encoding: 'utf-8' });

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
    const status = blog.category.includes('lost') ? 'lost' : 'active';
    const category = blog.category.replace('lost-', '');
    
    sql += `INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
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
  if (!str) return '';
  return str.replace(/'/g, "''").replace(/\\/g, '\\\\');
}

// 生成数据同步脚本（用于 Worker）
async function generateSyncScript() {
  const posts = [];
  
  for (const blog of blogs) {
    if (blog.xml_url === '' || blog.category.includes('lost')) {
      continue;
    }

    try {
      const feed = await parser.parseURL(blog.xml_url);
      console.log(`Fetched: ${blog.title} - ${feed.items.length} items`);

      feed.items
        .filter(item => item.title)
        .forEach(item => {
          const pubDate = new Date(item.pubDate ?? item.published);
          posts.push({
            blog_title: blog.title,
            title: item.title,
            link: item.link,
            summary: item.summary || item.content || '',
            pub_date: pubDate.toISOString()
          });
        });
    } catch (err) {
      console.error(`Error fetching ${blog.title}:`, err.message);
    }
  }

  // 去重并排序
  const uniquePosts = posts.filter((arr, index, self) => 
    index === self.findIndex((t) => t.title === arr.title)
  );
  uniquePosts.sort((a, b) => new Date(b.pub_date) - new Date(a.pub_date));

  console.log(`\nTotal posts: ${uniquePosts.length}`);
  
  // 生成插入 SQL
  let sql = `-- Posts sync script\n-- Generated on ${new Date().toISOString()}\n-- Total posts: ${uniquePosts.length}\n\n`;
  
  // 注意：这里需要使用子查询来关联 blog_id
  sql += `-- To insert posts, use the following approach in your Worker or script:\n`;
  sql += `-- First get the blog_id, then insert the post\n\n`;
  
  uniquePosts.slice(0, 120).forEach((post, index) => {
    sql += `-- Post ${index + 1}: ${post.blog_title} - ${post.title}\n`;
    sql += `INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
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
  console.log('=== D1 Database Initialization ===\n');
  
  // 生成初始化 SQL
  const initSQL = generateInitSQL();
  fs.writeFileSync('./d1-init.sql', initSQL);
  console.log('✅ Generated: d1-init.sql (schema and blogs)');
  
  // 生成数据同步 SQL
  console.log('\nFetching RSS feeds...');
  const syncSQL = await generateSyncScript();
  fs.writeFileSync('./d1-sync-posts.sql', syncSQL);
  console.log('✅ Generated: d1-sync-posts.sql (posts data)');
  
  console.log('\n=== Done ===');
  console.log('\nNext steps:');
  console.log('1. Create D1 database in Cloudflare dashboard');
  console.log('2. Run d1-init.sql to create schema and insert blogs');
  console.log('3. Run d1-sync-posts.sql to insert posts');
  console.log('4. Update wrangler.toml with your database_id');
}

main().catch(console.error);
