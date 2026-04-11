#!/bin/bash

# Скрипт для переноса изменений из dev в stg с тегом

set -e  # Остановить скрипт при любой ошибке

echo "=== Promoting DEV to STG ==="

# Получаем текущую дату и время для тега
TAG="stg-$(date +'%Y%m%d-%H%M%S')"

# Переключаемся на stg и подтягиваем последние изменения
git checkout stg
git pull origin stg

# Вливаем изменения из dev
git merge dev --no-edit

# Ставим тег
git tag -a "$TAG" -m "Promotion from dev to stg at $TAG"

# Пушим изменения и теги
git push origin stg
git push origin --tags

# Возвращаемся в dev
git checkout dev

echo "=== Promotion complete: $TAG ==="



