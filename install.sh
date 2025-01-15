#!/bin/bash

echo ""
echo "Installing apps & tools"

echo ""
echo "	VSCode"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[visual-studio-code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install -y code

echo ""
echo "	Bun"
curl -fsSL https://bun.sh/install | bash

echo "	Adding bun to path"
export PATH="$HOME/.bun/bin:$PATH"

echo ""
echo "  Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf install -y google-chrome-stable_current_x86_64.rpm
rm google-chrome-stable_current_x86_64.rpm

echo ""
echo "	Btop"
sudo dnf install -y btop

echo ""
echo "	Done"

