#!/bin/bash
mkdir -p lab_02/build_prd
g++ lab_02/src/main.cpp -o lab_02/build_prd/cpp_program -O2
cp lab_02/src/main.py lab_02/build_prd/
echo "PRD deployment done. Files in ./lab_02/build_prd/"
