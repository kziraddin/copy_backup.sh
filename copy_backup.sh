#!/bin/sh
read -p "Enter Source Folder : " src_name
read -p "Enter Destibation Folder : " dest_name
if [ ! -d "$src_name" ]; then
echo "Source folder does not exist or isn't a directory"
exit 1;
return;
fi
if [ ! -d "$dest_name" ]; then
echo "Dest folder exists"
return;
fi
read -p "Ready to copy(yes/no): " confirm

if [ "$confirm" = "yes" ]; then
cp -r $src_name $dest_name
fi

