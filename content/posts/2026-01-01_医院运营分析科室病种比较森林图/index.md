---
title: "医院运营分析科室病种比较（森林图）"
date: 2026-01-01
draft: false
tags: [DIP, 医院运营, 智慧医院]
categories: ["医院运营"]
---
     医院运营分析科室病种比较（森林图） \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营分析科室病种比较（森林图）
=================

原创 Hi您好 恒健知行 2025-10-15 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/aSxOgHrhXmR\_05S2qUwyag](https://mp.weixin.qq.com/s/aSxOgHrhXmR_05S2qUwyag)

科室运营分析，尤其是对病种进行深入分析时，少不了对不同组病种之间进行比较。一方面有病种维度的相互比较需求，凸出病种之间费用指标的差距；另一方面，需要了解病种在时间维度上的变化趋势。本文拟解决上述问题。

1.样例数据

患者住院记录模拟数据.csv样例数据（点击可下载）是一组患者入组的模拟数据，包括了入院日期、主要诊断、次要诊断、主要手术、其他手术、住院天数、总费用、DIP分组和科室信息。

病案唯一标识

入院日期

主要诊断

其他诊断

主要手术

其他手术

住院天数

总费用

DIP分组

科室

M2025000001

2025/1/30

J20.9

Z29.1,S06.9

5

11425

OE90

呼吸内科

M2025000002

2025/1/28

J20.9

Z29.1,S06.9

7

15439

OE90

呼吸内科

M2025000003

2025/1/28

J20.9

Z29.1,S06.9

7

14359

OE90

呼吸内科

M2025000004

2025/1/28

J20.9

7

14615

OE90

呼吸内科

M2025000005

2025/1/13

J20.9

Z29.1,S06.9

6

14071

OE90

呼吸内科

M2025000006

2025/1/7

J20.9

Z29.1,S06.9

5

10668

OE90

呼吸内科

M2025000007

2025/1/22

J20.9

Z29.1,S06.9

6

15721

OE90

呼吸内科

M2025000008

2025/1/3

J20.9

Z29.1,S06.9

3

9180

OE90

呼吸内科

M2025000009

2025/1/23

J20.9

Z29.1,S06.9

6

14442

OE90

呼吸内科

M2025000010

2025/1/27

J20.9

7

14766

OE90

呼吸内科

M2025000011

2025/1/12

J20.9

Z29.1,S06.9

9

16170

OE90

呼吸内科

M2025000012

2025/1/24

J20.9

Z29.1,S06.9

3

7337

OE90

呼吸内科

M2025000013

2025/1/20

J20.9

Z29.1,S06.9

5

13029

OE90

呼吸内科

M2025000014

2025/1/16

J20.9

Z29.1,S06.9

6

15028

OE90

呼吸内科

M2025000015

2025/1/1

J20.9

Z29.1,S06.9

7

16985

OE90

呼吸内科

2.森林图

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCBibhSAbI4SRVHJjMzL2X9SnLBCU4f1vicIukHpz1GKBt0QDNzcVzRV7g/640?wx_fmt=png)

森林图是一种统计图，以统计指标（均值、方差）和统计分析方法（方差分析）为基础，用数值运算结果绘制出的图型，常用语流行病统计研究，如Meta分析。因为其可以将上述统计信息全部表示出来，是一种简单直观地展示单一研究和汇总研究的可视化图表。这里借助森林图描绘病组之间的费用差异，展示病种的费用均值（中位数）及置信区间值（四份位数值）。

3.科室内病种组之间的费用比较

借助Deepseek，给出进行病种之间比较的代码。

    请使用 R 语言shiny基于附件数据绘制交互式的分组比较森林图。具体要求如下：

Deepseek生成的代码，执行后我们可以得出如下图效果。下面效果图提供了科室和时间（月）的筛选交互效果，可以进行科室内，不同病种之间费用比较。图形比较的是病种费用，采用了均值比较和中位数比较两种方式。相较于病种费用均值比较，在病种病例数较少，且不服务正态分布的情况中位数比较更具有代表性。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCc7ALEia0xbfyQkQr487KU1byWoTRxKulnQ2p1tV001EWiaU1zhS2Zoibg/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCdFx8r1hH3Io7AjrOicrDnjSolJPdbZr98aNlj7C2sIV82XkFp0eJFVQ/640?wx_fmt=png)

4.科室病种组费用动态比较

参考动态条形图的制作方式，我们也可以绘制科室内，病种费用连续月份的变化趋势。

