#!/bin/bash

# Путь к .env файлу
_load_env_SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
_load_env_PROJECT_ROOT="$(cd "$_load_env_SCRIPT_DIR/.." && pwd)"
ENV_FILE="$_load_env_PROJECT_ROOT/.env"

# Проверяем, существует ли файл
if [ ! -f "$ENV_FILE" ]; then
    echo "Файл $ENV_FILE не найден."
    exit 1
fi

# Загружаем переменные окружения из .env файла
set -a
source "$ENV_FILE"
set +a

echo "Переменные окружения загружены из $ENV_FILE"