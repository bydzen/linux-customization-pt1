#!/bin/bash

# This program can change your theme to theme 1.
# Created by Sultan Kautsar.

clear # Clearing the terminal screen.

# Root checking.

if [ $UID  -ne  0 ]
then
  echo "You are not root. Exited."
  exit
fi

echo "=== Theme changer (1) :: Ubuntu — GNOME ==="
echo "    Script by: @bydzen"

echo "" # Checking Prerequisites.
echo "=== Checking Prerequisites ==="
echo "— package :: gnome-tweaks"
if ! command -v gnome-tweaks &> /dev/null
then
	echo "Package gnome-tweaks could not be found. Please install it first by 'sudo apt install gnome-tweaks'"
	echo "Exited."
	exit
fi
echo "— package :: dconf-editor"
if ! command -v dconf-editor &> /dev/null
then
	echo "Package dconf-editor could not be found. Please install it first by 'sudo apt install dconf-editor'"
	echo "Exited."
	exit
fi
echo "Done."

echo "" # Note to installer's.

echo "If you continue, make sure you have installed gnome-shell-extensions or enabled user themes via extensions in firefox/chrome. If not, maybe this program will not run in its entirety (there will be an error/misconfiguration in the shell)."
echo -n "Are you sure want to proceed? (y/N): "
read PRCD

if [[ $PRCD == "" || $PRCD == "n" || $PRCD == "N" || $PRCD != "Y" && $PRCD != "y" ]]
then
  echo "Exited."
  exit
fi

echo "" # Start of customizing task.

echo "=== Your tasks: ==="
echo "=== Task 1: Customizing Dock ==="
echo "— extend-height :: false"
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
echo "— dock-position :: BOTTOM"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
echo "— transparency-mode :: FIXED"
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
echo "— dash-max-icon-size :: 48"
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 48
echo "— click-action :: minimize"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action minimize
echo "— intellihide-mode :: MAXIMIZED_WINDOWS"
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode MAXIMIZED_WINDOWS
echo "— show-trash :: true"
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
echo "— dock-fixed :: false"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
echo "— background-opacity :: 0.5"
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.5
echo "All Done."

echo "" # End of task 1.

echo "=== Task 2: Change GTK-Themes ==="
echo "— gtk-theme :: Orchis-dark"
gsettings set org.gnome.desktop.interface gtk-theme 'Orchis-dark'
echo "All Done."

echo "" # End of task 2.

echo "=== Task 3: Change Icon-Theme ==="
echo "— icon-theme :: Tela-dark"
gsettings set org.gnome.desktop.interface icon-theme 'Tela-dark'
echo "All Done."

echo "" # End of task 3.

echo "=== Task 4: Change Cursors-Theme ==="
echo "— cursor-theme :: Sweet-cursors"
gsettings set org.gnome.desktop.interface cursor-theme 'Sweet-cursors'
echo "— cursor-blink-time :: 250"
gsettings set org.gnome.desktop.interface cursor-blink-time 250
echo "All Done."

echo "" # End of task 4.

echo "=== Task 5: Change Shell-Theme ==="
echo "— name :: Flat-Remix-Blue-Dark"
gsettings set org.gnome.shell.extensions.user-theme name 'Flat-Remix-Blue-Dark'
echo "All Done."

echo "" # End of task 5.

echo "=== Task 6: Customizing Desktop-Icons ==="
echo "— show-home :: false"
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
echo "— show-trash :: false"
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
echo "All Done."

echo "" # End of task 6.

echo "All task completely run, thanks for using this script."
echo "@bydzen"