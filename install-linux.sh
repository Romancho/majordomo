#!/bin/bash

folders=( cached cms debmes modules templates objects rc saverestore)

for i in "${folders[@]}"
do
    mkdir -p $i
    find $i/ -type d -exec chmod 750 {} \;
    find $i/ -type f -exec chmod 640 {} \;
done

echo "don't forget to run next command with sudo to enable voice in linux"
echo "sudo usermod -a -G audio www-data"
