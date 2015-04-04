#!/bin/bash
if [ ! -d "sdk" ]; then
  echo "Missing OpenWRT-Image Builder in ./build"
fi

# Link repositories
rm -f build/repositories.conf
ln -s ../repositories.conf build/repositories.conf

# Link files
rm -rf build/files
ln -s ../files build/files

# Call image-builder using the supplied profile
make V=99 -C build/ image PACKAGES="`cat packages`" FILES=./files PROFILE=$1 CONFIG_VERSION_NUMBER="KBU-2.x" 
