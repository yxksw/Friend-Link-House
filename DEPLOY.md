# Friend-Link-House 部署指南

## 项目简介

这是一个友链博客聚合器，通过 RSS 订阅朋友们的博客更新并展示。项目使用以下技术栈：

- **前端**: Vue 3 + Vite
- **后端 API**: Cloudflare Worker + D1 数据库
- **静态托管**: Cloudflare Pages
- **自动化**: GitHub Actions

## 架构说明

```
用户访问
    │
    ▼
┌─────────────────┐
│   Cloudflare    │
│     Pages       │  前端静态资源 (Vue.js)
│  (前端静态资源)  │
└────────┬────────┘
         │ API 请求
         ▼
┌─────────────────┐
│   Cloudflare    │
│     Worker      │  API 服务
│   (API 服务)    │  - /api/posts 获取文章
└────────┬────────┘  - /api/blogs 获取博客列表
         │ SQL 查询
         ▼
┌─────────────────┐
│   Cloudflare    │
│       D1        │  SQLite 数据库
│   (数据库)      │  - blogs 表: 博客信息
└─────────────────┘  - posts 表: 文章数据
         ▲
         │
    GitHub Actions
    (定时同步 RSS 数据)
```

## 部署前准备

### 1. 注册 Cloudflare 账号

