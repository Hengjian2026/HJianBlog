# HJianBlog 第二期：内容运营增强实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 为 HJianBlog 增加全文搜索、评论系统、标签聚合入口、阅读统计、SEO 完善。

**Architecture:** 在现有 Hugo + PaperMod 项目基础上叠加功能。Pagefind 在构建后索引 HTML；Giscus 嵌入客户端 JS；Umami 在 extend_head 中注入跟踪脚本；所有功能零服务器。

**Tech Stack:** Pagefind, Giscus, Umami, Hugo 0.147.8, GitHub Actions

## Global Constraints

- 不动 `content/posts/` 下的现有 372 篇文章目录结构
- 所有定制在模板层叠加，不修改 `themes/PaperMod/` 下的任何文件
- 保持 GitHub Pages 免费托管，不引入付费服务
- `data-repo-id` 占位值需用户在 GitHub 上配置 Giscus 后填入

---

### Task 1: Pagefind 全文搜索集成

**Files:**
- Modify: `.github/workflows/hugo.yaml`（构建流程添加 Pagefind 索引步骤）
- Create: `layouts/partials/search-ui.html`（Pagefind UI 组件）
- Modify: `layouts/partials/extend_head.html`（加载 Pagefind CSS/JS）
- Modify: `layouts/index.html`（添加搜索入口按钮）

**Interfaces:**
- Consumes: Hugo 构建输出 `public/` 目录
- Produces: 首页搜索按钮，Pagefind 搜索 UI

- [ ] **Step 1: 在 GitHub Actions 中添加 Pagefind 索引步骤**

修改 `.github/workflows/hugo.yaml`，在 Hugo 构建步骤后添加 Pagefind 索引：

找到 `Build with Hugo` 步骤，在其后添加 Pagefind 步骤：

```yaml
      - name: Build with Hugo
        env:
          HUGO_ENVIRONMENT: production
          HUGO_ENV: production
        run: |
          echo "=== Hugo version ==="
          hugo version
          echo "=== Building site ==="
          hugo \
            --gc \
            --minify \
            --baseURL "https://hengjian2026.github.io/HJianBlog/"
          echo "=== Build output ==="
          ls -la public/

      - name: Index with Pagefind
        run: npx pagefind --source public
```

- [ ] **Step 2: 创建搜索 UI partial**

创建 `layouts/partials/search-ui.html`：

```html
{{- /* Pagefind 搜索 UI */}}
<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js" type="text/javascript"></script>
<div id="search"></div>
<script>
window.addEventListener('DOMContentLoaded', (event) => {
    new PagefindUI({ element: "#search", showSubResults: true });
});
</script>
```

- [ ] **Step 3: 在 extend_head.html 中加载 Pagefind 资源**

只在文章页加载搜索 UI（首页用按钮触发搜索弹窗）：

```html
{{- /* Pagefind 搜索资源 */}}
{{- if not .IsHome }}
<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js" type="text/javascript"></script>
<script>
window.addEventListener('DOMContentLoaded', function() {
  new PagefindUI({ element: "#search", showSubResults: true, showImages: false });
});
</script>
{{- end }}
```

- [ ] **Step 4: 在首页添加搜索入口按钮**

修改 `layouts/index.html`，在专栏 Tabs 上方添加搜索按钮：

```html
    <div class="home-content">
      {{/* 搜索入口 */}}
      <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:16px;">
        <div class="column-tabs" style="margin-bottom:0;padding-bottom:0;border-bottom:none;">
          <button class="column-tab active" data-column="all">全部</button>
          <button class="column-tab" data-column="drg-dip">DRG/DIP 付费</button>
          <button class="column-tab" data-column="hospital-accreditation">医院评审评价</button>
          <button class="column-tab" data-column="ai-hospital">AI + 医院管理</button>
          <button class="column-tab" data-column="operations-analytics">运营数据分析</button>
          <button class="column-tab" data-column="tools-methods">工具与方法</button>
        </div>
        <a href="/search/" class="search-toggle">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.35-4.35"/></svg>
          搜索
          <kbd>Ctrl+K</kbd>
        </a>
      </div>
```

注意：需要移除步骤 4 中原来的 `<div class="column-tabs">` 块，因为搜索按钮和 Tabs 现在合并在一个 flex 容器中。

- [ ] **Step 5: 创建搜索页面**

创建 `content/search.md`：

```markdown
---
title: "搜索"
layout: "search"
---
```

创建 `layouts/page/search.html`（或使用 PaperMod 自带的搜索页面）—— PaperMod 已有 `layouts/search.html`，但我们需要确认它是否与 Pagefind 兼容。

