#!/bin/bash

hugo new posts/$(date +%Y-%m-%d)-$1/index.md
hugo new posts/$(date +%Y-%m-%d)-$1/index.ru.md

code content/posts/$(date +%Y-%m-%d)-$1/index.md
code content/posts/$(date +%Y-%m-%d)-$1/index.ru.md
