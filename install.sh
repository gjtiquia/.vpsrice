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

FASTFETCH_DIR="fastfetch"
FASTFETCH_VERSION="2.55.1"
FASTFETCH_DOWNLOAD_FILENAME="fastfetch-linux-amd64.deb"
FASTFETCH_DOWNLOAD_URL="https://github.com/fastfetch-cli/fastfetch/releases/download/$FASTFETCH_VERSION/$FASTFETCH_DOWNLOAD_FILENAME"

curl -L $FASTFETCH_DOWNLOAD_URL -o $FASTFETCH_DOWNLOAD_FILENAME
dpkg-deb --extract $FASTFETCH_DOWNLOAD_FILENAME $FASTFETCH_DIR

# download yazi

YAZI_DIR="yazi"
YAZI_VERSION="25.5.31"
YAZI_DOWNLOAD_FILENAME="yazi-x86_64-unknown-linux-gnu.zip"
YAZI_DOWNLOAD_URL="https://github.com/sxyazi/yazi/releases/download/v${YAZI_VERSION}/${YAZI_DOWNLOAD_FILENAME}"

curl -L $YAZI_DOWNLOAD_URL -o $YAZI_DOWNLOAD_FILENAME
unzip $YAZI_DOWNLOAD_FILENAME -d $YAZI_DIR
