#!/bin/bash
echo "=======================Cleaning"

./clean.sh
if [ "$?" != "0" ]; then
    echo "Cleaning failed!"
fi

echo "========================Cloning"

git submodule add -f https://github.com/ClouDev/CloudBot.git
if [ -d CloudBot/ ]; then
    cd CloudBot
else
    echo "Could not cd to CloudBot/ directory! This means that cloning failed in most cases. Exiting!"
    exit 1
fi

echo "=======================Patching"

echo "Applying patches!"
git am -3 ../patches/*.patch

if [ "$?" != "0" ]; then
    echo "========================Failing" #I R MAVEN!!1
    echo "PATCH FAILED"
    echo "==============================="
    
    cd ../
else
    echo "=====================Succeeding" #I R MAVEN!!1
    echo "PATCH SUCCESS"
    echo "==============================="
    
    cd ../
    
    if [ -f config ]; then
        echo "Found config! Copying."
        cp config CloudBot/config
    else
        echo "Config not found! Copying default config (please edit CloudBot/config)"
        echo "If you want your config there automagically, make a file named `config` in the SpagtBabe root directory."
        cp CloudBot/config.default CloudBot/config
    fi
    
    if [ -d data ]; then
        echo "Found previous data! Copying!"
        cp -r data CloudBot/plugins/data
    fi
fi
echo "KTHXBYE"