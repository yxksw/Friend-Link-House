# 迁移到 D1 数据库部署指南

## 架构变更

### 之前
- **Workers Sites**: 使用 KV 存储静态资源
- **前端**: 直接加载本地 JSON 文件

### 之后
- **Cloudflare Worker**: 提供 API 服务，使用 D1 数据库存储数据
- **Cloudflare Pages**: 部署前端静态资源
- **前端**: 通过 API 从 Worker 获取数据

## 已完成的修改

### 1. Worker 代码 (`workers-site/index.js`)
- 移除了 `@cloudflare/kv-asset-handler`
- 改为提供 REST API 服务
- 添加了 D1 数据库操作

API 端点：
- `GET /api/posts` - 获取所有文章（最多120条）
- `GET /api/posts/latest` - 获取最新文章（最多40条）
- `GET /api/posts/:id` - 获取单篇文章
- `GET /api/blogs` - 获取所有博客列表
- `POST /api/init` - 初始化数据库（创建表）
- `GET /api/health` - 健康检查

### 2. 配置文件 (`wrangler.toml`)
- 移除了 `[site]` 配置
- 添加了 D1 数据库绑定

### 3. 前端代码 (`web/src/App.vue`)
- 改为从 API 获取数据
- 添加了加载状态和错误处理

### 4. GitHub Actions (`.github/workflows/deploy.yml`)
- 分离了 Worker 和 Pages 的部署
- Worker: 直接部署
- Pages: 构建后部署

### 5. D1 初始化脚本 (`init-d1.js`)
- 生成数据库初始化 SQL
- 生成博客文章数据同步 SQL

## 部署步骤

### 步骤 1: 创建 D1 数据库

1. 登录 Cloudflare Dashboard
2. 进入 **Workers & Pages** → **D1**
3. 点击 **Create database**
4. 命名为 `friend-link-house-db`
5. 记录 database ID

### 步骤 2: 更新 wrangler.toml

```toml
[[d1_databases]]
binding = "DB"
database_name = "friend-link-house-db"
database_id = "你的-database-id"
```

### 步骤 3: 初始化数据库

#### 方法 A: 使用 Wrangler CLI
```bash
# 创建表
npx wrangler d1 execute friend-link-house-db --command="
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
"
```

#### 方法 B: 使用生成的 SQL 文件
```bash
# 生成 SQL 文件
node init-d1.js

# 执行初始化
npx wrangler d1 execute friend-link-house-db --file=./d1-init.sql
npx wrangler d1 execute friend-link-house-db --file=./d1-sync-posts.sql
```

### 步骤 4: 部署 Worker

```bash
npx wrangler deploy
```

### 步骤 5: 创建 Pages 项目

1. 登录 Cloudflare Dashboard
2. 进入 **Workers & Pages** → **Create application** → **Pages**
3. 连接 GitHub 仓库
4. 构建设置：
   - Build command: `npm run build`
   - Build output directory: `web/dist`
5. 添加环境变量：
   - `VITE_API_URL`: 你的 Worker URL (如 `https://friend-link-house.your-account.workers.dev`)

### 步骤 6: 配置 GitHub Secrets

在 GitHub 仓库设置中添加：
- `CF_WORKERS_TOKEN`: Cloudflare API Token
- `CF_ACCOUNT_ID`: Cloudflare Account ID

## 本地开发

### 启动 Worker 本地开发
```bash
cd workers-site
npx wrangler dev
```

### 启动前端开发服务器
```bash
# 创建 .env 文件
cp web/.env.example web/.env
# 编辑 .env 设置 VITE_API_URL=http://localhost:8787

npm run dev
```

## 数据更新

定时更新数据（已配置在 GitHub Actions 中）：
- 每天 4:00 和 16:00 自动更新

手动更新：
```bash
node init-d1.js
# 然后执行生成的 SQL 文件
```

## 注意事项

1. **D1 数据库 ID**: 部署前必须更新 `wrangler.toml` 中的 `database_id`
2. **API URL**: 前端需要配置正确的 Worker URL
3. **CORS**: Worker 已配置 CORS 允许跨域访问
4. **数据同步**: 首次部署后需要手动导入数据

## 故障排查

### Worker 部署失败
- 检查 `database_id` 是否正确
- 检查 Cloudflare API Token 权限

### 前端无法获取数据
- 检查 `VITE_API_URL` 是否正确
- 检查 Worker 是否正常运行
- 检查浏览器控制台是否有 CORS 错误

### 数据库查询失败
- 确认表已创建: `npx wrangler d1 execute friend-link-house-db --command="SELECT name FROM sqlite_master WHERE type='table';"`
- 确认数据已导入: `npx wrangler d1 execute friend-link-house-db --command="SELECT COUNT(*) FROM blogs;"`
