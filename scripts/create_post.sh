#!/bin/bash

slug=`echo "$1" | iconv -t ascii//TRANSLIT | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g;s/^-+|-+$//g'`

hugo new posts/$(date +%Y-%m-%d)-$slug/index.md
hugo new posts/$(date +%Y-%m-%d)-$slug/index.ru.md

code content/posts/$(date +%Y-%m-%d)-$slug/index.md
code content/posts/$(date +%Y-%m-%d)-$slug/index.ru.md
