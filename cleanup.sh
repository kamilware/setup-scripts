#!/bin/bash

echo ""
echo "Uninstalling bloat"

echo "	Contacts"
sudo dnf remove -y gnome-contacts

echo "	Weather"
sudo dnf remove -y gnome-weather

echo "	LibreOffice"
sudo dnf remove -y libreoffice*

echo "	Rhythmbox"
sudo dnf remove -y rhythmbox

echo "	Help"
sudo dnf remove -y gnome-user-docs

echo "	Tour"
sudo dnf remove -y gnome-tour

echo "	Document Scanner"
sudo dnf remove -y simple-scan

echo "	Maps"
sudo dnf remove -y gnome-maps

echo "	Firefox"
sudo dnf remove -y firefox

echo ""
echo "	Done"
