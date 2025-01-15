#!/bin/bash

echo ""
echo "Installing drivers"

echo ""
echo "  AMD drivers"

sudo dnf install -y xorg-x11-drv-amdgpu

echo ""
echo "  Vulkan drivers"
sudo dnf install -y vulkan-tools

echo ""
echo "	Done"

