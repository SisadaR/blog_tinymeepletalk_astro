#!/bin/bash
cd ~/astro-blog || exit

# Pull latest changes
git pull origin main

# Install dependencies (if any new ones were added)
pnpm install

# Build the Astro site
pnpm run build

# Restart the server (if using PM2)
pm2 restart sisada-blog

echo "✅ Blog updated successfully!"