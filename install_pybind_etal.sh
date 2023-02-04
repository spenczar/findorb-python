#!/bin/bash
set -xeuo pipefail

apt-get install -y \
	python3-pip \
	python3-dev \
	cmake

pip install pip --upgrade

pip install pybind11

