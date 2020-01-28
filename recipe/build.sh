#!/bin/bash

# install using pip from the whl files on PyPI

if [ `uname` == Darwin ]; then
    WHL_FILE=https://github.com/nion-software/nionswift-tool/releases/download/${PKG_VERSION}/nionswift_tool-${PKG_VERSION}-cp36.cp37.cp38-abi3-macosx_10_11_intel.whl
fi

if [ `uname` == Linux ]; then
    WHL_FILE=https://github.com/nion-software/nionswift-tool/releases/download/${PKG_VERSION}/nionswift_tool-${PKG_VERSION}-cp36.cp37.cp38-abi3-manylinux1_x86_64.whl
fi

pip install --no-deps --ignore-installed $WHL_FILE
