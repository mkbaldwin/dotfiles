#! /bin/bash

function doInstall() {
  # Copy everything under files into the user home directory
  cp -rv files/. ~/
}

CWD=$(pwd)

echo ""
echo "Warning: This script will copy all of the dotfiles located in $CWD/files into your user home directory."
echo "This will overwrite any conflicting files already there."
echo ""

read -r -p "Are you sure you want to continue? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        doInstall
        ;;
    *)
        echo "Aborting... did not install."
        ;;
esac

