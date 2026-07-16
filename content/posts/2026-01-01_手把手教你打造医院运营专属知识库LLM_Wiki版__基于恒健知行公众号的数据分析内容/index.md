---
title: "手把手教你打造医院运营专属知识库（LLM Wiki版）  基于恒健知行公众号的数据分析内容"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 数据分析, AI]
categories: ["医院运营"]
---
     手把手教你打造医院运营专属知识库（LLM Wiki版）——基于恒健知行公众号的数据分析内容 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

手把手教你打造医院运营专属知识库（LLM Wiki版）——基于恒健知行公众号的数据分析内容
=============================================

原创 Hi您好 恒健知行 2026-04-08 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/9O\_ZES3xEx9xnLWlGK5O-Q](https://mp.weixin.qq.com/s/9O_ZES3xEx9xnLWlGK5O-Q)

> 在医院精细化运营管理的过程中，你是否也曾被海量的分析报告、绩效方案、政策解读所淹没？DRG/DIP病种分析、重点专科数据、运营考核指标散落在各个文件夹中，需要时总是难以快速找到关联信息？

由此创建了一个开源项目——**基于LLM Wiki模式的医院运营知识库**，并介绍了该知识库的搭建全过程。

该项目灵感来源于AI大神**Andrej Karpathy**提出的**LLM Wiki**理念，通过结构化的数据组织与大模型的信息提取能力，将分散的知识连接成网。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMJyz3qrDHvbCzLALcl1vvb86Xzuibn5VYKQn61YtdQ7PLB6ED3JLN8cyg0Aia7YZqGibeNnnTmajn3uZtCjOTPIv2BxUsuFAMAwg/640?wx_fmt=png&from=appmsg)

  

* * *

一、破局：为何我们需要一个“活”的知识库？
---------------------

传统的文件夹分类模式存在天然的局限性：信息孤岛严重，难以实现跨维度的关联分析。例如，当你在查看一份“呼吸内科第一季度绩效报告”时，往往也想了解“呼吸内科的DIP病种结构分析”，但这两份文档可能分别存在不同的层级中。

基于Karpathy的**LLM Wiki模式**，我们决定从零开始，构建一个专注于医院运营管理数据分析的个人知识库。它不仅要能存储信息，更要能通过LLM实现增量维护、自动关联并产生洞察。

* * *

二、实战：从0到1的搭建全记录
---------------

### 1\. 骨架搭建：定义知识的“规矩”

首先，我们确立了整个体系的规则（Schema），并将其写入核心配置文件 `CLAUDE.md`，同时设立了 `index.md`（总索引）和 `log.md`（操作日志）。

在这个规则中，知识库被划分为几个核心维度：

*   \*\*来源 (Sources)\*\*：最底层的原始文档摘要（例如各类运营分析报告的提炼）。
    
*   \*\*实体 (Entities)\*\*：科室（如呼吸科、儿科）、疾病、各类评价指标等。
    
*   \*\*方法论 (Methodologies)\*\*：DRG分析、DIP分析、绩效评估框架等。
    
*   \*\*概念 (Concepts)\*\*：描述统计、回归、波士顿矩阵等分析常识。
    

### 2\. 知识摄入：让文档“开口说话”

面对积累的100多份原始 `.docx` 文件，如果纯人工梳理将耗费巨大精力。

系统编写Python脚本进行批量自动化处理（Ingest，读取文章）。脚本不仅读取了文档内容，更重要的是，它将这100多个文档自动转化为结构化的 Markdown `来源` 页面。

每个转化后的页面都包含了核心结论摘要，并自动梳理出文中提及的科室、病种、指标。

### 3\. 构建网络：实体页面的建立与丰富

在摄入来源文档后，系统自动构建了丰富的实体页面（存放在 `实体/` 目录下）。

比如，当多份报告都提到了“呼吸内科”时，系统会自动将这些报告中的相关数据和发现汇聚到“呼吸内科”的实体页面中，并通过双向链接（`[[ ]]`）与来源页面紧密绑定。

接着，我们利用LLM的强大提取能力，进一步充实了这些实体页面的内容，使其成为一个个独立、丰满的知识节点。

### 4\. 方法论沉淀：重塑病种分析体系

在知识融合的过程中，我们重点对“病种分析”方法论进行了梳理和完善。基于库中已有的多份分析报告，提炼出了一套可复用、标准化的病种运营数据分析框架，沉淀为独立的方法论页面。

### 5\. 适配工具：Dataview 支持与链接化

为了让知识库更好地在 Obsidian 等笔记软件中运转，我们规范化了所有文档的 YAML Frontmatter（文件头元数据）。这一步让我们可以通过 Dataview 插件轻松实现对整个知识库的动态查询和汇总展示。

此外，我们还引入了一份 CSV 文件进行动态匹配，为库中提及的诸多专有名词、参考案例自动添加了相关的公众号文章拓展链接，极大丰富了阅读体验。

* * *

三、开源：共享共建，让知识流动
---------------

为了让更多同行受益，我们将这个框架正式开源至 GitHub！

👉 **开源地址**：\[https://github.com/Hengjian2026/hospital-operations-llm-wiki\]

**⚠️ 特别声明**：本项目基于严格的**非商业/非医疗（non-commercial/healthcare disclaimer）开源协议**。本项目仅供学习交流及个人知识管理参考，**不得用于商业用途。**

* * *

四、使用指南：“看山是山，看水是水”的三重境界
-----------------------

为了方便大家上手，我们特地编写了使用指南，总结了知识库使用的“三个层级”：

*   **第一重：基础查阅（Ingest & Read）**——把它当成一个带有超级链接的高级文档库，利用索引和搜索，快速定位到你需要的那份报告摘要。
    
*   **第二重：关联探索（Query & Connect）**——顺藤摸瓜。从一份科室报告，点击双链跳到该科室的总体画像，再跳转到相关的指标定义和同类病种的分析方法论，实现网状学习。
    
*   **第三重：洞察涌现（Lint & Synthesis）**——通过LLM辅助问答，综合多份文档中的数据和结论，生成跨越单一报告维度的全新综合分析报告（归档至 `报告/` 目录），实现知识的生长与进化。
    

* * *

**结语**

构建这样一个 LLM Wiki 不是一劳永逸的终点，而是知识管理的起点。期待这个小小的开源框架，能成为你梳理医院运营数据的得力助手！如果你对数据分析、医院精细化管理感兴趣，欢迎前往 GitHub star🌟 并提出宝贵的意见！

_本文由 CC + MinMax2.7 辅助生成整理_

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言