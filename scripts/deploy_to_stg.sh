#!/bin/bash
mkdir -p build_stg 
g++ src/main.cpp -o build_stg/cpp_program -O2
cp src/main.py build_stg/
echo "STG deployment done. Files in ./build_stg/"
