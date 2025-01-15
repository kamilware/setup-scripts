#!/bin/bash

echo ""
echo "Update & Upgrade"

sudo dnf update --refresh -y
sudo dnf upgrade --refresh -y

echo ""
echo "	Performing cleanup"
sudo dnf autoremove -y
sudo dnf clean all

echo ""
echo "	Done"
