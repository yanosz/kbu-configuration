# kbu-configuration
Image-Builder configuration for Freifunk-KBU using OpenWRT 14.07

## Usage
1. Extract the OpenWRT-Image Builder version 14.07 to <code>./build</code> according to your platform
2. Run <code>./build.sh PROFILE</code> with PROFILE specifying the ImageBuilder profile to be used.
 
Notes 
* repositories.conf has URLs according to ar71xx - change them if needed.
* Output-Directory is <code>./build/bin/PLATFORM</code>
