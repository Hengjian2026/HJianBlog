# HJianBlog 文章发布工作流优化设计文档

> 日期：2026-07-26
> 项目：HJianBlog (Hugo + PaperMod, GitHub Pages)

---

## 一、概述

当前发布流程：本地写 Markdown → `git add` → `git commit` → `git push`，需要 4-5 步手动操作。通过脚本自动化，将发布流程压缩为一条命令。

## 二、方案

采用 shell 脚本辅助，零额外依赖，在 Windows Git Bash / macOS / Linux 下均可运行。

### 2.1 新建文章脚本 `scripts/new-post.sh`

```bash
# 用法
./scripts/new-post.sh "面向亏损病种的多维度分析"

# 功能
# 1. 根据标题生成目录名 (日期-英文slug)
# 2. 在 content/posts/ 下创建文章目录
# 3. 生成 index.md 并自动填入 frontmatter (title/date/tags/draft=true)
# 4. 用默认编辑器打开文件
```

### 2.2 发布脚本 `scripts/publish.sh`

```bash
# 用法
./scripts/publish.sh "feat: 新增病种分析文章"

# 功能
# 1. 运行 hugo --gc --minify 构建验证
# 2. 运行 npx pagefind --source public 更新搜索索引
# 3. git add -A
# 4. git commit -m "<message>"
# 5. git push
```

## 三、文件结构

```
hugo-project/
├── scripts/
│   ├── new-post.sh      # 新建文章
│   └── publish.sh       # 一键发布
├── archetypes/
│   └── default.md       # Hugo 文章模板（已有）
```

## 四、使用流程

```
# 1. 新建文章草稿
./scripts/new-post.sh "面向亏损病种的多维度分析"
# → 创建 content/posts/2026-07-26-面向亏损病种的多维度分析/index.md
# → 自动打开编辑器

# 2. 写完后发布
./scripts/publish.sh "feat: 新增病种分析文章"
# → 构建验证 → 更新索引 → 提交 → 推送
```

## 五、实现要点

- `new-post.sh` 从 Hugo archetype 读取 frontmatter 模板
- 文章默认 `draft: true`，发布时手动改为 `false`
- `publish.sh` 在 push 前做构建检查，构建失败则不推送
- 兼容 Git Bash (Windows) 和 Linux/macOS