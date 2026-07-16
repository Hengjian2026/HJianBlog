---
title: "医院运营管理之病种盈亏探索分析一 分类变量分析 比较科室 病种 患者特征 住院天数 费用结构的病种盈亏对比"
date: 2026-01-01
draft: false
tags: [DIP, 医院运营]
categories: ["医院运营"]
---
     医院运营管理之病种盈亏探索分析一 分类变量分析，比较科室、病种、患者特征、住院天数、费用结构的病种盈亏对比 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理之病种盈亏探索分析一 分类变量分析，比较科室、病种、患者特征、住院天数、费用结构的病种盈亏对比
=====================================================

原创 Hi您好 恒健知行 2025-12-09 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/O\_WrapVmVv-hN8chdYLpVw](https://mp.weixin.qq.com/s/O_WrapVmVv-hN8chdYLpVw)

1分类变量概述
=======

描述性统计或者相关分析研究的都是定量变量，也是数值型的因素。但现实业务中我们知道，不同的科室收治的疾病不同，疾病严重程度不同，其对患者费用存在显著影响。例如神经外科、心脏外科收治一些重大手术患者，而产科、普外科收治的手术患者手术等级相对低些。除了科室，按病种付费的背景下，病种的病案分数或DIP标准分值不同，也会影响患者费用等。

2.常见分类变量对盈亏的影响探索
================

2.1科室盈亏排名
---------

本文研究重点是盈亏指标，我们可以对样本数据按盈亏对所有科室进行排名。为了显示效果，我们突出显示排名靠前、排名靠后的各10名科室。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTOcNbTfoD2UFgRXnk8blPmSCddzibTAjbQhTAQ91FzhUvuMdPYYax1qDFt7mkSu5VSasAem0Eopow/640?wx_fmt=png)

盈利科室和亏损科室在相关定量影响因素上或许存在差异，以“眼科”和“心血管内科一病区”为例：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTOcNbTfoD2UFgRXnk8blPmLvr970F8iaweKKticPvGnHibxDQ5pwYe9ds8Ym97TcBGh00NLrIgUYDwQ/640?wx_fmt=png)

2.2患者年龄、性别、付费方式等
----------------

患者年龄是定量变量，我们可以将其转为分类变量，如将0~6岁的定义为儿童、7~17岁定义为少年、18~40岁定义为青年、41~65岁定义为中年、66以上定义为老年。样例资料中各年龄段的患者的盈亏情况也可以统计出来，通过样例数据可以看出中年人这个年龄段的患者盈利相对较少。而17~40岁年龄段的患者对医院盈利情况最为有利。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTOcNbTfoD2UFgRXnk8blPmvelcA3Bljd6nBrhxfZqo2hXicib1lpIT11g1HNsbrjLyWnOmAQFk74LQ/640?wx_fmt=png)

参考年龄分类变量，对于性别、付费方式分类变量，我们也可以统计出男、女不同的盈亏情况，及对不同付费方式盈亏情况进行比较，如下图，大体可以判断女性患者容易导致亏损。医保付费方式中城乡居民医保容易亏损。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTOcNbTfoD2UFgRXnk8blPmB1ialDfPeaz1ePaubtgrnLwVHPtNtD8WKFW9oXpX4rouWoIia7OuKRjA/640?wx_fmt=png)

2.3患者住院天数
---------

同样的操作方式，将患者住院天数进行分类处理。假设将住院天数做分组，将其分为1-3天、4-7天、8-14天、15-30天、>30天几个组别。大体可以绘制不同住院天数分组的盈亏金额、盈亏率（盈利患者占组内所有患者比例）。样例数据结果表明超长住院的患者容易导致亏损，并且金额不小。因此控平均住院日对医院的盈亏是非常有利的。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTOcNbTfoD2UFgRXnk8blPmW6STs9u2wY3r4llm6QYUMPLgWMwCynjduibibcnAicSCbibt7rqzUfuBug/640?wx_fmt=png)

2.4是否手术和CMI
-----------

手术患者大体来说对盈亏有利。对于CMI指标来说是一个矛盾体，一方面CMI越高总体上可以给医院带来盈利，但亏损率也同时很高。这说明CMI高的代表了收治了高难度病种的患者，但高难度病种也容易出现亏损，需要格外的关注、质控，或许可以带来更高的盈利。

CMI很低的患者对于医院来说总体是亏损的，亏损率也不低。这部分患者如果留在基层对大医院总体是有利的。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTOcNbTfoD2UFgRXnk8blPmkmibqehRt9PuLL1dCDq5WRmLlzibUNQwBpUsQakTOooQGlticjhXWHbLg/640?wx_fmt=png)

2.5费用结构
-------

药占比、耗材占比是目前最常规的质控指标，药品、耗材零加成说明这两类费用不再带来利润，但它们又是诊疗过程中必不可少的。对药占比、耗材占比进行大体的分类，不同比例的药占比、耗占比的患者群体对盈亏也有不同的反馈。例如，药占比超过20%，医院会亏损，药占比要高平均亏损金额最多；样例数据中耗材占比比较特殊，50%~60%的耗材占比容易亏损。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTOcNbTfoD2UFgRXnk8blPmAvfVa0jRxVHwsT1eceo8ypXzsPMAmYgA2vDzWega01enYmmZVrsPsw/640?wx_fmt=png)

系列文章

<3>[医院运营管理之病种盈亏探索分析一 相关分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487907&idx=1&sn=3a54600291f91eb06967b7a7fd7c8ab6&scene=21#wechat_redirect)

<2>[医院运营管理之病种盈亏探索分析一 描述统计](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487874&idx=1&sn=c8d5a8def12acbd7ead428a5afd9250a&scene=21#wechat_redirect)

<1>[医院运营管理之病种盈亏探索分析—概述](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487860&idx=1&sn=47571ccc4e2ff4c5c15f8d4be0d2e3ff&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言