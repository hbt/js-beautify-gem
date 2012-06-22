#!/bin/sh

# updates the extension because we can't have a submodule as part of a gem

# update submodules
git submodule sync && git submodule init && git submodule update && git submodule foreach git fetch origin && git submodule foreach git submodule init && git submodule foreach git submodule update

echo "updated submodules\n"

# delete current directory
rm -rf js-beautify-copy

# copy files
cp -R js-beautify js-beautify-copy

echo "copied files\n"

# build the gem
rake version
rake version:bump:patch
rake version

echo "updated version\n"