访问 [cloudflare.com](https://cloudflare.com) 注册账号。

### 2. 创建 API Token

1. 登录 [Cloudflare Dashboard](https://dash.cloudflare.com)
2. 点击右上角头像 → **My Profile**
3. 选择 **API Tokens** → **Create Token**
4. 使用模板 **Edit Cloudflare Workers**
5. 确保权限包含：
   - **Account** > **Workers Scripts** > **Edit**
   - **Account** > **D1** > **Edit**
   - **Zone** > **Page Rules** > **Edit** (如果需要自定义域名)
6. 保存生成的 Token

### 3. 获取 Account ID

1. 在 [Cloudflare Dashboard](https://dash.cloudflare.com) 右侧栏找到 **Account ID**
2. 复制保存（格式类似：`1be59dcab5a04acec1bbbb9e4deee8ea`）

### 4. Fork 项目

1. 访问项目仓库
2. 点击右上角 **Fork** 按钮
3. 等待 Fork 完成

## 配置 GitHub Secrets

在你的 GitHub 仓库中，进入 **Settings** → **Secrets and variables** → **Actions**，添加以下 Secrets：

| Secret 名称 | 说明 | 示例 |
|------------|------|------|
| `CF_WORKERS_TOKEN` | Cloudflare API Token | 从步骤 2 获取 |
| `CF_ACCOUNT_ID` | Cloudflare Account ID | 从步骤 3 获取 |

**添加方法**：
1. 点击 **New repository secret**
2. Name 填写 `CF_WORKERS_TOKEN`，Secret 填写你的 API Token
3. 再次点击 **New repository secret**
4. Name 填写 `CF_ACCOUNT_ID`，Secret 填写你的 Account ID

## 部署步骤

### 步骤 1: 创建 D1 数据库

1. 登录 [Cloudflare Dashboard](https://dash.cloudflare.com)
2. 进入左侧菜单 **Workers & Pages** → **D1**
3. 点击 **Create database**
4. 数据库名称填写：`friend-link-house-db`
5. 点击 **Create**
6. 记录 **Database ID**（格式类似：`c6721307-59ae-449f-9cf4-876158c3497f`）

### 步骤 2: 修改配置文件

#### 2.1 更新 wrangler.toml

编辑 `wrangler.toml` 文件，替换以下内容：

```toml
name = "friend-link-house"
account_id = "你的-account-id"  # 替换为你的 Account ID
workers_dev = true
compatibility_date = "2026-04-03"
main = "workers-site/index.js"

# D1 数据库绑定
[[d1_databases]]
binding = "DB"
database_name = "friend-link-house-db"
database_id = "你的-database-id"  # 替换为步骤1获取的 Database ID
```

#### 2.2 更新前端 API 地址

编辑 `web/.env` 文件（如果没有则创建）：

```bash
# 开发环境
VITE_API_URL=http://localhost:8787

# 生产环境（部署后修改为你的 Worker 地址）
# VITE_API_URL=https://friend-link-house.你的账号.workers.dev
```

### 步骤 3: 初始化数据库

#### 方式一：使用 Wrangler CLI（推荐）

```bash
# 安装依赖
npm install

# 登录 Cloudflare
npx wrangler login

# 创建表结构
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

CREATE INDEX IF NOT EXISTS idx_posts_pub_date ON posts(pub_date DESC);
CREATE INDEX IF NOT EXISTS idx_blogs_status ON blogs(status);
"
```

#### 方式二：使用初始化脚本

```bash
# 生成 SQL 文件
node init-d1.js

# 执行初始化 SQL（创建表和插入博客列表）
npx wrangler d1 execute friend-link-house-db --file=./d1-init.sql

# 同步文章数据（从 RSS 获取）
npx wrangler d1 execute friend-link-house-db --file=./d1-sync-posts.sql
```

**验证数据库**：
```bash
# 查看博客数量
npx wrangler d1 execute friend-link-house-db --command="SELECT COUNT(*) as blogs_count FROM blogs;"

# 查看文章数量
npx wrangler d1 execute friend-link-house-db --command="SELECT COUNT(*) as posts_count FROM posts;"
```

### 步骤 4: 部署 Worker

```bash
# 部署 Worker
npx wrangler deploy

# 部署成功后会显示 Worker URL，例如：
# https://friend-link-house.你的账号.workers.dev
```

**测试 Worker**：
```bash
# 测试健康检查
curl https://friend-link-house.你的账号.workers.dev/api/health

# 应该返回：{"status":"ok","timestamp":"..."}
```

### 步骤 5: 创建 Pages 项目

1. 登录 [Cloudflare Dashboard](https://dash.cloudflare.com)
2. 进入左侧菜单 **Workers & Pages** → **Create application** → **Pages**
3. 选择 **Connect to Git**
4. 授权 GitHub 并选择你 Fork 的仓库
5. 构建设置：
   - **Project name**: `friend-link-house`
   - **Production branch**: `main`
   - **Build command**: `npm run build`
   - **Build output directory**: `web/dist`
6. 点击 **Save and Deploy**
7. 部署完成后，进入项目设置 → **Environment variables**
8. 添加变量：
   - `VITE_API_URL`: 你的 Worker URL（如 `https://friend-link-house.你的账号.workers.dev`）

### 步骤 6: 验证部署

1. **测试 Worker API**：
   ```
   https://friend-link-house.你的账号.workers.dev/api/health
   ```
   应该返回：`{"status":"ok","timestamp":"..."}`

2. **测试文章接口**：
   ```
   https://friend-link-house.你的账号.workers.dev/api/posts
   ```
   应该返回文章列表 JSON

3. **访问 Pages 网站**：
   ```
   https://friend-link-house.pages.dev
   ```
   应该正常显示博客文章列表

## 自动化部署

项目已配置 GitHub Actions，推送代码到 `main` 分支会自动触发部署：

### 工作流说明

| Job | 触发条件 | 功能 |
|-----|---------|------|
| `deploy-worker` | push 到 main | 部署 Worker 到 Cloudflare |
| `deploy-pages` | push 到 main | 构建并部署前端到 Cloudflare Pages |
| `sync-data` | push 到 main + 定时 | 同步 RSS 数据到 D1 数据库 |

### 定时任务

- **每天 4:00 和 16:00** 自动执行 `sync-data` job
- 自动拉取 RSS 数据并更新到 D1 数据库

### 手动触发

如需立即更新数据：
1. 进入 GitHub 仓库 → **Actions** → **Deploy**
2. 点击 **Run workflow** → 选择分支 → **Run workflow**

## 自定义配置

### 修改友链列表

编辑 `README.md` 文件中的表格，添加或删除友链：

```markdown
| 名称 | 网站 | 描述 | 头像 | RSS | 分类 |
|------|------|------|------|-----|------|
| 你的名字 | https://your-blog.com | 描述 | https://your-blog.com/avatar.png | https://your-blog.com/rss.xml | friend |
```

**分类说明**：
- `friend`: 朋友博客
- `net`: 网络博客
- `supporter`: 支持者
- `lost-friend`: 失联的朋友博客
- `lost-net`: 失联的网络博客

修改后推送代码，GitHub Actions 会自动同步数据。

### 修改网站信息

编辑 `web/src/App.vue`：

```javascript
data() {
  return {
    title: "你的友链屋名称",
    info: "你的网站描述",
    list: "友链列表",
  };
},
```

### 修改 Logo 和图标

- **网站图标**: `web/public/favicon.ico`
- **页面 Logo**: `web/src/assets/logo.png`
- **GitHub 图标**: `web/src/assets/github.png`

## 故障排查

### Worker 部署失败

#### 错误：`Could not resolve "@cloudflare/kv-asset-handler"`

**原因**: 代码中引用了 kv-asset-handler 但依赖未安装

**解决**: 
```bash
# 如果不需要 kv-asset-handler，确保 workers-site/index.js 中没有引用
# 检查代码并移除相关引用
```

#### 错误：`database_id is required`

**原因**: `wrangler.toml` 中未配置 D1 数据库 ID

**解决**:
```toml
[[d1_databases]]
binding = "DB"
database_name = "friend-link-house-db"
database_id = "你的-database-id"  # 必须填写
```

### 数据库连接失败

#### 错误：`Database not found`

**原因**: 数据库不存在或 ID 错误

**解决**:
1. 登录 Cloudflare Dashboard → D1
2. 确认数据库 `friend-link-house-db` 已创建
3. 复制正确的 Database ID 到 `wrangler.toml`

#### 错误：`no such table: blogs`

**原因**: 数据库表未创建

**解决**:
```bash
# 执行初始化 SQL
npx wrangler d1 execute friend-link-house-db --command="
CREATE TABLE IF NOT EXISTS blogs (...);
CREATE TABLE IF NOT EXISTS posts (...);
"
```

### 前端无法获取数据

#### 错误：页面显示 "加载失败"

**排查步骤**:

1. **检查浏览器控制台**（F12 → Console）
   - 查看是否有 CORS 错误
   - 查看是否有 404 或 500 错误

2. **测试 API 是否可访问**:
   ```bash
   curl https://your-worker-url/api/health
   ```

3. **检查环境变量**:
   - 确认 Pages 项目中设置了 `VITE_API_URL`
   - 确认 URL 格式正确（包含 `https://`）

#### 错误：CORS 错误

**原因**: Worker 未正确配置 CORS

**解决**: 检查 `workers-site/index.js` 中的 CORS 配置：
```javascript
const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
  "Access-Control-Allow-Headers": "Content-Type",
  "Content-Type": "application/json"
};
```

### 数据未显示

#### 错误：页面显示 "暂无文章"

**排查步骤**:

1. **确认数据库已初始化**:
   ```bash
   npx wrangler d1 execute friend-link-house-db --command="SELECT name FROM sqlite_master WHERE type='table';"
   ```
   应该显示 `blogs` 和 `posts` 表

2. **确认数据已导入**:
   ```bash
   npx wrangler d1 execute friend-link-house-db --command="SELECT COUNT(*) FROM blogs;"
   npx wrangler d1 execute friend-link-house-db --command="SELECT COUNT(*) FROM posts;"
   ```

3. **手动同步数据**:
   ```bash
   node init-d1.js
   npx wrangler d1 execute friend-link-house-db --file=./d1-init.sql
   npx wrangler d1 execute friend-link-house-db --file=./d1-sync-posts.sql
   ```

### GitHub Actions 失败

#### 错误：`Error: This request has been automatically failed because it uses a deprecated version of actions/cache: v1`

**原因**: 使用了过时的 actions 版本

**解决**: 已修复，使用 `actions/cache@v4`

#### 错误：`Secret CF_WORKERS_TOKEN is required`

**原因**: 未配置 GitHub Secrets

**解决**: 按照 [配置 GitHub Secrets](#配置-github-secrets) 步骤添加

## 本地开发

### 启动 Worker 本地开发

```bash
# 安装 Wrangler
npm install -g wrangler

# 登录 Cloudflare
wrangler login

# 启动本地开发服务器
npx wrangler dev
```

Worker 将在 `http://localhost:8787` 运行。

**测试本地 API**:
```bash
curl http://localhost:8787/api/health
```

### 启动前端开发服务器

```bash
# 创建环境变量文件
cp web/.env.example web/.env

# 编辑 .env，设置 API 地址
VITE_API_URL=http://localhost:8787

# 安装依赖并启动
npm install
npm run dev
```

前端将在 `http://localhost:5173` 运行。

### 本地数据库开发

如需本地测试 D1 数据库：

```bash
# 创建本地数据库
npx wrangler d1 create friend-link-house-db --local

# 执行 SQL
npx wrangler d1 execute friend-link-house-db --file=./d1-init.sql --local
```

## 更新数据

### 手动更新

```bash
# 重新生成数据并同步到 D1
node init-d1.js
npx wrangler d1 execute friend-link-house-db --file=./d1-sync-posts.sql
```

### 自动更新

GitHub Actions 已配置定时任务，每天自动更新两次：
- **4:00 UTC** (北京时间 12:00)
- **16:00 UTC** (北京时间 00:00)

如需立即更新：
1. 进入 GitHub 仓库 → **Actions** → **Deploy**
2. 点击 **Run workflow** → 选择 `main` 分支 → **Run workflow**

## 性能优化

### D1 数据库索引

已创建以下索引优化查询性能：
- `idx_posts_pub_date`: 按发布时间排序
- `idx_blogs_status`: 按状态筛选

### API 缓存

如需添加缓存，可在 Worker 中添加：
```javascript
// 缓存响应 5 分钟
const cacheHeaders = {
  "Cache-Control": "public, max-age=300"
};
```

## 安全建议

1. **不要提交敏感信息**:
   - `wrangler.toml` 中的 `account_id` 可以公开
   - **不要**提交 API Token 到代码仓库

2. **定期轮换 API Token**:
   - 建议每 3-6 个月更换一次
   - 在 Cloudflare Dashboard → API Tokens 中重新生成

3. **限制 Token 权限**:
   - 只授予必要的权限（D1、Workers、Pages）
   - 不要授予 Zone 权限除非需要自定义域名

4. **启用 HTTPS**:
   - Cloudflare 默认启用 HTTPS
   - 不要禁用 "Always Use HTTPS"

## 参考文档

- [Cloudflare Workers 文档](https://developers.cloudflare.com/workers/)
- [Cloudflare D1 文档](https://developers.cloudflare.com/d1/)
- [Cloudflare Pages 文档](https://developers.cloudflare.com/pages/)
- [Wrangler CLI 文档](https://developers.cloudflare.com/workers/wrangler/)
- [Vue 3 文档](https://vuejs.org/)
- [Vite 文档](https://vitejs.dev/)

## 获取帮助

如遇到问题，可以：

1. 查看 [DEPLOY_D1.md](./DEPLOY_D1.md) 了解 D1 迁移详情
2. 在 GitHub Issues 中提问
3. 参考 Cloudflare 官方文档
4. 检查 [故障排查](#故障排查) 章节

## 更新日志

### 2026-04-03
- 迁移到 D1 数据库
- 添加 GitHub Actions 自动同步
- 完善部署文档
