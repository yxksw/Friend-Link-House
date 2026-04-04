-- D1 Database Initialization Script
-- Generated on 2026-04-04T04:29:37.326Z

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
INSERT OR REPLACE INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  1,
  '张洪Heo',
  'https://blog.zhheo.com/',
  '分享设计与科技生活',
  'https://img.zhheo.com/i/67d8fa75943e4.webp',
  'https://blog.zhheo.com/rss.xml',
  'net',
  'active'
);
INSERT OR REPLACE INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  2,
  '清羽飞扬',
  'https://blog.liushen.fun/',
  '柳影曳曳，清酒孤灯，扬笔撒墨，心境如霜',
  'https://blog.liushen.fun/info/avatar.ico',
  'https://blog.liushen.fun/atom.xml',
  'net',
  'active'
);
INSERT OR REPLACE INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  3,
  '纸鹿摸鱼处',
  'https://blog.zhilu.site/',
  '纸鹿至麓不知路，支炉制露不止漉',
  'https://www.zhilu.site/api/avatar.png',
  'https://blog.zhilu.site/atom.xml',
  'net',
  'active'
);
INSERT OR REPLACE INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  4,
  'CWorld Site',
  'https://cworld0.com/',
  '求知若愚，虚怀若谷',
  'https://gravatar.loli.net/avatar/1ffe42aa45a6b1444a786b1f32dfa8aa?s=200',
  'https://cworld0.com/rss.xml',
  'net',
  'active'
);

-- Blogs inserted: 4
