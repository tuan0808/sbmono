#!/bin/bash

# Native Federation Migration Script
# Run this from your project root

echo "🚀 Starting Native Federation Migration..."

# Step 1: Remove old package, install new
echo "📦 Updating packages..."
npm uninstall @angular-architects/module-federation
npm install @angular-architects/native-federation@19 --save

# Step 2: Copy config files (adjust paths as needed)
echo "📁 Copying federation configs..."

# Main (Host)
cp configs/main/federation.config.js apps/main/
cp configs/main/project.json apps/main/
cp configs/main/src/main.ts apps/main/src/
cp configs/main/src/app/content-route.ts apps/main/src/app/
cp configs/main/public/federation.manifest.json apps/main/public/

# Paper-betting
cp configs/paper-betting/federation.config.js apps/paper-betting/
cp configs/paper-betting/project.json apps/paper-betting/
cp configs/paper-betting/src/main.ts apps/paper-betting/src/

# Predictions
cp configs/predictions/federation.config.js apps/predictions/
cp configs/predictions/project.json apps/predictions/
cp configs/predictions/src/main.ts apps/predictions/src/

# Dashboard
cp configs/dashboard/federation.config.js apps/dashboard/
cp configs/dashboard/project.json apps/dashboard/
cp configs/dashboard/src/main.ts apps/dashboard/src/

# Watchlist
cp configs/watchlist/federation.config.js apps/watchlist/
cp configs/watchlist/project.json apps/watchlist/
cp configs/watchlist/src/main.ts apps/watchlist/src/

# Pages
cp configs/pages/federation.config.js apps/pages/
cp configs/pages/project.json apps/pages/
cp configs/pages/src/main.ts apps/pages/src/

# Step 3: Remove old files
echo "🗑️ Removing old module-federation.config.js files..."
rm -f apps/main/module-federation.config.js
rm -f apps/paper-betting/module-federation.config.js
rm -f apps/predictions/module-federation.config.js
rm -f apps/dashboard/module-federation.config.js
rm -f apps/watchlist/module-federation.config.js
rm -f apps/pages/module-federation.config.js

echo "✅ Migration complete!"
echo ""
echo "Next steps:"
echo "1. Run: nx serve main"
echo "2. In separate terminals, run remotes: nx serve paper-betting, etc."
echo "3. Test that host loads when remotes are down"
