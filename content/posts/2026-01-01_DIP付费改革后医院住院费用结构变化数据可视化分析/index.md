---
title: "DIP付费改革后医院住院费用结构变化数据可视化分析"
date: 2026-01-01
draft: false
tags: [DIP, 医院运营, 绩效]
categories: ["医院运营"]
---
     DIP付费改革后医院住院费用结构变化数据可视化分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

DIP付费改革后医院住院费用结构变化数据可视化分析
=========================

原创 Hi您好 恒健知行 2026-02-04 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/9X9wRHFmzd9r1nWgXQv4Aw](https://mp.weixin.qq.com/s/9X9wRHFmzd9r1nWgXQv4Aw)

一、概述
====

本报告参考《\_DIP实施前后患者住院费用结构变化的实证研究——以广东省10家公立医院为例》一文，基于广东省10家公立医院（2家二级、8家三级）2016-2020年住院费用数据，通过Python模拟原始表格数据并完成可视化分析。以2018年广州启动DIP（按病种分值付费）试点为时间分界，聚焦政策实施前后不同级别医院住院费用结构（药费、耗材费、检查检验费、医疗服务收入）的变化差异，直观呈现政策对医院运营的影响，为医保政策评估、医院收入结构优化及运营决策提供数据支撑。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTniaxicN0uysk0WvHnx4HSyZZtw4ZFXc68g9QoQbsJ4XESHRqKBYv3pREn1JXZWgPapfhkIOnS4iaHA/640?wx_fmt=png&from=appmsg)

  

二、分析思路、可视化代码及图表解读
=================

（一）分析思路
-------

1\. 数据模拟：基于原文表格数据，还原二、三级医院2016-2020年住院费用构成、年均占比、结构变动值及贡献度等核心数据。          

2\. 可视化设计：围绕"费用结构对比、年度趋势变化、变动贡献度、变动值差异"四大核心维度进行可视化分析。          

（二）图1：DIP实施前后费用结构占比及年度趋势图

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSeZMcRhWe5KgVQcqXX2t8sQX0H3Y8MGXcpIcCVajIJYibY8mSx4FruCHjJdMOr9IpxUyb4Ixp2maA/640?wx_fmt=png)

1.实施前后占比对比：          

二级医院：药费占比从38.59%降至30.27%（降幅8.32个百分点），医疗服务收入占比从24.08%升至30.77%（增幅6.59个百分点），检查检验费占比微升0.94个百分点至32.66%。          

三级医院：药费占比从29.26%降至22.77%（降幅6.49个百分点），耗材费占比从19.70%升至26.42%（增幅6.72个百分点），医疗服务收入占比稳定在30%左右（30.50%）。          

2.年度趋势：          

二级医院：药费持续下滑，检查检验费2018年后回升至34.64%；医疗服务收入2018年达峰值31.89%后略有回落。          

三级医院：耗材费持续上涨（2016年16.55%→2020年27.80%），医疗服务收入以2018年为分界先降后升，药费和检查检验费逐年下降。

（三）图2：DIP实施前后结构变动贡献度对比图
-----------------------

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSeZMcRhWe5KgVQcqXX2t8s1LAu7Ws9XkRbW7ehjK2yE8MZ5TEicribjibDgtFibpMDtk98iaBGu4heNQg/640?wx_fmt=png)

1.二级医院：

DIP实施前，医疗服务收入贡献度最高（50.00%）；实施后，检查检验费贡献度飙升至50.00%，药费贡献度稳定在45.25%，医疗服务收入贡献度骤降至2.09%，政策对医疗服务收入的正向拉动作用较弱。

2.三级医院：

DIP实施前，耗材费贡献度最高（48.69%）；实施后，医疗服务收入贡献度升至40.55%（第一大贡献因素），耗材费贡献度降至9.45%，检查检验费贡献度从1.31%升至25.07%，结构调整更契合政策导向。

（四）图3：DIP实施前后年均结构变动值对比图
-----------------------

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSeZMcRhWe5KgVQcqXX2t8sc4v9vBj5GkDBhZ0Ljl3kHeCZpN3nScpibBto9drHVh5icRjycUxG0SkQ/640?wx_fmt=png)

1.二级医院：

DIP实施后，仅检查检验费呈正向变动（1.62%），药费（-1.46%）、耗材费（-0.09%）、医疗服务收入（-0.07%）均为负向变动，医疗服务收入增长势头受阻。          

2\. 三级医院：DIP实施后，耗材费（0.44%）和医疗服务收入（1.90%）呈正向变动，药费（-1.17%）和检查检验费（-1.18%）呈负向变动，完全契合DIP"控药、控检查、提服务"的政策导向。

（五）图4：二三级医院年均结构变动度对比图
---------------------

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSeZMcRhWe5KgVQcqXX2t8sApGJ3Vfh1Is1Phgg0ia6KLA8rw0D9oEEwwXnH5n6grUpBpbeAHVOvMQ/640?wx_fmt=png)

1.实施后二三级医院结构变动度均下降：二级医院从4.91%降至3.24%（降幅34.01%），三级医院从6.48%降至4.69%（降幅27.62%），说明政策实施后费用结构更趋稳定。

2.三级医院整体变动度高于二级医院，但调整更平稳，反映其管理水平更高，对DIP政策的适配和应对能力优于二级医院。

三、结论与建议
=======

（一）核心结论
-------

1\. 政策影响分化显著：DIP对三级医院医疗服务收入的正向影响显著（贡献度从21.32%升至40.55%），而二级医院受政策影响较弱，检查检验费占比偏高（32.66%）成为主要问题。          

2\. 结构调整契合政策导向：二三级医院药费占比均持续下降，医疗服务收入占比提升，实现"控药增服"的改革目标，政策对规范诊疗行为的引导作用有效。          

3\. 现存关键问题突出：二级医院检查检验费占比过高，三级医院耗材费占比过快增长（达26.42%），均需针对性管控。          

4\. 医院适配能力差异明显：三级医院管理水平更高，费用结构调整更平稳，各项费用贡献度差异缩小（从47.38%降至31.10%），对DIP政策的应对能力优于二级医院。

（二）优化建议
-------

1\. 二级医院优化方向：          

（1）规范检查项目开具流程，建立检查检验合理性审核机制，降低检查检验费占比。          

（2）推动服务价格改革，提升诊疗、护理等技术劳务项目定价，进一步提高医疗服务收入占比，体现医护人员技术价值。          

2\. 三级医院优化方向：          

（1）加强耗材采购和使用管理，推行耗材集中采购、定额使用制度，控制耗材不合理支出。          

（2）巩固医疗服务收入的核心地位，持续优化技术劳务定价，鼓励新技术、新项目开展，进一步提升医疗服务质量。          

3\. 政策层面配套措施：          

（1）针对不同级别医院制定差异化DIP配套政策，加强对二级医院的政策指导和资源支持，提升其政策适配能力。          

（2）建立费用结构动态监测机制，将检查检验费占比、耗材费占比纳入医院绩效考核，引导医院持续优化收入结构。

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言