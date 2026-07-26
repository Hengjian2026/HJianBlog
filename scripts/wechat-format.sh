#!/bin/bash
# wechat-format.sh — 将 Hugo Markdown 文章发布到微信公众号
# 用法: ./scripts/wechat-format.sh content/posts/2026-07-26_文章标题/index.md
#
# 功能：
# 1. 提取文章正文（去掉 frontmatter）
# 2. 在浏览器中打开在线渲染工具
# 3. 复制纯净 Markdown 到剪贴板
#
# 推荐渲染工具：
# - https://mdnice.com/       — Markdown 排版工具（推荐）
# - https://doocs.github.io/md/ — 微信 Markdown 编辑器

set -e

FILE="$1"
if [ -z "$FILE" ]; then
  echo "用法: ./scripts/wechat-format.sh content/posts/文章目录/index.md"
  echo "示例: ./scripts/wechat-format.sh content/posts/2026-07-26_测试/index.md"
  echo ""
  echo "步骤："
  echo "1. 运行此脚本，Markdown 正文已复制到剪贴板"
  echo "2. 浏览器打开 https://mdnice.com/"
  echo "3. 粘贴到左侧编辑器"
  echo "4. 右侧渲染后复制 → 粘贴到公众号后台"
  exit 1
fi

if [ ! -f "$FILE" ]; then
  echo "错误: 文件不存在: $FILE"
  exit 1
fi

# 提取标题
TITLE=$(grep -E '^title: ' "$FILE" | sed 's/^title: "//;s/"$//')

# 提取正文（去掉 frontmatter）
BODY=$(awk 'BEGIN{found=0} /^---$/{found++;next} found>=2{print}' "$FILE")

# 复制到剪贴板
MD_CONTENT="$BODY"

if command -v clip.exe &>/dev/null; then
  echo "$MD_CONTENT" | clip.exe
  CLIP_MSG="✅ 已复制到剪贴板"
elif command -v pbcopy &>/dev/null; then
  echo "$MD_CONTENT" | pbcopy
  CLIP_MSG="✅ 已复制到剪贴板"
else
  CLIP_MSG="⚠️  未检测到剪贴板工具"
fi

echo ""
echo "========================================"
echo "📱 公众号发布助手"
echo "========================================"
echo ""
echo "文章: $TITLE"
echo "来源: $FILE"
echo "$CLIP_MSG"
echo ""
echo "操作步骤："
echo "  1. 选一个渲染工具打开："
echo "     → https://mdnice.com/       （推荐，支持自定义主题）"
echo "     → https://doocs.github.io/md/ （轻量）"
echo "  2. 粘贴 Markdown 到左侧编辑器"
echo "  3. 右侧渲染预览确认"
echo "  4. 复制渲染结果 → 粘贴到公众号后台发布"
echo ""
echo "========================================"
echo ""
echo "--- 正文预览 ---"
echo "$MD_CONTENT" | head -20
echo ""
echo "...（共 $(echo "$MD_CONTENT" | wc -l) 行）"

# 如果剪贴板不可用，输出到临时文件
if [ "$CLIP_MSG" != "✅ 已复制到剪贴板" ]; then
  TMPFILE="/tmp/wechat-$(date +%Y%m%d%H%M%S).md"
  echo "$MD_CONTENT" > "$TMPFILE"
  echo "⚠️  正文已保存到: $TMPFILE"
fi