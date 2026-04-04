-- 清理 D1 数据库中的重复文章
-- 使用方法：npx wrangler d1 execute friend-link-house-db --file=./cleanup-duplicates.sql --remote --yes

-- 删除重复的文章，只保留每个 link 的第一条
DELETE FROM posts 
WHERE id NOT IN (
  SELECT MIN(id) 
  FROM posts 
  GROUP BY link
);

-- 验证清理结果
SELECT 
  COUNT(*) as total_posts,
  COUNT(DISTINCT link) as unique_links
FROM posts;
