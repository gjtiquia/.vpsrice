#!/usr/bin/env bash

set -eux

# this assumes Ubuntu/Debian on amd64 only!

DOWNLOAD_DIR="downloads"

if [[ -d $DOWNLOAD_DIR ]]; then
    rm -rf $DOWNLOAD_DIR
fi

mkdir $DOWNLOAD_DIR
cd $DOWNLOAD_DIR

# download vimrc
git clone https://github.com/gjtiquia/.vim.git vim

# download fastfetch

FASTFETCH_DIR="fastfetch"
FASTFETCH_VERSION="2.55.1"
FASTFETCH_DOWNLOAD_FILENAME="fastfetch-linux-amd64.deb"
FASTFETCH_DOWNLOAD_URL="https://github.com/fastfetch-cli/fastfetch/releases/download/$FASTFETCH_VERSION/$FASTFETCH_DOWNLOAD_FILENAME"

curl -L $FASTFETCH_DOWNLOAD_URL -o $FASTFETCH_DOWNLOAD_FILENAME
dpkg-deb --extract $FASTFETCH_DOWNLOAD_FILENAME $FASTFETCH_DIR

# download lazygit

LAZYGIT_DIR="lazygit"
LAZYGIT_VERSION="0.56.0"
LAZYGIT_DOWNLOAD_FILENAME="lazygit_${LAZYGIT_VERSION}_linux_x86_64.tar.gz"
LAZYGIT_DOWNLOAD_URL="https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/${LAZYGIT_DOWNLOAD_FILENAME}"

curl -L $LAZYGIT_DOWNLOAD_URL -o $LAZYGIT_DOWNLOAD_FILENAME
mkdir $LAZYGIT_DIR
tar -xaf $LAZYGIT_DOWNLOAD_FILENAME --directory $LAZYGIT_DIR

# download yazi

YAZI_DIR="yazi"
YAZI_VERSION="25.5.31"
# YAZI_DOWNLOAD_FILENAME="yazi-x86_64-unknown-linux-gnu.zip" # doesnt work for Debian 12, have error: version `GLIBC_2.39' not found
YAZI_DOWNLOAD_FILENAME="yazi-x86_64-unknown-linux-musl.zip"
YAZI_DOWNLOAD_URL="https://github.com/sxyazi/yazi/releases/download/v${YAZI_VERSION}/${YAZI_DOWNLOAD_FILENAME}"

curl -L $YAZI_DOWNLOAD_URL -o $YAZI_DOWNLOAD_FILENAME
unzip $YAZI_DOWNLOAD_FILENAME -d $YAZI_DIR

# download zoxide

ZOXIDE_DIR="zoxide"
ZOXIDE_VERSION="0.9.8"
ZOXIDE_DOWNLOAD_FILENAME="zoxide_${ZOXIDE_VERSION}-1_amd64.deb"
ZOXIDE_DOWNLOAD_URL="https://github.com/ajeetdsouza/zoxide/releases/download/v${ZOXIDE_VERSION}/${ZOXIDE_DOWNLOAD_FILENAME}"

curl -L $ZOXIDE_DOWNLOAD_URL -o $ZOXIDE_DOWNLOAD_FILENAME
dpkg-deb --extract $ZOXIDE_DOWNLOAD_FILENAME $ZOXIDE_DIR
