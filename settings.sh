#!/bin/bash

echo "Configuring system settings..."

echo "	Disabling screen blank"
gsettings set org.gnome.desktop.session idle-delay 0

echo "	Disabling automatic suspend"
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'

echo "	Disabling hot corners"
gsettings set org.gnome.desktop.interface enable-hot-corners false

echo "	Setting automatic time zone"
sudo timedatectl set-ntp true

echo "	Configuring clock settings"
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-show-seconds true

echo "	Done"
