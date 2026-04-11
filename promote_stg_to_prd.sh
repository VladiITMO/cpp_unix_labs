#!/bin/bash

# Скрипт для переноса изменений из stg в prd с тегом

set -e

echo "=== Promoting STG to PRD ==="

TAG="prd-$(date +'%Y%m%d-%H%M%S')"

git checkout prd
git pull origin prd

git merge stg --no-edit

git tag -a "$TAG" -m "Promotion from stg to prd at $TAG"

git push origin prd
git push origin --tags

git checkout dev

echo "=== Promotion complete: $TAG ==="

