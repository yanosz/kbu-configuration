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
if [ ! -z $1]; then
	make V=99 -C build/ image PACKAGES="`cat packages`" FILES=./files PROFILE=$1
else
	make V=99 -C build/ image PACKAGES="`cat packages`" FILES=./files
fi
