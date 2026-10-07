#!/usr/bin/env bash

name="$1"

[[ -n "$name" ]] || {
  echo "Использование: $0 <имя проекта>";
  exit 1;
}

mkdir -p "$name/src" "$name/docs" && \
echo "# $name" > "$name"/README.md && \
echo "Проект создан!"
