---
title: "医院运营管理之病种盈亏探索分析一 相关分析"
date: 2026-01-01
draft: false
tags: [DIP, 医院运营]
categories: ["医院运营"]
---
     医院运营管理之病种盈亏探索分析一 相关分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理之病种盈亏探索分析一 相关分析
=====================

原创 Hi您好 恒健知行 2025-12-08 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/J\_MeFXI1se8L6jZtYGEcBg](https://mp.weixin.qq.com/s/J_MeFXI1se8L6jZtYGEcBg)

1.相关概述

相关性分析，即探索变量之间是否有相关性。探索病种盈亏的影响因素需要将纳入的相关变量与盈亏指标进行相关性的检验分析。

相关性分析的结果可能有三种情况，即正相关、负相关、无相关。两两变量之间的相关是单因素相关分析，存在第三个因素影响则是偏相关。

2.分析方法
======

场景的Pearson相关分析，该方法是面向定量指标之间的分析方法，但它通常要求数据服从正态分布。不妨看下各相关因素与盈亏的Pearson相关性结果：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibT1YiaP2szcBjVLA1KVRdbqDgWjLjcvlp5T8SdUKMicRYNna2crZUj5o53JE5XaGOougZYiayhkicUyTA/640?wx_fmt=png)

并且相关系数也可以通过可视化方式进行呈现：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibT1YiaP2szcBjVLA1KVRdbqDw5Tq8LCtI5GPf8lmO04E7TmH004Wb0H7q2bLnfkjnkkoZiaG0b7xQ4A/640?wx_fmt=png)

对于偏态的数据秩相关分析方法是更好的选择，样例数据中大体是偏态的数据，我们可以采用Spearman秩相关分析方法。对相关变量与盈亏指标进行Spearman相关性分析，结果如图：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibT1YiaP2szcBjVLA1KVRdbqDYb6anxe8iaCXh1FshQWraEicMMPzgBDJibH6tNrePEmjbiaqWDWfWV5VSw/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibT1YiaP2szcBjVLA1KVRdbqDyUPqicaskbqkSlYNicaDTGNwZUUWlkMNwe6O0cUfM0HneNXkytRZybHA/640?wx_fmt=png)

比较两重相关分析方法，我们发现CMI、DIP分值、病案分值、材料费占比与盈亏都是正相关的，而总费用、住院天数、药占比、检查费占比、年龄与盈亏都是负相关的。不知道各家医院情况是否相符？

3.散点图呈现相关性
==========

散点图可以呈现变量之间的相关性，假设两个指标之间是线性相关的，那么两指标的散点图聚集情况也会趋向一个直线。这里我们可以看看盈亏指标与CMI、DIP分值等相关指标之间的散点分布情况，如下图所示。

下图通过线性拟合图形来看，也可以进一步验证各指标与盈亏大概的相关性。但更多的指标是分散的，所以实际来看，并不能简单的说各指标与盈亏是线性相关的。也就是说我们病能上CMI高，一定是盈利的。其他指标也是类似。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibT1YiaP2szcBjVLA1KVRdbqDuk1ZtbN2eqkP0tzf6iccibVwYkGxcp5HbJx5F96VkmbUw6olCATJoiaAQ/640?wx_fmt=png)

所有变量综合起来一起对盈亏又是有什么样的影响呢？偏相关分析可以在控制一定的变量的情况下，探索其他相关变量与盈亏的相关关系。经过计算，样例数据大体可以得到以下结果：

控制总费用后，CMI与盈亏的偏相关系数 = 0.552 （pearson相关系数），偏相关系数 = 0.46 （Spearmna相关系数）。CMI与盈亏仍显著相关。

计算Spearman偏相关系数的矩阵，如下：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibT1YiaP2szcBjVLA1KVRdbqDict0tEwnFIWOwls9dicz8AH6jY8k41M82Qn0libqQKANFDohqz1oLCQjw/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibT1YiaP2szcBjVLA1KVRdbqDwLmogyp9tOcDRYaBWwZlA7mtwm6rBich3Ut0TqI1Cj8dPkKhphyG5Zw/640?wx_fmt=png)

偏相关结果：

1\. 强正相关因素（r>0.2，p<0.001）：

DIP标准分值（r≈0.26）：分值越高，盈亏越好

CMI（r≈0.26）：疾病复杂度越高，盈亏越好

病案分值（r≈0.25）：与DIP标准分值趋势一致

2\. 强负相关因素（r<-0.2，p<0.001）：

住院天数（r≈-0.24）：住院时间越长，盈亏越差

药占比（r≈-0.22）：药品费用占比越高，盈亏越差（超30%后多为亏损）

总费用（r≈-0.20）：总费用过高会拉低盈亏

3\. 弱相关因素（|r|<0.1，p>0.05或接近显著）：

年龄（r≈-0.03）：对盈亏影响极小

检查占比（r≈-0.05）：影响相对有限

性别（需转换为数值后分析，通常影响不显著）

系列文章

<2>[医院运营管理之病种盈亏探索分析一 描述统计](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487874&idx=1&sn=c8d5a8def12acbd7ead428a5afd9250a&scene=21#wechat_redirect)

<1>[医院运营管理之病种盈亏探索分析—概述](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487860&idx=1&sn=47571ccc4e2ff4c5c15f8d4be0d2e3ff&scene=21#wechat_redirect)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言