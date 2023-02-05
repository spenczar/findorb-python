#!/bin/bash

set -xeuo pipefail

git submodule update --init

# Fixes for ARM64:
patch -d extern/find_orb < findorb_patches.diff

# Modifications to allow building as a library:
patch -d extern/find_orb < libfindorb_patches.diff
