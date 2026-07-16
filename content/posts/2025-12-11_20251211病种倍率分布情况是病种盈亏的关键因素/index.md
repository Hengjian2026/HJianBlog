---
title: "20251211病种倍率分布情况是病种盈亏的关键因素"
date: 2025-12-11
draft: false
tags: [DIP, 医院运营]
categories: ["医院运营"]
---
     20251211病种倍率分布情况是病种盈亏的关键因素 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

20251211病种倍率分布情况是病种盈亏的关键因素
==========================

原创 Hi您好 恒健知行 2025-12-12 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/sa7J6SJiTNhtYayAvZaaAg](https://mp.weixin.qq.com/s/sa7J6SJiTNhtYayAvZaaAg)

1、问题介绍
======

之前笔者尝试用机器学习方法探索病种盈亏的影响情况，无论是回归模型、还是决策树回归，得到的模型R²在20%多，这意味着70%多的影响病种盈亏的因素可能被忽略了。样本数据中还有一些潜在变量未被纳入之前的模型，如倍率情况。

2.病种倍率
======

按病种分值付费（DIP）背景下，DIP不同倍率的病种的结算方式不同。

l高倍率组：当住院患者当次住院总费用数值高于或等于该医疗机构所对应病种分值 2.5 倍以上的

l低倍率组：当住院患者当次住院总费用数值低于或等于该医疗机构所对应病种分值 0.4倍以下的，按照低倍率组算法计算

l正常组：当住院患者当次住院总费用数值高于该医疗机构所对应病种分值 0.4倍以上，但低于该医疗机构所对应病种分值2.5 倍以下的，按照正常组算法计算。

l病例最终分值=(病例初始分值+病例初始分值× 支持系数）×DIP考核系数

由此来看，不同倍率的患者医保报销和实际支付存在差距，或许决定了该患者是否导致医院亏损。

3.模型验证
======

这里我们采用LightGBM模型（LightGBM作为一个梯度提升框架，因其在速度和效率上的显著优势，广泛应用于各类机器学习任务。该框架基于决策树算法，它通过构建多棵决策树来提升模型的准确性）。

3.1因素重要性排序
----------

通过该算法可以得出倍率情况对盈亏的作用最大，其次是总费用、病案分值等等。前7个因素可以占据所有因素影响的80%。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSXrqrX6vKuSJjjJ5g6eR5xK54hB0uJRrp8OaoiaNRzGFkak6zGZlZgnGiaUqLaYKWicyM63lzEib9Mkg/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSXrqrX6vKuSJjjJ5g6eR5xTw15hyFDDoD9UFKwVnrerfkGW9URd5lb3zGPHplztCwMNIq5icV3FOA/640?wx_fmt=png)

上述因素得到的模型结果的R2等于0.77，即模型可以解释盈亏77%的可能性。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSXrqrX6vKuSJjjJ5g6eR5xXr1mwM3o7NeVMNibk9FP4AjgIvvbUIlZib9cX7esB3ECCyN8ZtdKbMgQ/640?wx_fmt=png)

3.2预测结果
-------

下图是对测试集中真实值、预测值绘制的一个散点图。模型可以将大部分数值真实的预测到对应的区间。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSXrqrX6vKuSJjjJ5g6eR5xTb4uiayuth9ZxqI8DMImb1qamSxoLZw1xYQbhP15iaWiaxibgiboRK4OtZg/640?wx_fmt=png)

3.3模型残差
-------

模型残差基本服从正态分布，模型相对来说较之前的决策树结果要好。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSXrqrX6vKuSJjjJ5g6eR5xCIbpicyojIXeCH2C9WW3zRqtOCrzpHSibNU3TfjJquyNcgO0OjicK4zBg/640?wx_fmt=png)

4.小结
====

通过LightGBM算法对病种影响因素分析，发现对亏损起到重要作用的因素依次是倍率分布、总费用、CMI、医疗付费方式（基本医疗统筹、自负金额）和病案分值等。

其中最重要的就是高（低）倍率情况，假设DIP付费按照倍率有不同的结算方式，比如低于0.5倍的按照实际发生费用结算，0.5-2倍之间的按照正常结算，2-3倍的按照高倍率重新计算分值，超过3倍的称为极高倍率，允许3%-5%的比例单议。从理论上讲，DIP费用只有大于0.5小于1之间的才会有医保结余，小于0.5或单一按照项目付费的持平，大于1-3之间的都会导致医保亏损。

进一步深挖业务流程，倍率分布也好、CMI数值也好、病案分值也好，都和病案编码等相关，因此病案质控、编码管理必须得到重视，确保正确的疾病得到正确的编码，落入准确的分组中。再就是关于年龄、离院方式、住院天数等其他因素。

系列文章

<1>[医院运营管理之病种盈亏探索分析—概述](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487860&idx=1&sn=47571ccc4e2ff4c5c15f8d4be0d2e3ff&scene=21#wechat_redirect)

<2>[医院运营管理之病种盈亏探索分析一 描述统计](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487874&idx=1&sn=c8d5a8def12acbd7ead428a5afd9250a&scene=21#wechat_redirect)

<3>[医院运营管理之病种盈亏探索分析一 相关分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487907&idx=1&sn=3a54600291f91eb06967b7a7fd7c8ab6&scene=21#wechat_redirect)

<4>[利用回归模型探索多因素对病种盈亏的影响](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487930&idx=1&sn=2ab7eafc5c59c5000c2bffbbfa66e2b3&scene=21#wechat_redirect)

<5> [机器学习算法探索病种盈亏的影响因素——决策树](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487937&idx=1&sn=ff4434e55b5566d2b0c8e53da9186220&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言