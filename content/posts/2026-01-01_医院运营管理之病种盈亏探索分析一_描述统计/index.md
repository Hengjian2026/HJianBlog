---
title: "医院运营管理之病种盈亏探索分析一 描述统计"
date: 2026-01-01
draft: false
tags: [DIP, 医院运营, 数据分析]
categories: ["医院运营"]
---
     医院运营管理之病种盈亏探索分析一 描述统计 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理之病种盈亏探索分析一 描述统计
=====================

原创 Hi您好 恒健知行 2025-12-06 19:13 安徽

> 原文地址: [https://mp.weixin.qq.com/s/TTJItklk9JL0zKBZ4NIAxQ](https://mp.weixin.qq.com/s/TTJItklk9JL0zKBZ4NIAxQ)

1.数据清洗
======

使用统计分析或者机器学习方法来进行病种盈亏影响因素分析，第一步就是进行数据清洗。

一方面，统计分析方法或机器学习方法对数据集有一定的要求；而我们拿到的原始数据通常不符合这方面的规则；另一方面，使用工具调用上述方法时，不同的软件对数据格式也有一定个约束，因此数据清洗必不可少。常见的数据清洗操作有：缺失值处理、数据记录的筛选、新指标的计算、数据格式的处理、去重、数据转换等等。

1.1缺失值处理
--------

样本数据包括来自患者医保结算、病案方面的数据，数据缺少是常见显现象，总体来说，需要根据业务背景进行针对性的处理。

以患者年龄字段为例，很多患者的该信息都没有正常填写，因此存在缺失的情况。对于缺失值的处理，在数据分析过程中采用中位数填充是一种策略之一。此外，对于某些列（字段或因素）缺失比例过多，我们需要忽略该因素。

1.2数据记录的筛选
----------

该操作主要针对异常值的处理。异常值的识别可以采用均值+3标准差、IQR（分位数）、Z-score等，他们都是常见识别异常值的方法。对于异常值，我们是采用数值替换、剔除等处理方式，具体采用方式即可以通过业务判断，也可以通过数据验证来测试。

1.3新指标的计算
---------

顾名思义，通过已知的信息计算新的变量，比如药占比可以通过药品费、总费用指标进行相除得到等。

1.4数据格式的处理
----------

数据格式的处理主要是面向不同的工具进行处理，最常见的数据格式处理就是日期数据格式的处理，通过典型的“2025-12-6”我们可以快速得到年、月、日、季度等其他日期格式。

1.5数据转换
-------

数据转换可以是变量类型的变化，如将数值型转为字符型、字符型转为分类factor因子格式等。例如我们对年龄进行分组处理，将定量的年龄分成不同的年龄段等处理；此外，不同的软件对分类变量、字符型变量、数值变量有特定的约束，也需要处理。比如R中就用“factor”处理模式。

2.描述性统计
=======

描述性统计分析方法是指用表格、分类、图形、计算概括性数据（计数、求和、均值、中位数等）来描述数据特征。以样例数据为例，我们可以做以下描述性统计分析：

2.1 计算盈亏的概括性统计量
---------------

研究目标变量是盈亏，我们计算该指标的概况型的统计量，结果显示样本有2877条记录，均值102.32元，中位数是0，有12.34%记录比例。当然还有一些最大、最小等信息。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdKtHeKUkg9biczppnQFKJuFibYRmqCGns9AWtAzO2CnI2pbn5FZswIWCQ/640?wx_fmt=png)

2.2正态性检验
--------

了解一些指标的分布情况，我们可以进行正态性检验。典型的正态分布的数据是呈现“钟”型的分布，是一种理想状态，偏态分布才真实数据的常态。以盈亏指标为例，该指标的确不符合正态性分布。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdd16yD7rBEXWibzQl6I7lIG102wwDFlIlfGL7icNYHtjL9Dr3kq4Z6oqA/640?wx_fmt=png)

正态性检验也可以通过图示的方式进行呈现，如下图。左图是盈亏指标的分布直方图，曲线是正态曲线。右侧是正态建议的QQ图，正态分布的数据一般呈“直线”形状。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdevzTJ355RqqMoibtEOKJ1qsmq2KoLFMOuo9nVB1xVUgbbyDIQT8Uicibg/640?wx_fmt=png)

2.3异常值识别
--------

我们采用IQR方法进行异常值识别。IQR方法中，Q1是25%分位数，Q3是75%分位数，IQR是Q3-Q1四分位距。IQR方法将Q3+1.5\*IQR 或 Q1-1.5\*IQR 之外的数据被视为离群值。

样例中，盈亏指标的异常值情况：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdqCLbtiaa9uaicpxHhMbvktaJKCufBJjOU8RYrqsdndHPglshbhKuveZQ/640?wx_fmt=png)

2.4因素特征
-------

要研究相关因素对盈亏的影响，那么就需要对相关因素进行统计、描绘。例如：

（1）CMI、DIP分值、病案分值等

从相关统计量来看，上述指标都是偏态分布。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdn8VEDJOcbpKasXZaHgjFfkQ25rZ7zqe4BxyqyibmedNnasYic0f3FwyQ/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdCzdGk1nChC36LluuYxXjLiafPoEEvLcUgTFlyic36p8CVfhbtBZW0PFQ/640?wx_fmt=png)

（2）费用结构统计

对药占比、耗材占比、检查费占比等进行统计、描绘。

从药占比、耗材占比的箱线图分布可以看出，这两个指标有很多离群值，药占比、耗材占比较高的记录。这部分从业务上可以猜测是否有一些内科、外科手术的部分患者。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdsgLTFo2KqqwxmxE2NGo6k9ia1X8ibMl4ulZrsicTlhgnib3eic5kKzXVZlg/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdhWFS1ibSnMcU03357wAUib2mx4KoySTpoib8TIiaJUwib3PkqgGVq3BNpkQ/640?wx_fmt=png)

（3）住院天数和年龄统计

可以发现最长住院天数达53天，整体来看数据是左偏的，住院在10天以内的患者较多。而患者年龄分布来看，样本主要是中老年患者。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdP3ooYQKC1JJbn9y7FbJYLqVlEfzhm5us5Cib7EQib2Yl2JgENeJTxq9Q/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRROtAEc4qpASRtTIQd27jdB8ueJ8U3jaxC4eBuCRWS2EVTicvM12D3wLms2liaO7MRxFZFdg6PXpRA/640?wx_fmt=png)

系列文章

<1>[医院运营管理之病种盈亏探索分析—概述](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487860&idx=1&sn=47571ccc4e2ff4c5c15f8d4be0d2e3ff&scene=21#wechat_redirect)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言