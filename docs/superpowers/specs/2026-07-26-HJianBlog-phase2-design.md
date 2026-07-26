# HJianBlog 第二期：内容运营增强设计文档

> 日期：2026-07-26
> 状态：已批准
> 项目：HJianBlog (Hugo + PaperMod, GitHub Pages)

---

## 一、概述

第二期在第一期品牌升级的基础上，为博客增加搜索、评论、标签聚合、阅读统计、SEO 优化等读者互动和内容运营能力。所有功能均采用零服务器方案，保持 GitHub Pages 免费托管。

---

## 二、全文搜索 — Pagefind

### 2.1 方案

采用 [Pagefind](https://pagefind.app/)，一个静态搜索库，在 Hugo 构建后自动索引 HTML 页面生成 JSON 索引文件，前端加载后实现即时全文搜索。

### 2.2 集成方式

在 GitHub Actions 构建流程中，Hugo 构建完成后添加 Pagefind 索引步骤：

```yaml
- name: Build with Hugo
  run: hugo --gc --minify

- name: Index with Pagefind
  run: npx pagefind --source public
```

### 2.3 前端集成

- 搜索入口：首页和文章页顶部搜索图标 + 快捷键 `Ctrl+K`
- 搜索 UI：Pagefind 自带 UI 组件，直接引入
- 搜索结果：显示标题、URL、匹配片段（mark 高亮）

### 2.4 搜索入口样式

第一期 CSS 中已有 `.search-toggle` 样式，直接复用。

---

## 三、评论系统 — Giscus

### 3.1 方案

采用 [Giscus](https://giscus.app/)，基于 GitHub Discussions 的评论系统。读者通过 GitHub 账号登录评论，评论内容存储在仓库的 Discussions 板块。

### 3.2 配置步骤

1. 在 HJianBlog 仓库启用 GitHub Discussions
2. 安装 Giscus GitHub App
3. 配置 Giscus 的 data-repo/data-repo-id/data-category 等参数
4. 在文章底部嵌入 Giscus 组件

### 3.3 前端集成

更新 `layouts/_default/single.html`，在文章底部增加评论区：

```html
{{- if (.Param "comments") }}
<div class="post-comments">
  <script src="https://giscus.app/client.js"
    data-repo="Hengjian2026/HJianBlog"
    data-repo-id="..."
    data-category="Announcements"
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

---

## 四、标签聚合页

第一期已创建 `layouts/taxonomy/tag.html` 模板，第二期需要：

1. 在 config.yaml 中确认 taxonomy 配置正确
2. 在首页导航菜单增加标签入口
3. 样式微调确保标签页面与品牌统一

---

## 五、阅读统计 — Umami

### 5.1 方案

采用 [Umami](https://umami.is/) 自托管分析。部署方式：

- **免费方案**：部署在 Railway / Fly.io 免费层，使用 PostgreSQL（可免费）
- **集成方式**：在 `layouts/partials/extend_head.html` 中添加 Umami 跟踪脚本

### 5.2 配置

```html
{{- if hugo.IsProduction }}
<script defer src="https://umami.example.com/script.js" data-website-id="xxxx-xxxx"></script>
{{- end }}
```

### 5.3 用途

- 了解热门文章排行（用于首页"精选文章"推荐）
- 分析读者来源（微信引流 vs 搜索引擎）
- 监控内容健康度（哪些主题最受关注）

---

## 六、SEO 优化

### 6.1 sitemap.xml

Hugo 默认生成 `sitemap.xml`，确认配置：

```yaml
# config.yaml
sitemap:
  changefreq: weekly
  filename: sitemap.xml
  priority: 0.8
```

### 6.2 Meta 标签自动生成

第一期 `extend_head.html` 和 `seo-head.html` 已完成。第二期补充：
- 为每篇文章自动生成规范的 `slug`（使用 frontmatter slug 或文件名）
- 增加 `robots meta` 标签（已在 PaperMod 中默认包含）

### 6.3 RSS Feed

Hugo 默认生成 RSS，确认在 `<head>` 中引用。PaperMod 已包含 RSS link。

---

## 七、实施顺序

1. Pagefind 集成（搜索入口 + 构建流程）
2. 标签聚合页入口（导航菜单）
3. Giscus 评论系统
4. Umami 阅读统计
5. SEO 配置完善
