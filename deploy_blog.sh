#!/bin/bash
cd /home/deploy/astro-project || exit

# Pull latest changes
git pull origin main

# Install dependencies
pnpm install

# Build the Astro site
pnpm build

# Deploy output to web root
rsync -av --delete dist/ /var/www/sisada.tinymeepletalk.com/

# Restart the server (if using PM2)
pm2 restart sisada-blog

echo "✅ Blog updated successfully!"