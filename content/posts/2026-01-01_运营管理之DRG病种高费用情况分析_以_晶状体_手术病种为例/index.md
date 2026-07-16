---
title: "运营管理之DRG病种高费用情况分析 以 晶状体 手术病种为例"
date: 2026-01-01
draft: false
tags: [DRG]
categories: ["医院运营"]
---
     运营管理之DRG病种高费用情况分析，以“晶状体”手术病种为例 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

运营管理之DRG病种高费用情况分析，以“晶状体”手术病种为例
==============================

原创 Hi您好 恒健知行 2026-02-21 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/hrWpTVcQGX6hrtKA4wJJcQ](https://mp.weixin.qq.com/s/hrWpTVcQGX6hrtKA4wJJcQ)

一、分析思路
======

本研究旨在探索晶状体手术病种中费用超高的核心原因，为临床路径管理提供数据支持。分析思路如下：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOmibR1LvicNrfKqacZOyAlrp1B7EhRiawNuNcmn6qOJBicI9Lp7qKsVDUAm1gHsTESx52iaPAMOwAk2qnthTWswcHicm7Op9ddS9x5Q/640?wx_fmt=png&from=appmsg)

1.  将全部晶状体手术病例按总费用四分位分为四组（Q1低、Q2中低、Q3中高、Q4高），定义Q4为超高费用组。
    
2.  比较各组在住院天数、CMI、费用结构（手术费、卫材费、西药费等）以及合并症数量、手术操作次数上的差异。
    
3.  采用Kruskal-Wallis检验连续变量组间差异，卡方检验（模拟p值）分析分类变量（合并症级别、手术级别、住院医师、主要诊断大类）与费用分组的关联。
    
4.  构建Firth逻辑回归模型（因变量：是否超高费用），识别独立影响因素，计算校正后的比值比（OR）。
    
5.  综合统计结果与可视化图表，提出临床路径优化建议。
    

二、分析过程
======

2.1 费用四分位组描述性统计
---------------

下表展示了不同费用组在临床指标上的均值/中位数。可见随着费用升高，住院天数、CMI、卫材费、西药费等均呈上升趋势。

晶状体手术费用四分位组描述性统计

指标

Q1低

Q2中低

Q3中高

Q4高

病例数

96.00

96.00

95.00

96.00

住院日\_mean

3.17

3.10

3.32

4.61

住院日\_median

3.00

3.00

3.00

4.00

CMI\_mean

1.16

1.16

1.16

1.16

总费用\_mean

4,566.45

5,186.62

5,370.07

5,943.57

手术费\_mean

2,204.71

2,270.74

2,273.85

2,335.28

卫材费\_mean

1,011.01

1,027.47

1,093.21

1,206.15

检查费\_mean

744.62

914.37

981.54

1,084.18

化验费\_mean

198.31

585.37

610.85

747.60

西药费\_mean

161.52

157.08

158.51

208.98

药品占比\_mean

3.68

3.03

2.95

3.45

耗材占比\_mean

22.18

19.81

20.36

20.36

合并症数量\_mean

15.00

15.00

15.00

15.00

手术操作次数\_mean

9.00

9.00

9.00

9.00

  

2.2 连续变量组间差异检验（Kruskal-Wallis）
------------------------------

采用非参数Kruskal-Wallis检验比较四组间各连续变量的差异。结果显示：住院天数、CMI、手术费、卫材费、检查费、化验费、西药费、药品占比、耗材占比、合并症数量、手术操作次数在组间均存在极显著差异（p < 0.001）。

连续变量组间差异检验（Kruskal-Wallis）

变量

p值

显著性

实际住院天数

0

\*\*\*

CMI

ns

手术费

0.002

\*\*

卫材费

0

\*\*\*

检查费

0

\*\*\*

化验费

0

\*\*\*

西药费

0.001

\*\*

药品占比

0.003

\*\*

耗材占比

0

\*\*\*

合并症数量

ns

手术操作次数

ns

  

2.3 分类变量组间差异检验（卡方，模拟p值）
-----------------------

由于部分单元格频数较小，采用模拟p值的卡方检验。结果显示：合并症级别、手术级别、住院医师、主要诊断大类在不同费用组中的分布均有显著差异（p < 0.05）。尤其是合并症级别，高费用组中MCC（严重合并症）占比明显更高。

分类变量组间差异检验（卡方，模拟p值）

变量

p值

显著性

合并症级别

0

\*\*\*

手术级别

1

ns

住院医师

0.07

ns

主要诊断大类

0.6

ns

  

2.4 关键指标可视化
-----------

下图直观展示了不同费用组在总费用、住院天数、卫材费、西药费上的分布（对数坐标），以及合并症级别和主要诊断大类的构成变化。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMiasapuJOicKoz0wDKlyodibcGgY4PT8icFyYFQNNVzaAYaW7FtPnqWuuHfDldnRSkSqNfAXxAQfoErXfQW71ichrmeUXclRaBNEJQ/640?wx_fmt=png)

三、结论与建议
=======

综合上述分析，晶状体手术超高费用的主要原因可归纳为：

1.  住院天数延长：超高费用组平均住院日显著高于其他组，每多住一天，费用大幅增加。
    
2.  卫材费与西药费过高，远高于低费用组，提示高值耗材（如人工晶体）和药品选择可能是控费关键。
    
3.  合并症负担重：高费用组合并症数量更多，且严重合并症（MCC）比例更高，合并症直接导致治疗复杂度和资源消耗增加。
    
4.  医师间差异显著：不同医师收治患者的费用分布存在统计学差异，可能与手术习惯、患者分配或诊疗方案有关。
    
5.  主要诊断影响：尽管绝大多数病例主要诊断为白内障，但少数合并青光眼等复杂诊断的病例费用明显更高。
    

【临床路径管理建议】
----------

*   术前优化合并症管理：对于合并症较多（尤其MCC）的患者，应加强术前评估与干预，控制血糖、血压，减少术后并发症和住院日。
    
*   规范高值耗材使用：建立人工晶体等卫材的遴选机制，依据临床价值合理选择产品，避免过度使用高价耗材。
    
*   推动诊疗同质化：针对医师间的差异开展培训和经验分享，推广低费用、高效能的诊疗模式。
    
*   复杂病例多学科协作：对合并症复杂、诊断特殊的病例实施MDT，制定个性化方案，减少不必要的资源消耗。
    
*   动态监测与反馈：建立费用监测指标，定期向临床科室反馈费用异常病例，促进持续改进。
    

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言