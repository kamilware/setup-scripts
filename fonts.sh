#!/bin/bash

echo ""
echo "Installing JetBrains Mono font"

FONT_URL="https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip?_gl=1*1vx8w81*_ga*MTIxMzI3NzkxNy4xNzM2OTY4Mzc1*_ga_9J976DJZ68*MTczNjk2ODM3NC4xLjAuMTczNjk2ODM5NS40MC4wLjA.*_gcl_au*MTM2NTAxMDIwOC4xNzM2OTY4Mzc2*FPAU*MTM2NTAxMDIwOC4xNzM2OTY4Mzc2"

echo ""
echo "	Downloading"
wget -O JetBrainsMono.zip "$FONT_URL"

echo ""
echo "	Unzipping"
unzip JetBrainsMono.zip -d JetBrainsMono

if [ ! -d "JetBrainsMono/fonts/ttf" ]; then
    echo "Error: Could not find font files in the expected directory!"
    exit 1
fi

mkdir -p ~/.local/share/fonts

echo ""
echo "	Moving font files"
mv JetBrainsMono/fonts/ttf/* ~/.local/share/fonts/

echo ""
echo "	Performing cleanup"
rm -rf JetBrainsMono JetBrainsMono.zip

echo ""
echo "	Updating font cache"
fc-cache -fv

echo ""
echo "	Done"
