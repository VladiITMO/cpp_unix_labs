#!/bin/bas
mkdir -p lab_02/build_stg
g++ lab_02/src/main.cpp -o lab_02/build_stg/cpp_program -O2
cp lab_02/src/main.py lab_02/build_stg/
echo "STG deployment done. Files in ./lab_02/build_stg/"