![](https://mmbiz.qpic.cn/mmbiz_gif/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCgibq6odvXMg3aBY5bIwruBybED0M7ficG41V997J37ZpmHCZicic8msyRg/640?wx_fmt=gif)

5.小结

森林图是一种信息密度很高的图例，可以同时展示均值或中位数、置信区间或四分位区间、样本量的图例，可以直观比较不同病种组间的费用差异，识别病组之间费用差异是否有统计学差异（置信区间是否重叠）。

此外，森林图中均值+95%CI图形适合正态分布、大样本数据；中位数+IQR图形更适合偏态分布、小样本数据，抗异常值干扰。

图例在管理上，可以帮助医院管理者识别费用异常的病种组，为医保支付标准制定提供依据；其中，动态分析可以进行时间趋势监测，识别费用增长过快的病种组；科室间（多病区情况）对比，则可以分享同一病种在不同病区的费用差异，识别最佳实践科室。

  

系列文章：

[智慧医院管理案例（精选）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486555&idx=1&sn=5211f8f1e9c23d70afa7fc0c8795dfad&scene=21#wechat_redirect)

[集团医院月度运营分析报告模版](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486654&idx=1&sn=a1a705c280d67c3daaccff5eb0a0cc5f&scene=21#wechat_redirect)

[医院运营月度分析报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486530&idx=1&sn=ecd4df8e0efc030c8a5218687d847673&scene=21#wechat_redirect)

[医院质量与安全管理分析报告样例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486458&idx=1&sn=89dd4becee04413de04026dbd1a8188f&scene=21#wechat_redirect)

[病种分析统计样表](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486353&idx=2&sn=fa6889dc1ba36a85579cc7f82a28ef3e&scene=21#wechat_redirect)

[医疗指标目标管理的图形化方法](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486331&idx=1&sn=f843230259af2a6c65ff5b9bc75db6a8&scene=21#wechat_redirect)

[科室运营分析之病种动态分析（动态条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486725&idx=1&sn=6ed61c865f257f2c0ddef4a20089469c&scene=21#wechat_redirect)

[医院运营分析之病种费用分组比较（小提琴图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486719&idx=1&sn=5fcc2823a21332a7bf0dc4fb829bc4f0&scene=21#wechat_redirect)

[病种运营分析之优势科室展示（三维气泡图](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486701&idx=1&sn=ac0e486ab83e6578abaf82be73e256d1&scene=21#wechat_redirect)[）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486701&idx=1&sn=ac0e486ab83e6578abaf82be73e256d1&scene=21#wechat_redirect)

[科室运营分析之优势病种挖掘（矩阵树图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486700&idx=1&sn=52796a0574a3dde2e544ba789bd77522&scene=21#wechat_redirect)

[医院运营管理之差距分析（进度图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486685&idx=1&sn=b94ea7e23013624c07eadabdc6a8467c&scene=21#wechat_redirect)

[医院运营管理之分组比较（堆叠条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486669&idx=1&sn=885a691da1da1b87853dbedb140f1e6c&scene=21#wechat_redirect)

[医院运营管理之分组比较（金字塔图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486668&idx=1&sn=378478a1331f2c52c2be7477451a61e3&scene=21#wechat_redirect)

[集团医院月度运营分析报告模版](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486654&idx=1&sn=a1a705c280d67c3daaccff5eb0a0cc5f&scene=21#wechat_redirect)

[数据驱动质量指标质控方法（控制图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486613&idx=1&sn=1d9b40fdfece0fd7021b9c6a2566dca8&scene=21#wechat_redirect)

[医疗质控分析之基于数据的异常值查找（箱线图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486597&idx=1&sn=4ebb5e05f49f5546114fba08722d660c&scene=21#wechat_redirect)

[巧用雷达图进行科室间的指标比较分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486591&idx=1&sn=0240f03af6b3aead46486ccdb3805da0&scene=21#wechat_redirect)

[交互式可视化案例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486583&idx=1&sn=80710795dba7c9ec5bab2305e7493660&scene=21#wechat_redirect)

[病种分析的柱形图、折线图表达](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486566&idx=1&sn=0e75826f701cacc5fbbbfa393667b4ca&scene=21#wechat_redirect)

[运营分析方法之波士顿矩阵图---Deepseek帮忙还需要其他工具吗？](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486543&idx=1&sn=1f91c6278a6019024775b5ddbc30968c&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言