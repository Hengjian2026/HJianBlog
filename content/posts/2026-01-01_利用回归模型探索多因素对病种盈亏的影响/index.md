---
title: "利用回归模型探索多因素对病种盈亏的影响"
date: 2026-01-01
draft: false
tags: [DIP, 医院运营]
categories: ["医院运营"]
---
     利用回归模型探索多因素对病种盈亏的影响 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

利用回归模型探索多因素对病种盈亏的影响
===================

原创 Hi您好 恒健知行 2025-12-10 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/ptxGWhuMIDCREYv1MxwNTw](https://mp.weixin.qq.com/s/ptxGWhuMIDCREYv1MxwNTw)

1、回归分析简介
========

《医院运营管理之病种盈亏探索分析一 相关分析》介绍了变量之间的相关关系,回归分析是与相关分析紧密关联的一种统计学分析方法。相比相关分析，回归分析构建了变量之间的定量关系，通过回归模型构建从影响因素到盈亏的结构化的方程，精确反应之间的关系。

2、线性回归
======

线性回归是最常见的回归模型，最早接触的线性方程如二元一次方程，我们对病种盈亏的研究则是多元的，涉及多个影响变量。《医院运营管理之病种盈亏探索分析一 相关分析》曾做过相关分析矩阵，可以看出变量之间也存在一定的相关性。在这种背景下我们来一步步做回归模型：

2.1 因素筛选和共线性
------------

使用多重共线性检查方法来进行定量因素筛选，本步骤即处理高度相关的影响因素。如CMI、DIP标准分值、住院天数、总费用、年龄、药占比等因素，构造与盈亏变量的线性回归模型：

（1）相关分析结果

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSqQRjHibvvRQ0TEd4Ih1vpysuKHeGs78Q7OtAD4Shn6mpEkAwxicC1EJkqqTaKzLNDpH9GzdOfDmlg/640?wx_fmt=png)

DIP标准分值与CMI相关系数为1，高度相关，建立回归模型只需要选择一个因素。

（2）移除共线性的变量

移除”DIP标准分”这个变量后，我们重新构建模型

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSqQRjHibvvRQ0TEd4Ih1vpyM7oksYWbD7FibDOCAHSP8DhBl3nS1vbAOHzKAPkHibGOOiaCKlgS4odPw/640?wx_fmt=png)

此时，VIF<5,相对来说，共线性线性不严重了。

最终的模型结果的残差如下图所示：          左上图：异方差严重;右上图：残差非正态；左下图：再次检验异方差；右下图：表明存在个别强影响点，对回归系数估计有显著拉动作用，即少量样本对模型结果影响过大，模型稳健性不足。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSqQRjHibvvRQ0TEd4Ih1vpyVFxXtqDicblh1u25vBmpJ6KHfoF7wCicVtbRvyFmt21Z7XQP8lZyg2jg/640?wx_fmt=png)

此外，模型的R方等于32.1%（越接近1越好），表明模型只能部分解释各因素对盈亏的影响。无论模型整体效果如何，假设采用该模型，它可以作如下解释：

（1） CMI: 每增加1分，预测盈利增加34.26元

（2）住院天数: 每增加1天，预测亏损减少74.86元

（3）总费用:每增加1元，预测亏损0.3345元

3、广义线性回归
========

上面的结果不是特别理想，广义线性模型或许有更好的结果。下面是构造伽马回归方程：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSqQRjHibvvRQ0TEd4Ih1vpy70tTC7j82E8DMYQTuWaPFCNC74ibOyRfSiaWMJU4oiaTtDbM20y1qxkZw/640?wx_fmt=png)

方程表明：

（1）CMI每增加1单位，盈利金额平均增加129.78%

（2）住院天数每增加1单位，盈利金额平均增加1.67%

（3）总费用每增加1单位，盈利金额平均减少0，即对盈利不影响

（4）年龄每增加1单位，盈利金额平均增加0.48%

模型最终的检验结果如下图，与一般线性回归模型检验结果相比，也存在类似的问题。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSqQRjHibvvRQ0TEd4Ih1vpylvNCduTysEbhh6mK0e4A8HK0vtf49ia6Co6EzFciaq9dBAYpbTxice56g/640?wx_fmt=png)

4、逐步回归
======

逐步回归是一种将影响因素逐步纳入到模型中构建回归模型的方法，在《20251208医院运营管理之病种盈亏探索分析一 分类变量分析》中我们提到不同分类变量下盈亏的表现。可以考虑将分类变量纳入模型，进行逐步回归。其中分类变量需要处理成因子变量。比如构架五层模型：

    （1）第一层：仅患者基本特征（年龄、性别）

  

每一层模型结果如下：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSqQRjHibvvRQ0TEd4Ih1vpykyAXr2Y42orXdkFpl0TEuWuxdYTu6c5wjOa2Zn8PTJYnDzplj9HOXA/640?wx_fmt=png)

每增加一层具体的效应有：

1\. 加入疾病特征（第二层vs第一层）：F = 211.471 ，p值 = 0

2\. 加入病种科室（第三层vs第二层）：F = 3.146 ，p值 = 0

3\. 加入诊疗特征（第四层vs第三层）：F = 241.77 ，p值 = 0

4\. 加入费用结构（第五层vs第四层）：F = 11.282 ，p值 = 0

最终五层模型模型调整R平方为23.35%，可解释盈亏的 23.38 %

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSqQRjHibvvRQ0TEd4Ih1vpypNmdIlMRHxDCTOcLicia6HIE45iaezlncia08K7Q8AyYWz2zNZxE7JzSOA/640?wx_fmt=png)

5、小结
====

总体来说，回归模型并不能形成由各类因素对盈亏的精准预测模型。下一步尝试利用机器学习算法探索病种盈亏的影响情况。

系列文章

<4>[医院运营管理之病种盈亏探索分析一 分类变量分析，比较科室、病种、患者特征、住院天数、费用结构的病种盈亏对比](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487918&idx=1&sn=6b788abf4ead8f3f290a95c2842ae7d5&scene=21#wechat_redirect)

<3>[医院运营管理之病种盈亏探索分析一 相关分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487907&idx=1&sn=3a54600291f91eb06967b7a7fd7c8ab6&scene=21#wechat_redirect)

<2>[医院运营管理之病种盈亏探索分析一 描述统计](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487874&idx=1&sn=c8d5a8def12acbd7ead428a5afd9250a&scene=21#wechat_redirect)

<1>[医院运营管理之病种盈亏探索分析—概述](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487860&idx=1&sn=47571ccc4e2ff4c5c15f8d4be0d2e3ff&scene=21#wechat_redirect)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言