实际上 PaperMod 内置的搜索页面使用 Fuse.js。我们不需要创建单独的搜索页面，因为 Pagefind UI 可以直接嵌入到首页或文章页。更简单的方式：在首页添加搜索按钮，点击后跳转到 `/pagefind/` 或使用 Pagefind 的 dialog 模式。

更简洁的方案：在 `extend_head.html` 中全局加载 Pagefind（延迟加载），然后在首页用 `a href` 触发搜索。Pagefind 的 UI 会自动渲染。

但 Pagefind 官方推荐的方式是创建一个专门的搜索页面。我们创建一个 `content/search/_index.md`，然后使用 Pagefind 的 UI 组件。

实际上，最简单的方案：不创建单独的搜索页面。Pagefind 的 UI 可以以 dialog/modal 形式工作。我们只需在 `extend_head.html` 中加载 Pagefind 的 JS 和 CSS，然后在首页加一个搜索按钮触发搜索弹窗。

修改 `extend_head.html`，添加 Pagefind 资源（全局加载，defer 延迟）：

```html
{{- /* Pagefind 搜索 */}}
{{- $pagefindCSS := "" }}
{{- if fileExists "/static/pagefind/pagefind-ui.css" }}
<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js" defer></script>
<script>
window.addEventListener('DOMContentLoaded', function() {
  if (document.getElementById('search')) {
    new PagefindUI({ element: "#search", showSubResults: true, showImages: false });
  }
});
</script>
{{- end }}
```

注意：Pagefind 的文件在 `npx pagefind --source public` 后才会生成，因此在本地开发时 `pagefind-ui.css` 可能不存在，所以用 `fileExists` 检查。

- [ ] **Step 6: 在首页添加搜索 dialog**

修改 `layouts/index.html`，在 `home-wrapper` 末尾添加搜索 dialog：

```html
</div>{{/* end home-wrapper */}}

{{/* 搜索弹窗 */}}
<div id="search-overlay" style="display:none;position:fixed;top:0;left:0;right:0;bottom:0;background:rgba(0,0,0,0.5);z-index:999;">
  <div style="max-width:640px;margin:80px auto;background:var(--theme);border-radius:var(--radius);padding:24px;">
    <div id="search"></div>
  </div>
</div>

<script>
document.querySelector('.search-toggle')?.addEventListener('click', function(e) {
  e.preventDefault();
  document.getElementById('search-overlay').style.display = 'block';
});
document.getElementById('search-overlay')?.addEventListener('click', function(e) {
  if (e.target === this) this.style.display = 'none';
});
</script>

{{ end }}
```

- [ ] **Step 7: 构建验证**

```bash
cd hugo-project && hugo --gc --minify && npx pagefind --source public
```
Expected: 构建成功，Pagefind 索引生成。`public/pagefind/` 目录存在。

- [ ] **Step 8: 提交**

```bash
git add -A && git commit -m "feat: add Pagefind full-text search (Phase 2)"
```

---

### Task 2: 标签聚合页入口

**Files:**
- Modify: `config.yaml`（添加标签导航菜单）

**Interfaces:**
- Consumes: Hugo taxonomy 配置
- Produces: 导航栏标签入口

- [ ] **Step 1: 在 config.yaml 中添加标签导航菜单**

在 `menu.main` 中添加标签入口：

```yaml
menu:
  main:
    - identifier: archives
      name: 归档
      url: /archives/
      weight: 10
    - identifier: tags
      name: 标签
      url: /tags/
      weight: 15
    - identifier: about
      name: 关于
      url: /about/
      weight: 20
```

- [ ] **Step 2: 构建验证**

```bash
cd hugo-project && hugo --gc --minify
```
Expected: 导航栏显示"标签"链接，点击后跳转到 `/tags/` 页面。

- [ ] **Step 3: 提交**

```bash
git add -A && git commit -m "feat: add tags navigation menu entry (Phase 2)"
```

---

### Task 3: Giscus 评论系统集成

**Files:**
- Modify: `layouts/_default/single.html`（添加评论区域）
- Create: `layouts/partials/comments.html`（覆盖 PaperMod 的评论 partial）
- Modify: `config.yaml`（开启评论）

**Interfaces:**
- Consumes: Hugo page params (comments flag)
- Produces: 文章底部评论区

- [ ] **Step 1: 创建自定义评论 partial**

创建 `layouts/partials/comments.html`（覆盖 PaperMod 的 `comments.html` 但放在 `layouts/partials/` 下——注意 Hugo 的查找顺序，需要放在 `layouts/partials/` 下，因为 PaperMod 的 `single.html` 使用 `{{- partial "comments.html" . }}` 调用）：

