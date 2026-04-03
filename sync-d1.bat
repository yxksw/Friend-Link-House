@echo off
echo === D1 Database Sync ===
echo.

echo Step 1: Syncing blogs...
npx wrangler d1 execute friend-link-house-db --file=./d1-init.sql --remote --yes

echo.
echo Step 2: Syncing posts...
npx wrangler d1 execute friend-link-house-db --file=./d1-sync-posts.sql --remote --yes

echo.
echo === Sync Complete ===
