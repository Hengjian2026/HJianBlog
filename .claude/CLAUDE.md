# HJianBlog 项目指南

## 技术栈
- Hugo 0.147.8 + PaperMod 主题
- GitHub Pages + Tencent Cloud 部署
- 372 篇 Markdown 稿件

## 目录结构
- `content/posts/` - 所有文章（按日期命名的子目录，含 index.md）
- `assets/css/extended/custom.css` - 品牌定制样式
- `layouts/` - 自定义模板（覆盖 PaperMod 默认模板）
- `config.yaml` - Hugo 配置

## 常用命令
```bash
hugo server -D     # 本地开发（含草稿）
hugo --gc --minify # 生产构建
```

## 部署
推送到 main 分支 → GitHub Actions 自动构建并部署到 GitHub Pages + 腾讯云

## 专栏系统（基于标签匹配）
每个专栏由一组关键词标签定义，文章自动归类：
- DRG/DIP 付费: drg, dip, 病种分析, 分组
- 医院评审评价: 评审, 国考, 等级评审
- AI + 医院管理: ai, 大模型, 智能体
- 运营数据分析: 运营, 可视化, 指标
- 工具与方法: ppt, 模板, 工具

## 编码规范
- 中文内容为主，技术术语保留英文
- frontmatter 包含 title / date / tags / categories