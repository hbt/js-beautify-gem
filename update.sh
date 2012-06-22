#!/bin/sh

# updates the extension because we can't have a submodule as part of a gem

# update submodules
git submodule sync && git submodule init && git submodule update && git submodule foreach git fetch origin && git submodule foreach git submodule init && git submodule foreach git submodule update

# delete current directory
rm -rf js-beautify-copy

# copy files
cp -R js-beautify js-beautify-copy

# create symbolic link
cd bin
rm -rf js-beautify
ln -s js-beautify-copy/python/js-beautify .
cd ..

echo "updated gem"

# build the gem
rake version
rake version:bump:patch
rake version
