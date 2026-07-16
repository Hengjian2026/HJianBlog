---
title: "R软件ggplot2包作图 2 绘制散点图"
date: 2026-01-01
draft: false
tags: [医院运营, 数据分析]
categories: ["医院运营"]
---

R软件ggplot2包作图:2.绘制散点图
=====================

原创 恒健知行 2025-11-02 16:43 安徽

> 原文地址: [https://mp.weixin.qq.com/s/krycLQUqWQYvzVf2TmuKQQ](https://mp.weixin.qq.com/s/krycLQUqWQYvzVf2TmuKQQ)

#数据可视化教程#ggplot2#散点图#医院运营#分析报告  
利用ggplot2包绘散点图：  
图1：默认效果  
图2 ：调整比例  
图3：调整坐标轴，加坐标轴标题  
  
系列手册  
[R软件ggplot2包作图:1.官网手册](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487010&idx=1&sn=177faea80f5a2074d0ba2e04ff90b206&scene=142#wechat_redirect)  
[医院运营管理工具-基于R的统计计算](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486958&idx=1&sn=f4c087f72d6edaaba2963ab775c34e3d&scene=142#wechat_redirect)  
[医院运营管理工具--R数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486941&idx=1&sn=d13fdca8468e08af974cfe26cc78e37b&scene=142#wechat_redirect)  
[Part1-医院运营管理之工具篇《R、Rstudio和Deepseek》](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486879&idx=1&sn=90c7a6b6b606431a732fb9d0ecd8fb0f&scene=142#wechat_redirect)  
  
实践应用  
[医院运营管理之期初期末比较（斜坡图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486964&idx=1&sn=09d02602b59ec1d91778a3e5db182d56&scene=142#wechat_redirect)  
[医院运营病种视角的多维度分析（驾驶舱仪表盘)](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486889&idx=1&sn=99eef95b58dda6d31845390a1a5a0879&scene=142#wechat_redirect)  
[医院运营管理病种与科室关联展示（组合图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486847&idx=1&sn=0c981e69f60b726660ac9897d2342cc2&scene=142#wechat_redirect)  
[医院运营疾病谱分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486815&idx=1&sn=b94f41396d12c52f13400cde64958c91&scene=142#wechat_redirect)  
[病种分布可视化（旭日图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486809&idx=1&sn=5423fe9b340baea81273c1a163ba31c3&scene=142#wechat_redirect)  
[病种费用分布可视化（云雨图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486791&idx=1&sn=6428ead198c1ab91ea49131c525f196f&scene=142#wechat_redirect)  
[医院运营分析科室病种比较（森林图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486754&idx=1&sn=54c5b33b6f1dd9c122add9fc28e6d824&scene=142#wechat_redirect)  
[住院患者费用极高病例影响因素图示（森林图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486772&idx=1&sn=5392f639dfe5c2e43f9d68847e32ca16&scene=142#wechat_redirect)  
[科室运营分析之病种动态分析（动态条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486725&idx=1&sn=6ed61c865f257f2c0ddef4a20089469c&scene=142#wechat_redirect)  
[医院运营分析之病种费用分组比较（小提琴图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486719&idx=1&sn=5fcc2823a21332a7bf0dc4fb829bc4f0&scene=142#wechat_redirect)  
[病种运营分析之优势科室展示（三维气泡图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486701&idx=1&sn=ac0e486ab83e6578abaf82be73e256d1&scene=142#wechat_redirect)  
[科室运营分析之优势病种挖掘（矩阵树图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486700&idx=1&sn=52796a0574a3dde2e544ba789bd77522&scene=142#wechat_redirect)  
[医院运营管理之差距分析（进度图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486685&idx=1&sn=b94ea7e23013624c07eadabdc6a8467c&scene=142#wechat_redirect)  
[医院运营管理之分组比较（堆叠条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486669&idx=1&sn=885a691da1da1b87853dbedb140f1e6c&scene=142#wechat_redirect)  
[医院运营管理之分组比较（金字塔图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486668&idx=1&sn=378478a1331f2c52c2be7477451a61e3&scene=142#wechat_redirect)  
[集团医院月度运营分析报告模版](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486654&idx=1&sn=a1a705c280d67c3daaccff5eb0a0cc5f&scene=142#wechat_redirect)  
[数据驱动质量指标质控方法（控制图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486613&idx=1&sn=1d9b40fdfece0fd7021b9c6a2566dca8&scene=142#wechat_redirect)  
[医疗质控分析之基于数据的异常值查找（箱线图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486597&idx=1&sn=4ebb5e05f49f5546114fba08722d660c&scene=142#wechat_redirect)  
[巧用雷达图进行科室间的指标比较分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486591&idx=1&sn=0240f03af6b3aead46486ccdb3805da0&scene=142#wechat_redirect)  
[病种分析的柱形图、折线图表达](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486566&idx=1&sn=0e75826f701cacc5fbbbfa393667b4ca&scene=142#wechat_redirect)  
[运营分析方法之波士顿矩阵图---Deepseek帮忙还需要其他工具吗？](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486543&idx=1&sn=1f91c6278a6019024775b5ddbc30968c&scene=142#wechat_redirect)

![图1](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTrhIhdV7awcwoXHqHeVuyiawFtQvIsX1pmc7hY0goMZgNwWibc9CmXpt77fKNngx84XpK1VicZtFtCw/0?wx_fmt=png&from=appmsg)

图1

![图2](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTrhIhdV7awcwoXHqHeVuyiaHXcMiaYgQ1N4s0e6a6YBXpf2rUtj7wKiapoiaMqQWiaqUYdvdTByia6GBJw/0?wx_fmt=png&from=appmsg)

图2

![图3](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTrhIhdV7awcwoXHqHeVuyiatBiaZvA4VsY9o9BdHk3Iia4zat7SCnCO2pxrAzSRXFObQ9m1Kxcc3mDA/0?wx_fmt=png&from=appmsg)

图3

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言