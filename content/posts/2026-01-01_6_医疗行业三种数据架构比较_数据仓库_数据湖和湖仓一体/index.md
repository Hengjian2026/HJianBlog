---
title: "6 医疗行业三种数据架构比较 数据仓库 数据湖和湖仓一体"
date: 2026-01-01
draft: false
tags: [数据分析, AI, 成本]
categories: ["医院运营"]
---
     6.医疗行业三种数据架构比较：数据仓库、数据湖和湖仓一体 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

6.医疗行业三种数据架构比较：数据仓库、数据湖和湖仓一体
============================

原创 恒健知行 恒健知行 2025-08-09 17:25 安徽

> 原文地址: [https://mp.weixin.qq.com/s/if3KyTk2Zs4J47TkBrdjhg](https://mp.weixin.qq.com/s/if3KyTk2Zs4J47TkBrdjhg)

1.三种数据架构的比较
===========

表 不同数据架构的比较

生命周期阶段

临床数据仓库

临床数据湖

临床数据湖屋

数据准备

优点：成熟ETL流程 + ACID事务 → 数据结构化、干净、可追溯

优点：支持schema-on-read，原始数据（非结构/半结构）可直接入库，适合快速接入图像、波形、HL7/FHIR等

优点：结合湖仓机制，既保留原始数据，又支持结构化ETL和ACID控制，统一元数据管理

缺点：扩展性差：任何新增字段都必须重新设计 ETL，无法快速采集图像、文本等非结构化数据。

缺点：治理风险高：schema-on-read 导致元数据可能不一致，易变成“数据沼泽”，后期清理成本极高。

缺点：实施门槛极高：需要同时掌握传统数据仓库（ETL、SQL）与大数据（Spark、Delta Lake）技术栈，团队成本大。

数据探索

优点：SQL查询快，适合快速生成BI报表、指标统计

优点：可在原始数据上直接运行Notebook分析（如Spark、Python），适合探索性AI研究、非结构化数据挖掘

优点：统一元数据目录，支持对原始+结构化数据的联合查询，适合多模态AI研究

缺点：无法原生查询非结构化数据：影像、JSON、文本等必须先做 ETL，延迟高、易失真。

缺点：查询效率低：schema-on-read 导致每次探索都要重新解析格式，计算开销大。

缺点：性能调优复杂：需要同时优化湖（Parquet/ORC）和仓（SQL索引）两层查询路径，运维负担重。

数据预处理

优点：ETL流程内置验证规则、审计日志，适合监管场景（如临床试验）

优点：支持分布式处理（Spark等），可快速处理TB级数据，适合实验性特征提取、深度学习预处理

优点：支持版本化表格式（如Delta Lake），可回滚失败的预处理步骤，兼顾规范与灵活

缺点：特征工程受限：固定 schema 无法灵活支持文本分词、图像 embedding 等动态特征。

缺点：重复开发，无统一验证框架，每个研究项目都得重新写数据清洗与验证逻辑。

缺点：双重维护成本，需要同时维护“湖式”分布式作业与“仓式”SQL流水线，团队工作量大。

  

---

1.1数据仓库
-------

临床数据仓库最适用于报表统计、院内BI建设，需要对结构化数据进行数据分析的环境。数据主要来自于关系型数据库，且需要数据治理保障数据质量，这个时候数据仓库比较适合。

（1）数据统计分析：如果数据以表格为主，且对数据保护和可追溯性要求极高，数据仓库是首选。

（2）IT 资源有限：具备SQL能力、缺乏大数据或云资源的中小型医疗机构。

（3）数据多样性低：对于主要处理数值、制作统计表格的医院科室。

（4）对接历史业务系统：需要对接运行多年的关系型数据库老业务系统数据，可直接对接数据仓库，分析历史数据，减少改造。

  

---

1.2数据湖
------

临床数据湖适用于数据需求尚未完全确定、需要快速接入多源异构原始数据的场景：

（1）探索性研究，可立即存储影像、病历等原始格式，无需预定义模式；

（2）算法原型开发，可以支持对数据直接分析，方便快速试验算法；

（3）流式/日志数据，需要实时接入IoT设备或传感器数据，用于异常检测；

（4）低成本海量存储，通过分布式架构更低成本的进行PB 级数据存储；

（5）未来复用，可以保留原始数据，方便将来用新方法重新处理。  

  

---

1.3.湖仓一体
--------

湖仓一体最适合大型、研究型的医疗机构，这些医院需要同时满足实时处理与传统报表的需求。具体场景包括：

（1）全面数据整合，需要把传统表格数据与海量非结构化研究数据（影像、基因组学等）统一到一个平台，既用于常规报表又用于高级 AI 分析。

（2）实时+批处理并行，如 ICU 实时报警系统，需要即时数据流和历史分析共用同一数据集。

（3）多方协作研究，如医院、高校、企业等多方共享，平台既提供严格权限与数据治理，又保留灵活的分析方法。

（4）长期灵活性投资，一次性建设可避免多套系统并存，降低未来扩展成本。

2.架构示意图

2020年DataBricks公司首次提出了湖仓一体概念，它给出的三种架构的演进、区别的示意图：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8C3CrltqkOicibHiaibp1knHMGWlEO37p4icep9InCNyMGWBv4GiaQOXibpoRQ/640?wx_fmt=png)

注:图片来源https://www.databricks.com/blog/2020/01/30/what-is-a-data-lakehouse.html?itm\_data=lakehouse-link-lakehouseblog

2.1.数据仓库

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK85rWAC9T8YsV2SZwLCMqiawyf1ic7OrSThnriccVWAZNjC1wZx32L3qKVQ/640?wx_fmt=png)


 2.2.数据湖

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8nUu2T98pvsbLnZaYGjpplrRP0U2N1b3xsYwuJAV8N42lZeeVGda3ZQ/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8pHzdWD6GKaBazZO6FlZMdR0Y56Ofvzh6h1Wcxal4r8QTSAy1aOe2Kg/640?wx_fmt=png)

注:图片来源https://corporatefinanceinstitute.com/resources/data-science/data-lake/

3.3.湖仓一体
--------

fivetran公司湖仓架构

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8ITf8uicyZMF5s5uRic7W7TmuKcHJAzmVZAR9QPQ84VU6Af5WOlMibftRw/640?wx_fmt=png&from=appmsg)

 注:图片来源https://www.fivetran.com/blog/what-is-a-data-lakehouse

基于Doris 的湖仓一体架构

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8AibHR9NJicNP268Hkhtb0DII4BSLhGgeUBWS8b7LyVauVrSX6cwDPj4A/640?wx_fmt=png&from=appmsg)

 注:图片来源https://doris.apache.org/zh-CN/docs/2.0/lakehouse/lakehouse-overview

![](https://mmbiz.qpic.cn/mmbiz_jpg/IvumIlxgDibSR47j0P4qwYGwSj8ldqh9Jib1aNv32ju0WxXdUTguhEfbIrVia8LHiafKrqVImibgssBNic1ib0zzt5TxA/640?wx_fmt=jpeg)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言