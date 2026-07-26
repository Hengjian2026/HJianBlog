#!/bin/bash
# new-post.sh — 创建 Hugo 新文章
# 用法: ./scripts/new-post.sh "文章标题"

set -e

TITLE="$*"
if [ -z "$TITLE" ]; then
  echo "用法: ./scripts/new-post.sh \"文章标题\""
  exit 1
fi

# 生成 slug (拼音/英文/数字转小写kebab-case)
SLUG=$(echo "$TITLE" | \
  sed 's/[^a-zA-Z0-9一-龥]/-/g' | \
  sed 's/--*/-/g' | \
  sed 's/^-//;s/-$//' | \
  tr '[:upper:]' '[:lower:]')
SLUG=$(echo "$SLUG" | sed 's/--*/-/g')

DATE=$(date +%Y-%m-%d)
DIRNAME="${DATE}_${SLUG}"
POST_DIR="content/posts/${DIRNAME}"

if [ -d "$POST_DIR" ]; then
  echo "错误: 文章目录已存在: $POST_DIR"
  exit 1
fi

mkdir -p "$POST_DIR"

cat > "${POST_DIR}/index.md" << EOF
---
title: "${TITLE}"
date: ${DATE}
draft: true
tags: []
categories: []
---

EOF

echo "✅ 已创建: ${POST_DIR}/index.md"

# 尝试用默认编辑器打开
if [ -n "$EDITOR" ]; then
  "$EDITOR" "${POST_DIR}/index.md"
elif command -v code &>/dev/null; then
  code "${POST_DIR}/index.md"
elif command -v nano &>/dev/null; then
  nano "${POST_DIR}/index.md"
else
  echo "已创建文章，请编辑: ${POST_DIR}/index.md"
fi
