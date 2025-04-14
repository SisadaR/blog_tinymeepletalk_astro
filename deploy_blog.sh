#!/bin/bash
cd /home/deploy/astro-project || exit

# Pull latest changes
git pull origin main

# Install dependencies (if any new ones were added)
pnpm install

# Build the Astro site
pnpm build

# Restart the server (if using PM2)
pm2 restart sisada-blog

echo "✅ Blog updated successfully!"
