---
title: "医院运营管理数据基础   从采集到决策的全链路数据治理"
date: 2026-01-01
draft: false
tags: [医院运营, 数据分析, AI, 绩效, 成本]
categories: ["医院运营"]
---
     医院运营管理数据基础 - 从采集到决策的全链路数据治理 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理数据基础 - 从采集到决策的全链路数据治理
===========================

原创 恒健知行 恒健知行 2026-07-10 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/pQ6pjeR6s\_-Fiwg2rYdeyw](https://mp.weixin.qq.com/s/pQ6pjeR6s_-Fiwg2rYdeyw)

[医院运管智能体 - 让运营数据分析张嘴就来](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247509248&idx=1&sn=4dd898f71cf0e5debe26742a143adc31&scene=21#wechat_redirect)

[运营管理仪表盘框架](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247509236&idx=1&sn=b0deb45b5278f598b167227ff3414829&scene=21#wechat_redirect)

[医院运营管理核心范畴- 从全院管理层到一线科室的闭环运营](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247509248&idx=1&sn=4dd898f71cf0e5debe26742a143adc31&scene=21#wechat_redirect)

[医院管理之仪表盘开发](https://mp.weixin.qq.com/mp/appmsgalbum?__biz=MzkzNjkyNjg1Ng==&action=getalbum&album_id=4408162654758846467#wechat_redirect)

[AI赋能运营管理](https://mp.weixin.qq.com/mp/appmsgalbum?__biz=MzkzNjkyNjg1Ng==&action=getalbum&album_id=4362098350821572610#wechat_redirect)

  

  

导语：运营分析好不好，数据底座说了算

运营决策系统的核心不是前端界面画的有多漂亮，而是数据准不准、链路稳不稳、查询快不快。

一位信息科主任告诉我们——他们之前上过一套 BI 系统，界面很漂亮，但用了三个月就搁置了。数据隔三差五对不上，业务部门天天打电话质疑准确性。最后信息科花在解释数据为什么不对上的时间，比花在系统运维上的时间还多。

所以我们做这个平台时，把 60% 的精力放在了数据底座上。下面希望能让信息科的同行看到：我们对数据这件事是认真的。

数据架构：兼顾实时性和分析性能
===============

系统采用架构核心思路是不做传统数仓的繁重 ETL，也不完全依赖业务库实时查询。

**层级**

**技术**

**说明**

ODS 层

PostgreSQL

业务数据原始存储。对接 HIS、EMR 等源系统，保留原始数据

ETL 层

Python 定时任务

数据清洗、转换、加载。默认 T+1 从 ODS 同步到分析层

数据湖

DuckDB + Parquet

列式存储，面向分析场景的高性能查询。支持任意维度组合的即席分析

应用层

REST API

统一指标口径，避免不同模块对同一指标定义不一致

最主要的，在面向中小医院市场，为什么选 DuckDB + Parquet 而不是传统列式数据库（如 ClickHouse）？第一，DuckDB 是嵌入式数据库，零运维依赖，部署成本极低。第二，Parquet 列式存储配合 DuckDB 向量化执行引擎，对百 GB 级别数据可实现秒级查询响应。第三，数据以文件形式存储，方便备份、迁移和版本管理。

宽表设计：让查询零等待
===========

传统星型/雪花模型在运营分析场景中有一个突出问题：跨表关联查询性能差。本系统采用宽表设计——将核心运营指标的所有相关维度预先关联并物化存储为一张大表。任何分析查询只需要扫描一张表，不需要 JOIN。实测对千万级数据量的宽表进行多维聚合查询，响应时间控制在 1 秒以内。

宽表结构管理
------

可视化的宽表结构管理界面，支持查看表结构、字段定义、ETL 任务配置和数据追溯。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZM0mriaWx97OuBO4yZ6g5KpCKgYkqvCA2TfiaJ6UUtfVJLTmfIpNzvCia3wznXKoJ9hC43WkBVYz4G5IiaXLLu5jvyQTEJALE6M02I/640?wx_fmt=png&from=appmsg)

  

数据治理：让数据可信、可用、可追溯
=================

数据元管理：统一定义每个指标的来源、口径、计算规则。避免同一指标不同口径问题。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMKBicxC21Z4tf3pZibxYSvDmOfcHDpGXMcwr4cFniarUyR8zK8vlS77HIGUZaGzZh9jzL4vo2uibAoqfsDfFpibZdoOkaqytMViawno/640?wx_fmt=png&from=appmsg)

数据源管理：集中管理所有接入的数据源（HIS、EMR、LIS、手麻、药房等）。支持配置采集频率、连接状态监控和异常告警。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPGZxKcgYahAmQIV0O4icYwnAr9icqZstjY5HrN7gfo2P2yb6szPhslyfcWkyplibZZrbYSHicUHibfqoOyicofbktBKsK1fU1yPuPeo/640?wx_fmt=png&from=appmsg)

ETL 作业调度：可视化配置界面，支持定时触发、手动触发、依赖编排。每次执行有日志记录。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOibM3d6KfqIsr6ZmSFG7kFuicoZddiboRIzWJoibdK6F4dSGbDZfMBPwLskJmDBXbI5qewxDMzwkfPnsbcibR49YoNCEXKWZ2KDz3U/640?wx_fmt=png&from=appmsg)

数据校验：内置一致性校验规则——如各科室出院人数之和应等于全院出院人数。校验不通过时自动告警并标记受影响的数据范围。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOsLYxcyMjELicj4vhhdGSO317VwC2sugZMMg2eqKb8NXuq5yciaFYB0fUicpO9yYHibxTiamYQ0D3BZwiaL1Vpp5tFjhkXssjKACXLo/640?wx_fmt=png&from=appmsg)

报表中心：告别找信息科出报表
==============

医院的很多运营报表至今仍在用人工 Excel 模式——业务部门提需求、信息科写 SQL、导出数据、手动排版。一份常规月报的完整流程平均耗时 2~3 天。

报表中心提供模板管理和自动生成：预置常用报表模板（运营月报、科室绩效、医保分析等），支持按需定制和定时自动生成。Word/PDF 双格式导出，可直接打印或用于院周会。

报表模板管理
------

模板管理界面，预置常用报表模板，支持分类管理和搜索。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNCAPNxFH8jyUAzEkRkfLVk9NWX7S1V16rVmXAz6M3pyZNcbsdcYZNEHKtKBz7jxAWQftrUrJxz7Ay9wVicOS2ROaeXUNps3R0M/640?wx_fmt=png&from=appmsg)

\[截图预览: 报表中心 - 模板管理\]

报表导出历史
------

导出历史记录，追踪所有已生成的报表，支持按时间范围和类型筛选。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOKdtNhTDonsLp74NWicn9QXUY1uxFOYkkOHiaLBDlicQCAibva9boYNREaT8yguQEf9XjFuZ8JSa6M0CH9IxNN2giaiaQFgYl0ia3lvQ/640?wx_fmt=png&from=appmsg)

\[截图预览: 报表中心 - 导出历史\]

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言