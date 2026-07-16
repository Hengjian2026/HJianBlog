---
title: "用 数学 进行绩效奖金推算"
date: 2026-01-01
draft: false
tags: [AI, 绩效]
categories: ["医院运营"]
---
     用“数学”进行绩效奖金推算 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

用“数学”进行绩效奖金推算
=============

原创 Hi您好 恒健知行 2025-10-14 09:47 安徽

> 原文地址: [https://mp.weixin.qq.com/s/CoHP5oQxem7AIuZULlQYxw](https://mp.weixin.qq.com/s/CoHP5oQxem7AIuZULlQYxw)

1.问题背景

目前，一些医院在推行RBRVS绩效方案，通过绩效系统可以得出各护士的层级得分（及层级均奖）、岗位得分（及岗位均奖）、工作量得分（及工作量均奖）、护理质量得分（及护理质量均奖）和满意度得分（及满意度均奖）。我们需要根据上述五个因素计算各个护士的绩效奖金。如何确定各个因素的系数是我们要解决的问题。

年月

绩效单元

姓名

层级得分\*层级均奖（X1）

岗位得分\*岗位均奖(X2)

工作量得分\*工作量均奖(X3)

护理质量得分\*护理质量均奖(X4)

满意度得分\*满意度均奖(X5)

发放奖金(Y)

2025年8月

神外

张\*\*

2576.6

1485.99

1393.6

2049.35

2050

2576.6

2025年8月

神外

李\*\*

2279.3

2153.935

1393.6

2049.35

2050

2279.3

2025年8月

神外

王\*\*

2279.3

3114.575

3296.8

2049.35

2050

2279.3

2025年8月

神外

宋\*\*

527.212

0

228.956

991.6443

991.995

527.212

2025年8月

神外

朱\*\*

2279.3

1350.9

1393.6

2049.35

2050

2279.3

…

…

…

…

…

…

…

…

…

2.解决方案
======

2.1.二次规划
--------

二次规划是非线性规划中的一类特殊数学规划问题，在很多方面都有应用，如投资组合、约束最小二乘问题的求解、序列二次规划在非线性优化问题中应用等。在过去的几十年里，二次规划已经成为运筹学、经济数学、管理科学、系统分析和组合优化科学的基本方法。

绩效考核奖金试算过程中：

记：层级得分为（均奖）X1、岗位得分（均奖）X2、工作量得分（均奖）X3、护理质量得分（均奖）X4、满意度得分（均奖）X5、发放奖金Y

上述问题转化为构建方程：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCK62j491cq31IT4EfnU4Ric3FWd96ZhbpqcSV2LQGbG8CaB7rkr9AcIg/640?wx_fmt=png)

要求：![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCDWzYhcbpicFbBz1HdZIUIVwkOqBtSlRTnc4iaHk8Cibhl5BdrWNt7V5dA/640?wx_fmt=png)

在此基础上对![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNChF64cME2bcXDGfuDCJHiaicWv3JFZnQQRpaBzZSakah69lFcczk4h5yA/640?wx_fmt=png)进行估计。

上述问题可以转化为在![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCDWzYhcbpicFbBz1HdZIUIVwkOqBtSlRTnc4iaHk8Cibhl5BdrWNt7V5dA/640?wx_fmt=png)约束条件下，求二次方程的

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCviarRLcFIpV6LiauNJrNL5j0fTUfTvdb90bFrNsepx0n5EvOfA4sjUdA/640?wx_fmt=png)

最小值

对上面的公式进行展开写成矩阵形式就是：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCRwHuoxGDDgtDkYGhZh4hpo3YCepmBfKia49BZ0jxlFxQYS119XFST8Q/640?wx_fmt=png)

由于 ![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCQzboH1IKDIdEIczwV7wIvJjGV4icgAicnDfmmgQkfQ0LvrZPibCSw4nEg/640?wx_fmt=png)是大于0的常量，故目标函数等价求解：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCs96DVCCCBLg23WcdPAdp1m7fHdexU7IH6UPYutDMyymQqQeCx9A72Q/640?wx_fmt=png)

等价于：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCiaZ66NsExiavKxy1DzxL8YucM7LCO0SeS3eib6QjkDib7TNseIyicmVNNzQ/640?wx_fmt=png)

