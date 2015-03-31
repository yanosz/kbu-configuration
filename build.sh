#!/bin/bash
if [ ! -d "sdk" ]; then
  echo "Missing OpenWRT-SDK in ./sdk"
fi

# Link repositories
rm -f sdk/repositories.conf
ln -s ../repositories.conf sdk/repositories.conf

# Link files
rm -rf sdk/files
ln -s ../files sdk/files

# Call image-builder using the supplied profile
make -C sdk/ image PACKAGES="`cat packages`" FILES=./files PROFILE=$1
