// Cloudflare Worker with D1 Database
// API 服务 - 提供博客文章数据

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    // 设置 CORS 头
    const corsHeaders = {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
      "Access-Control-Allow-Headers": "Content-Type",
      "Content-Type": "application/json",
    };

    // 处理预检请求
    if (request.method === "OPTIONS") {
      return new Response(null, { headers: corsHeaders });
    }

    try {
      // 路由处理
      if (path === "/api/posts" || path === "/api/posts/") {
        return await getPosts(env.DB, corsHeaders);
      } else if (
        path === "/api/posts/latest" ||
        path === "/api/posts/latest/"
      ) {
        return await getLatestPosts(env.DB, corsHeaders);
      } else if (path.startsWith("/api/posts/")) {
        const id = path.split("/").pop();
        return await getPostById(env.DB, id, corsHeaders);
      } else if (path === "/api/blogs" || path === "/api/blogs/") {
        return await getBlogs(env.DB, corsHeaders);
      } else if (path === "/api/init" && request.method === "POST") {
        return await initDatabase(env.DB, corsHeaders);
      } else if (path === "/api/health") {
        return new Response(
          JSON.stringify({ status: "ok", timestamp: new Date().toISOString() }),
          {
            headers: corsHeaders,
          },
        );
      }

      // 404 响应
      return new Response(JSON.stringify({ error: "Not Found" }), {
        status: 404,
        headers: corsHeaders,
      });
    } catch (error) {
      console.error("Error:", error);
      return new Response(JSON.stringify({ error: error.message }), {
        status: 500,
        headers: corsHeaders,
      });
    }
  },
};

// 获取所有文章
async function getPosts(db, corsHeaders) {
  const { results } = await db
    .prepare(
      `
    SELECT p.*, b.title as blog_name, b.html_url, b.avatar_url
    FROM posts p
    JOIN blogs b ON p.blog_id = b.id
    ORDER BY p.pub_date DESC
    LIMIT 120
  `,
    )
    .all();

  return new Response(JSON.stringify(results), { headers: corsHeaders });
}

// 获取最新文章
async function getLatestPosts(db, corsHeaders) {
  const { results } = await db
    .prepare(
      `
    SELECT p.*, b.title as blog_name, b.html_url, b.avatar_url
    FROM posts p
    JOIN blogs b ON p.blog_id = b.id
    ORDER BY p.pub_date DESC
    LIMIT 40
  `,
    )
    .all();

  return new Response(JSON.stringify(results), { headers: corsHeaders });
}

// 根据 ID 获取文章
async function getPostById(db, id, corsHeaders) {
  const result = await db
    .prepare(
      `
    SELECT p.*, b.title as blog_name, b.html_url, b.avatar_url
    FROM posts p
    JOIN blogs b ON p.blog_id = b.id
    WHERE p.id = ?
  `,
    )
    .bind(id)
    .first();

  if (!result) {
    return new Response(JSON.stringify({ error: "Post not found" }), {
      status: 404,
      headers: corsHeaders,
    });
  }

  return new Response(JSON.stringify(result), { headers: corsHeaders });
}

// 获取所有博客
async function getBlogs(db, corsHeaders) {
  const { results } = await db
    .prepare(
      `
    SELECT * FROM blogs
    ORDER BY category, title
  `,
    )
    .all();

  return new Response(JSON.stringify(results), { headers: corsHeaders });
}

// 初始化数据库（创建表）
async function initDatabase(db, corsHeaders) {
  try {
    // 创建 blogs 表
    await db
      .prepare(
        `
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
      )
    `,
      )
      .run();

    // 创建 posts 表
    await db
      .prepare(
        `
      CREATE TABLE IF NOT EXISTS posts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        blog_id INTEGER NOT NULL,
        title TEXT NOT NULL,
        link TEXT NOT NULL,
        summary TEXT,
        pub_date DATETIME NOT NULL,
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (blog_id) REFERENCES blogs(id)
      )
    `,
      )
      .run();

    // 创建索引
    await db
      .prepare(`CREATE INDEX IF NOT EXISTS idx_posts_blog_id ON posts(blog_id)`)
      .run();
    await db
      .prepare(
        `CREATE INDEX IF NOT EXISTS idx_posts_pub_date ON posts(pub_date DESC)`,
      )
      .run();
    await db
      .prepare(
        `CREATE INDEX IF NOT EXISTS idx_blogs_category ON blogs(category)`,
      )
      .run();
    await db
      .prepare(`CREATE INDEX IF NOT EXISTS idx_blogs_status ON blogs(status)`)
      .run();

    return new Response(
      JSON.stringify({ message: "Database initialized successfully" }),
      {
        headers: corsHeaders,
      },
    );
  } catch (error) {
    console.error("Init error:", error);
    return new Response(JSON.stringify({ error: error.message }), {
      status: 500,
      headers: corsHeaders,
    });
  }
}