该问题属于运筹学二次规划范畴，可以相关软件进行求解计算。

公式中，其中![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCRktrkkEQqYcqPvgOiax1hbugSIciaBeZIQXheNNBvyRP8fWPVcpdq8Xw/640?wx_fmt=png)是Hessian矩阵，T是有限指标集，X，Y和A都是R中的向量。如果Hessian矩阵是半正定的，则我们说公式是一个凸二次规划，在这种情况下该问题的困难程度类似于线性规划。如果有至少一个向量满足约束并且在可行域有下界，则凸二次规划问题就有一个全局最小值。如果是正定的，则这类二次规划为严格的凸二次规划，那么全局最小值就是唯一的。如果是一个不定矩阵，则为非凸二次规划，这类二次规划更有挑战性，因为它们有多个平稳点和局部极小值点。

我们利用统计分析软件R得出二次规划最优解：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNC5V1L5iaKxUbZ5cJlicico6PWUhmeBKguzY1rrDVdHNmGfsicTicaCcZicrKQ/640?wx_fmt=png)

利用二次规划求解出：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCGje2HrLpPNagqBZiaib9v5egqZ1lHXb2GY0WgkDy4rGs4RSbtkciaKSPQ/640?wx_fmt=png)

2.2.多元线性回归
----------

在回归分析中，如果有两个或两个以上的自变量，就称为多元回归。事实上，一种现象常常是与多个因素相联系的，由多个自变量的最优组合共同来预测或估计因变量，比只用一个自变量进行预测或估计更有效，更符合实际。

绩效奖金受层级得分、岗位得分、工作量得分、护理质量得分和满意度得分等多个因素影响，可以构建多元线性回归方程：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNC7IRlKmCW2ia92duZRHHwlO6MGXQPjn5s04jELaQpc3p2NJyRUNEZib4w/640?wx_fmt=png)

方程可以看作护士奖金与层级得分、岗位得分、工作量得分、护理质量得分和满意度得分的多元回归方程。利用回归模型得到参数![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCxQkVCsEO0xB3jIzz87VpR8ELqj0qh1MNIib1R9xGXeFPzkGObJDicnGA/640?wx_fmt=png)的估计。

多元线性回归的基本原理和基本计算过程与一元线性回归相同，但由于自变量个数多，计算相当麻烦，一般在实际中应用时都要借助统计软件。我们借助统计分析软件R，利用医院2016年10月份测试数据，得到各影响因素的系数：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNC5TSZa5RHVkFyCiaOPvHwOV689qjvvsiaSxhaQHCT4qmxM1JhiaYoGnbBg/640?wx_fmt=png)

得出多元回归方程：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRibkockOicCz8KnbDQ23dBNCGje2HrLpPNagqBZiaib9v5egqZ1lHXb2GY0WgkDy4rGs4RSbtkciaKSPQ/640?wx_fmt=png)

3.讨论
====

两种方法得出的权重系数大体一致，求解出的系数能够佐证奖金发放与层级得分、岗位得分、工作量得分、护理质量得分和满意度得分关联关系，可以作为奖金发放的参考。在奖金池有限的条件下，需平衡总体分配、确保公平等原则约束下，数据方法是一个相对客观、有理有据、数据支撑的很好的绩效管理工具。

相关文章

[公立医院绩效考核指标拆解](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486601&idx=1&sn=dbe9d6018172f76fa54c22e54e63a03b&scene=21#wechat_redirect)

[绩效考核系统核心逻辑](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485511&idx=1&sn=002289f1e758b68786b1ccb48270292c&scene=21#wechat_redirect)

[信息技术支撑下绩效考核体系构建](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485390&idx=1&sn=1db410d6fdb0344027f52c8a10c94054&scene=21#wechat_redirect)

[多维四层绩效考核方案简述](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485253&idx=1&sn=a65264549c42f6abd041952aebab6e8a&scene=21#wechat_redirect)

[医院绩效管理方案的系统实践](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485076&idx=1&sn=9e3eff2c362a14a3738e8bd8f65d2a39&scene=21#wechat_redirect)

[数智化，重塑公立医院绩效考核新范式](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485133&idx=1&sn=4f715494aa09163ae0bf8c9037f4bbbb&scene=21#wechat_redirect)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言