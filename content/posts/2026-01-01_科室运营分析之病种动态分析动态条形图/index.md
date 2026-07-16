---
title: "科室运营分析之病种动态分析（动态条形图）"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 数据分析, 智慧医院]
categories: ["医院运营"]
---
     科室运营分析之病种动态分析（动态条形图） \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

科室运营分析之病种动态分析（动态条形图）
====================

原创 Hi您好 恒健知行 2025-10-13 05:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/kzyVZ2LR9CgVyELsr0292g](https://mp.weixin.qq.com/s/kzyVZ2LR9CgVyELsr0292g)

目前很多医院尤其是大型三级医院都有建设信息化系统，BI可视化系统、运营决策分析系统。这类系统大部分呈现的是静态数据，医院业务人员依然需要根据系统提供的数据进行二次分析。

根据最近的公众号文章发现，分析报告文章对大家特别有用，数据上表现的也特别明显——3篇分析报告阅读量上“万”阅读人次了。

与医院BI系统对比，复盘一下可以发现，分析报告中的统计图表为什么对大家有用？它们有什么特征呢？不难发现：

（1）分析报告中的图表大都涉及排序、对比。这类图表可以直观的给出分析结论，提供直观的数据分析结果才是有价值的分析。

（2）分析报告是一个整体全貌。分析报告虽有专题报告，但基本反映了该专题的全貌，多个维度进行分析。总体上根据一份分析报告可以对一件事情定性。

（3）分析报告图文并茂，尽管有了内容，但视觉上作用不可忽视。

紧接排序、对比，数据直接反映结果的理念，本文介绍一个动态条形图。网上比较流行的省会城市GDP排行榜动态图，这个图非常直观的反映了各个省会城市这么多年来的发展。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibRjPX5yj10icj8L7sDdTcdnRmpicUYV7YNbIlwcRYS3BW5vB1qgbLaia6WuQGO2c9kicJUVLRdm3atYPw/640?wx_fmt=png)

上述动态图，在医院科室运营分析中同样可以发挥出重要的价值。在DRG/DIP支付改革的背景下，利用动态条形图对各科室近年来每个月病种的CMI、成本、费用、平均住院日，无论是时间消耗指数还是费用消耗指数指标进行动态比较。

1.样例数据

年月

病区

CMI

DRGS组数

总权重

病例数

平均费用

平均药费

耗材费

平均住院日

费用消耗指数

时间消耗指数

低风险死亡率

中低风险死亡率

2022年1月

乳腺外科

0.72

35

232

58

13323

3083

362270

6.5

1.01

0.96

0.11%

0.55%

2022年1月

小儿外科

1.15

38

132

39

9734

3298

521679

6.3

1.09

1

0.03%

0.67%

2022年1月

心胸外科

1.87

89

529

49

28812

8478

1565926

11.8

0.92

1.02

0.19%

1.19%

2022年1月

手外科

0.94

39

170

49

8895

3073

499478

6.8

1.12

1.05

0.08%

1.02%

2022年1月

整形外科

0.68

55

207

53

10928

2667

695478

5.6

1.11

1.03

0.31%

0.26%

2022年1月

普通外科

1.12

48

320

69

15825

5017

1067713

10.2

1.06

0.99

0.12%

0.34%

2022年1月

泌尿外科

0.68

54

149

44

10571

4087

440698

5.9

1.04

0.9

0.31%

0.04%

2022年1月

烧伤外科

0.85

42

195

32

10683

2552

639520

4.8

1

1.01

0.09%

0.63%

2022年1月

甲状腺外科

0.66

40

188

50

8598

3834

448005

5.1

0.94

1.14

0.28%

0.23%

2022年1月

神经外科

1.93

76

567

43

31879

8898

1692700

10.9

0.97

1.17

0.48%

1.31%

2022年1月

肛肠外科

0.61

26

123

44

12447

2625

493262

5.8

0.9

0.96

0.07%

0.14%

2022年1月

肝胆外科

1.19

45

280

57

14837

3803

987805

7.1

0.95

0.95

0.04%

1.29%

外科系统病种模拟数据.csv样例数据形如上表，需要包含近年每个月份的统计数据，度量指标CMI、DRGS组数、总权重、病例数、平均费用、平均药费、耗材费、平均住院日、费用消耗指数、时间消耗指数、低风险死亡率、中低风险死亡率可以根据需要替换。

2.提示词

同样的原因，数据量大了Deepseek没法直接绘制完整的图形（预算足的使用付费版，或者本地化部署大模型忽略）。曲线救国的方式，让Deepseek给出绘图代码。

根据提供的样例数据，请使用 R 语言生成各科室CMI动态的变化趋势条形图，要求：

    1.基于包含‘年月’、‘科室’、‘CMI’字段的数据集，绘制动态条形图，图表需按月份动态展示，每个月份显示所有科室的 CMI 数值，条形长度对应 CMI 值大小

3.分析结果

动态条形图可以直观地看出各个科室的变化。静态的报表智能反应当前某个科室、这个月份表现虽不错但也不耀眼，动态比较则可能发现原来该科室是从倒数第一爬上来的，比如示例数据中的“肛肠外科”。

![](https://mmbiz.qpic.cn/mmbiz_gif/IvumIlxgDibRjPX5yj10icj8L7sDdTcdnRHAkicD1xXqCBn8dN6Xy3Vchu4wtCAKM0kgHI4qYsUMia7RDG5GQKubKQ/640?wx_fmt=gif)

系列文章：

[智慧医院管理案例（精选）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486555&idx=1&sn=5211f8f1e9c23d70afa7fc0c8795dfad&scene=21#wechat_redirect)

[集团医院月度运营分析报告模版](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486654&idx=1&sn=a1a705c280d67c3daaccff5eb0a0cc5f&scene=21#wechat_redirect)

[医院运营月度分析报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486530&idx=1&sn=ecd4df8e0efc030c8a5218687d847673&scene=21#wechat_redirect)

[医院质量与安全管理分析报告样例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486458&idx=1&sn=89dd4becee04413de04026dbd1a8188f&scene=21#wechat_redirect)

[病种分析统计样表](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486353&idx=2&sn=fa6889dc1ba36a85579cc7f82a28ef3e&scene=21#wechat_redirect)

[医疗指标目标管理的图形化方法](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486331&idx=1&sn=f843230259af2a6c65ff5b9bc75db6a8&scene=21#wechat_redirect)

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