```html
{{- if .Param "comments" }}
<div class="post-comments">
  <script src="https://giscus.app/client.js"
    data-repo="Hengjian2026/HJianBlog"
    data-repo-id="REPO_ID"  {{/* 用户需在 https://giscus.app 获取 */}}
    data-category="Announcements"
    data-category-id="CATEGORY_ID"  {{/* 用户需在 https://giscus.app 获取 */}}
    data-mapping="pathname"
    data-strict="0"
    data-reactions-enabled="1"
    data-emit-metadata="0"
    data-input-position="bottom"
    data-theme="preferred_color_scheme"
    data-lang="zh-CN"
    crossorigin="anonymous"
    async>
  </script>
</div>
{{- end }}
```

- [ ] **Step 2: 更新 single.html 引用评论**

在 `layouts/_default/single.html` 的 `post-footer` 之后（`related-posts` 之后）添加评论区域：

```html
  </footer>

  {{- if (.Param "comments") }}
  {{- partial "comments.html" . }}
  {{- end }}
</article>
```

- [ ] **Step 3: 在 config.yaml 中配置评论**

将 `params.comments` 设置为 `true` 以支持评论：

```yaml
params:
  ...
  comments: true
  ...
```

注意：单个文章可以通过 `comments: false` 在 frontmatter 中关闭评论。

- [ ] **Step 4: 构建验证**

```bash
cd hugo-project && hugo --gc --minify
```
Expected: 文章底部显示 Giscus 评论容器。

- [ ] **Step 5: 提交**

```bash
git add -A && git commit -m "feat: add Giscus comment system (Phase 2)"
```

---

### Task 4: Umami 阅读统计集成

**Files:**
- Modify: `layouts/partials/extend_head.html`（添加 Umami 跟踪脚本）

**Interfaces:**
- Consumes: Umami 部署 URL
- Produces: 页面访问统计

- [ ] **Step 1: 在 extend_head.html 中添加 Umami 脚本**

在 `extend_head.html` 末尾添加：

```html
{{- /* Umami 阅读统计 — 仅在 production 环境加载 */}}
{{- if hugo.IsProduction }}
<script defer src="https://umami.example.com/script.js" data-website-id="xxxx-xxxx"></script>
{{- end }}
```

注意：`umami.example.com` 和 `xxxx-xxxx` 是占位符，用户部署 Umami 后替换。

- [ ] **Step 2: 构建验证**

```bash
cd hugo-project && hugo --gc --minify
```
Expected: 生产构建的 HTML 中包含 Umami 脚本（本地构建不包含）。

- [ ] **Step 3: 提交**

```bash
git add -A && git commit -m "feat: add Umami analytics tracking (Phase 2)"
```

---

### Task 5: SEO 配置完善

**Files:**
- Modify: `config.yaml`（sitemap 配置）

**Interfaces:**
- Consumes: Hugo 配置
- Produces: 增强的 SEO 标签

- [ ] **Step 1: 在 config.yaml 中添加 sitemap 配置**

```yaml
# sitemap
sitemap:
  changefreq: weekly
  filename: sitemap.xml
  priority: 0.8
```

- [ ] **Step 2: 构建验证**

```bash
cd hugo-project && hugo --gc --minify
```
Expected: `public/sitemap.xml` 生成，包含所有文章 URL。

- [ ] **Step 3: 确认 RSS 在 head 中引用**

PaperMod 的 `head.html` 已包含 RSS link 的自动生成代码。验证：

```bash
grep -r "RSS" public/index.html | head -3
```
Expected: 包含 `<link rel="alternate" type="application/rss+xml"` 标签。

- [ ] **Step 4: 提交**

```bash
git add -A && git commit -m "feat: add sitemap config and SEO improvements (Phase 2)"
```

---

### Task 6: 部署验证

**Files:**
- 无代码修改

- [ ] **Step 1: 本地全面构建验证**

```bash
cd hugo-project && hugo --gc --minify --baseURL "https://hjian.online/" 2>&1
```
Expected: 构建成功，406 页，无错误。

- [ ] **Step 2: 推送并部署**

```bash
git push origin main
```

- [ ] **Step 3: 线上验证**

等待 GitHub Actions 构建完成后，访问 https://hjian.online/ 验证：
- 搜索按钮可见，点击后弹出搜索 dialog
- 导航栏显示"标签"链接
- 文章页底部显示 Giscus 评论容器
- Pagefind 搜索可用