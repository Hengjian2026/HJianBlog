---
title: "医院运营管理工具  R数据分析"
date: 2026-01-01
draft: false
tags: [医院运营, 数据分析]
categories: ["医院运营"]
---
     医院运营管理工具--R数据分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理工具--R数据分析
===============

原创 Hi您好 恒健知行 2025-10-28 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/hTNW1x4SYKsodS7fi3sw9A](https://mp.weixin.qq.com/s/hTNW1x4SYKsodS7fi3sw9A)

医院运营分析涉及大量的统计分析，R语言是转为统计而生的工具，用R语言开启数据分析之旅，是做医院运营管理的最佳选择，轻松实现从导入数据到可视化呈现。本文将带你快速了解如何使用R进行完整的数据分析流程。

一、准备工作：设置工作目录

在开始任何数据分析项目之前，良好的文件管理是成功的第一步。建议在RStudio中创建一个项目（Project），并设定好工作目录。这样做的好处是可以使用相对路径而非绝对路径来读取文件；项目文件夹内可分类存放数据、代码、图形和报告，结构清晰。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpoO4MDff9eSKa6I0MSjfajO37tfXLtoIy59S9R7fSvRy5cpyPR9VyVkg/640?wx_fmt=png)

例如，你可以轻松地用一行代码读取数据，而不必每次都输入完整的文件路径。

·定义本地电脑目录，映射为一个“RStudio 项目”

·允许您使用相对路径而不是绝对路径来读取和写入文件

  
计算机自动到这个目录下找文件

例如：文件的绝对路径:

    "D:/doc/Lecture/data/9.3.xlsx"

，创建“RStudio 项目”，文件的相对文件名：  

    “9.3.xlsx”

 ![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpooklhy3uK8oMer5YAcgs7ZGawbNTQzibTOibXoaHYy9hLSWOgmrSy152A/640?wx_fmt=png)

二、导入数据：从Excel开始

R中可以轻松读取多种格式的数据。对于常见的Excel文件（.xlsx），推荐使用 readxl 包中的 read\_excel() 函数：

    data <- read_excel("9.3.xlsx", sheet = "数据明细表")

这行代码会将Excel中的数据加载为一个R中的数据框（dataframe），这是R中最常用的数据结构之一。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpoT9s0bK7ic9DHZJicHDNDEy1KGSsHia7sc1NibaFEvlJoxXpcibsPlaDKaTA/640?wx_fmt=png)

三、数据管理：清洗与整理

数据导入后，我们通常需要进行一系列的数据管理操作：

    #查看数据 

  

这些操作帮助我们提升数据质量，为后续分析打下基础。

 ![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpo5qasAgr3OQKqdjBE1haf7faJQZlUn8quA8DbnSCIFW0TiajsfoWWhRg/640?wx_fmt=png)

 当需要将数据的列作为向量访问，使用“$”运算符进行提取:

      data$序号

  

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpo8EIIOv1jfnFx979zvzke9vaz3vsoiaEDc1Sq1SMQSK14jWaAXicVVYhw/640?wx_fmt=png)

该语法可与赋值运算符结合使用，用于创建新变量或修改现有变量：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpoJiaRdXI3AbZQxq571Zq13e2AxM6mb41eF3jITtjibxrc4tutQ0D5VwQg/640?wx_fmt=png)

通常当我们需要访问特定行时，根据某个条件对数据进行筛选。我们可以使用函数subset（）来实现这一操作：

   

    data_man <- subset(data, subset = data$性别=='男')

  

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpoibFXtT1Oviaeia89e5zlZ7ibp7PAqTJhUfpicmIAGgElChejzvAWlCQcibibA/640?wx_fmt=png)

四、数据分析：描述性统计与可视化

1.描述性统计

R提供了丰富的函数来计算基本统计量，如

     mean(), 

 函数可以带参数： na.rm=TRUE，表示忽略缺失值。

2.基础图形

我们可以使用基础绘图函数快速绘制：

    直方图：hist()

  

如果你想制作更精美、符合出版标准的图表，推荐使用 ggplot2 包。首先安装并加载：

    install.packages("ggplot2")

  

ggplot2 通过“图形语法”让你能够层层叠加图形元素，灵活地构建复杂图表。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQaRpqvUC1slpRUIEPibrkpoagVeFQnnpDvv6VdvubkfmBpZlib5KMHdkzhPice8wLZrdbS6g9nU8gCg/640?wx_fmt=png) 

五、项目输出：完整的分析流程

一个典型的R数据分析项目通常包括：

    代码（R脚本）

通过这样的结构化流程，你可以确保分析的可重复性与透明度。

R语言不仅功能强大，而且社区活跃、资源丰富。无论你是数据分析新手还是希望提升技能的从业者，掌握R都将为你的数据之旅增添强大助力。从设置目录到绘制图表，每一步都充满探索的乐趣。

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言