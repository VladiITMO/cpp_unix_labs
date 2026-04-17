#!/bin/bash
mkdir -p build_prd
g++ src/main.cpp -o build_prd/cpp_program -O2
cp src/main.py build_prd/
echo "PRD deployment done. Files in ./build_prd/"
