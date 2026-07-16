---
title: "医院运营管理之手术分析仪表盘"
date: 2026-01-01
draft: false
tags: [医院运营, 绩效]
categories: ["医院运营"]
---
     医院运营管理之手术分析仪表盘 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理之手术分析仪表盘
==============

原创 Hi您好 恒健知行 2026-03-02 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/w2DQZIisecBsHQZJnX2ACg](https://mp.weixin.qq.com/s/w2DQZIisecBsHQZJnX2ACg)

借助大模型，可以快速地写代码，只要你的目标清晰、逻辑合理，让大模型来给你做些小工具还是非常容易的。一天一天小工具不再是天方夜谭。下面介绍下用大模型开发的手术分析的仪表盘的过程。

一、明确分析目标
========

手术分析常见的统计指标包括：手术例数、手术平均药品费用、药占比、手术并发症例数、手术病人住院天数、手术病人占比（手术人数/出院人数）等。

通常需要分门诊、住院分开统计。统计的维度包括：医院（存在多院区的话）、时间（年、季度、月、日）、科室、诊断类别、手术名称、收费项目、并发症（有、无）、手术级别（大、中、小）、主刀医生.....

二、数据结构
======

要统计上述指标，明确自己需要的数据源，因为上述数据往往存在医院的各种业务系统，对于我们非技术人员取数据有一定难度。但我们可以把我们需要的数据列成一个大宽表，宽表上明确需要的字段、变量信息。有了这个大表字段信息，我们去找信息老师要数据，相比直接要统计哪些指标更容易沟通。

三、和大模型反复对话
==========

和大模型的对话内容分为两部分，第一沟通需求，反复沟通需求，直到其理解的和你想要的差不多。第二，让大模型写代码，这对于业务人员来说是比较难的，写代码对于大模型容易，但代码的调整对于没有计算机基础的人员来说就比较难的。给大家的建议，可以学习一个小语种，或者写自己日常最熟悉，最容易接触的语言，比如你经常用Excel，那么可以让大模型写VBA。我这里熟悉R代码，我就用R语言代码实现需求。当然前端应用最直接的是让大模型写html代码，浏览器直接反映想要的结果。

另外，数据处理如果让大模型处理，可以用python等。但如果你实在不擅长这些，最快的方式就是你确定用的Excel表格数据已经是结果数据，不需要二次计算加工，直接让大模型将其可视化。

四、手术分析仪表盘的示例效果
==============

4.1概率页面
-------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO4Rug0VyvQPcEsj5r79YL3PT74a3YaNqcibgYJb0J6fdR9oYdwy1qrP9ywhEHicm42paKNF4ZeqgBbAPh9b0Eb8IKBOSDGQ0854/640?wx_fmt=png)

4.2门诊手术
-------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZObPQcl5fQ4PulwuicBx7LNLnoAqrZkMfG9sBC7Y8tqQhicAsbNzic8BiaicoELNxHMm2lxqSXN75nFP8x3Lzibgcsib8jEGhvrLjibXibA/640?wx_fmt=png)

4.3住院手术
-------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN858GJY28zCysXXM1A7Hd7juNOfRwW7t9ah7iciaVcxWSZicvg7zo1bEsypS8AfpcmDZGPCichuTpPBxIiblED4akcxiatRKA22NFQU/640?wx_fmt=png)

4.4深度分析
-------

仪表盘适合通用分析，如果对医院的手术进行更深入的分析，可以加入一些个性化的分析。例如费用的分布探索、费用与并发症的关系；医生在手术视角的绩效排名表现（手术量、时间、并发症、效率等）；手术效率分析，如术前（等待）

、住院日、手术时长、手术室利用率等分析；手术质量分析，如并发症影响因素、

诊断（病种）与并发症关系、手术级别与死亡率关系等，以图示方式分析展示上述因素的结果情况。

五、附手术分析数据样例：
============

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMJ2Kww4CtATicYTjTTU4twhdtGULmNCBJCKJoGSWOhGUUW7WqYDHFiaIvPibHjryeZcjV29apibIbl3TljgkZaDwv3t6FeGCYa8KI/640?wx_fmt=png)

Excel样表：

surgery\_id

type

hospital

date

department

surgery\_name

surgeon

surgery\_level

surgery\_cost

drug\_cost

total\_cost

complication

emergency

success\_flag

death

hospitalization\_days

waiting\_time

duration\_minutes

operating\_room

bi\_project

diagnosis\_category

charge\_sub\_category

charge\_sub\_item

drug\_category

drug\_subcategory

drug\_detail

S001

住院

某三级医院

2024-01-01

普外科

阑尾切除术

张医生01

II级

8000

1200

9200

无

否

成功

否

5

2

60

手术室01

传统开放手术

炎症

材料费

缝线

抗生素

头孢类

头孢曲松

S002

门诊

某三级医院

2024-01-02

骨科

骨折内固定术

王医生02

I级

15000

800

15800

无

否

成功

  

  

  

45

  

微创手术

外伤

检查费

X光

麻醉药

镇痛药

芬太尼

  

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言