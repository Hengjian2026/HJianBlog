#!/bin/bash
# wechat-format.sh — 将 Hugo Markdown 文章转换为微信公众号格式
# 用法: ./scripts/wechat-format.sh content/posts/2026-07-26_文章标题/index.md
# 输出: 复制到剪贴板，可直接粘贴到公众号后台

set -e

FILE="$1"
if [ -z "$FILE" ]; then
  echo "用法: ./scripts/wechat-format.sh content/posts/文章目录/index.md"
  echo "示例: ./scripts/wechat-format.sh content/posts/2026-07-26_测试/index.md"
  exit 1
fi

if [ ! -f "$FILE" ]; then
  echo "错误: 文件不存在: $FILE"
  exit 1
fi

# 提取 frontmatter 中的标题
TITLE=$(grep -E '^title: ' "$FILE" | sed 's/title: "//;s/"$//')

# 提取正文（去掉 frontmatter 和微信公众号遗留样式代码）
BODY=$(sed '1,/^---$/d' "$FILE" | \
  # 去掉微信公众号导出的行内 CSS 样式代码块
  sed '/^[[:space:]]*<style/,/<\/style>/d' | \
  sed '/^[[:space:]]*\* {/,/^[[:space:]]*}/d' | \
  # 去掉原始微信底部栏
  sed '/^.*__bottom-bar__/,/^$/d' | \
  # 去掉原始微信 meta 作者信息行
  '/^原创.*恒健知行/d' | \
  # 去掉原文地址行
  '/^> 原文地址/d' | \
  # 清理空的 HTML 标签
  sed 's/<[^>]*>//g' | \
  # 去掉多余空白行
  sed '/^[[:space:]]*$/d' | \
  # 去掉微信导出的 markdown 标题 * 装饰
  sed 's/^=*$//' | sed 's/^-*$//' | \
  # 去掉首行多余空格
  sed 's/^[[:space:]]*//' | \
  sed '/^[[:space:]]*$/d' | \
  # 保留原始内容
  cat)

# 输出公众号格式
echo "========================================"
echo "📱 公众号排版预览"
echo "========================================"
echo ""
echo "# $TITLE"
echo ""
echo "$BODY" | head -50
echo ""
echo "..."
echo ""
echo "========================================"
echo "已复制到剪贴板 ✅"
echo "请粘贴到公众号后台："
echo "1. 打开 https://mp.weixin.qq.com"
echo "2. 新建图文"
echo "3. 粘贴内容"
echo "========================================"

# 尝试复制到剪贴板（Windows Git Bash / macOS）
if command -v clip.exe &>/dev/null; then
  (echo "# $TITLE"; echo ""; echo "$BODY") | clip.exe
elif command -v pbcopy &>/dev/null; then
  (echo "# $TITLE"; echo ""; echo "$BODY") | pbcopy
else
  echo "⚠️  未检测到剪贴板工具，请手动复制以上内容"
fi