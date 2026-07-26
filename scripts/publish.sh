#!/bin/bash
# publish.sh — 一键构建 + 发布 Hugo 博客
# 用法: ./scripts/publish.sh "提交信息"

set -e

MSG="$*"
if [ -z "$MSG" ]; then
  echo "用法: ./scripts/publish.sh \"提交信息\""
  exit 1
fi

echo "🔨 构建中..."
hugo --gc --minify
echo "✅ 构建完成"

echo "🔍 更新搜索索引..."
npx pagefind --source public
echo "✅ 搜索索引更新完成"

echo "📦 提交中..."
git add -A
git commit -m "$MSG"

echo "🚀 推送中..."
git push

echo ""
echo "✅ 发布完成！"
