#!/bin/bash

set -xeuo pipefail

apt update -y
apt install -y \
    ncurses-dev \
    libcurl4-openssl-dev \
    build-essential \
    g++ \
    gcc

cd extern

cd lunar
make clean
make
make install
cd -

cd jpl_eph
make clean
make libjpl.a
make install
cd -

cd sat_code
make clean
make sat_id
make install
cd -

cd find_orb
make clean
if [ $(uname -m) -eq "aarch64" ]; then
    patch < ../../findorb_patches.diff
fi
patch < ../../makefile_patch.diff
make
make install
cd -
