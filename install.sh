#!/usr/bin/env bash

set -eux

# this assumes Ubuntu/Debian on amd64 only!

DOWNLOAD_DIR="downloads"

if [[ -d $DOWNLOAD_DIR ]]; then
    rm -rf $DOWNLOAD_DIR
fi

mkdir $DOWNLOAD_DIR
cd $DOWNLOAD_DIR

# download fastfetch

FASTFETCH_DOWNLOAD_URL="https://github.com/fastfetch-cli/fastfetch/releases/download/2.55.1/fastfetch-linux-amd64.deb"
FASTFETCH_DOWNLOAD_FILENAME="fastfetch-linux-amd64.deb"
FASTFETCH_DIR="fastfetch"

curl -L $FASTFETCH_DOWNLOAD_URL -o $FASTFETCH_DOWNLOAD_FILENAME

dpkg-deb --extract $FASTFETCH_DOWNLOAD_FILENAME $FASTFETCH_DIR
