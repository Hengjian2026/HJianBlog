---
title: "面向亏损病种的多维度分析 以ES35为例"
date: 2026-01-01
draft: false
tags: [DRG, 绩效]
categories: ["医院运营"]
---
     面向亏损病种的多维度分析，以ES35为例 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

面向亏损病种的多维度分析，以ES35为例
====================

原创 Hi您好 恒健知行 2026-04-21 07:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/SLzFGUAVFCrDKxZqcWoI-Q](https://mp.weixin.qq.com/s/SLzFGUAVFCrDKxZqcWoI-Q)

[《1》面向具体病种的运营分析---以ES33呼吸系统感染/炎症，伴并发症或合并症为例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247490221&idx=2&sn=3b0c7e1abb0ce86240a08845d3d89007&scene=21#wechat_redirect)
=================================================================================================================================================================================

  

===

一、总体分析思路
========

1.  分析目标：深入剖析DRG病组ES35（呼吸系统感染/炎症，不伴严重并发症或合并症）的亏损原因，挖掘低倍率病例特征，为医院精细化管理提供数据支撑。
    
2.  数据范围：某时间段内所有出院病例中DRGS编码为“ES35”的病例，共计XXX例（实际数量见后表）。
    
3.  分析框架：首先通过总体指标概览了解亏损规模；然后从住院天数、倍率分布、诊断亚型、科室差异、月度趋势等维度进行描述性分析；接着深度挖掘亏损原因，聚焦低倍率病例、倍率分段贡献、异常值检测以及科室-诊断交叉作用；最后基于数据结论提出改进建议。
    

二、核心指标概览
========

指标

数值

总病例数

2345

总亏损额

180.6万元

亏损比例

83.6%

平均倍率

1.531

中位住院天数

6

平均费用

2,512元

  

注：亏损额为负偏差值（实际费用低于支付标准）的绝对值总和。

三、基础描述分析
========

3.1 住院天数分布
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPByOY9yAPyUZ7j4lLYKzyUPyicJE873QUNs15G786ht8QQic3ua2FETdppx4mNzziasYm0L5JZXyTs7VZRA7cYcAECQ4XMj4iawibg/640?wx_fmt=png)

上图显示ES35病种住院天数呈右偏分布，多数病例集中在3-7天，中位住院天数为XX天（图中标注）。存在少量长住院日病例（>15天），可能是病情复杂或合并症未正确编码导致误入该DRG组，需逐例审查。

3.2 倍率分布
--------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPKWhtXiazOiayicDIhXrSnS50EQCxqLgaauFcd2ZnwJIvUazIhfukvsF2K68uJFyITkMSmgpdNXw6Jic8el2GnKs5sWvlvV1WibHAs/640?wx_fmt=png)

倍率（实际费用/支付标准）均值为1.531，整体偏低。大部分病例倍率小于1（处于亏损区），尤其倍率<0.8的病例占比较高，提示存在大量“低倍率亏损”病例。这是导致该病组整体亏损的直接原因。

3.3 住院天数与倍率关系
-------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNYSumJSEmiaAPHXlZQLbumUzlicSWWGYic86yYSeVkVLtTtic0np5kHHhoptSfIfD2YIu3CXyT3srW5jvC4k8bwiandH2Ux3MxRLQM/640?wx_fmt=png)

散点图显示住院天数与倍率呈正相关（回归线向上倾斜）。但即使住院天数较短的病例，倍率也普遍低于1，说明短住院日病例的支付标准可能偏高，或诊疗过程过于简单却消耗了较高的支付标准。

3.4 诊断亚型效率矩阵
------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO5P3jJ4uicSbXic3F8EdK3J0lvkNLByETxVRSjUE2XuDwiaibw4W7DmQOKxOXvWlXNqAfTFUEA4PR1BR2KbqnSx66Ntqzx1872AAs/640?wx_fmt=png)

气泡大小代表病例数，颜色深浅代表亏损比例。图中可见“支气管肺炎/支气管炎”和“社区获得性肺炎(非重症)”病例数最多且亏损比例高（深红色），平均住院天数短但倍率极低，是亏损重灾区。“病毒性肺炎”平均住院天数较长，但倍率接近1，亏损比例较低。

3.5 科室亏损比例排序
------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOBJXPtEOt7iaGiaDNhL1F5hkSk9KRw2yIic3YGYSQnOIYHM9XFN2ibAY7iaZ4tkHNDYRlWMYW1s8ib8cwSYrHHcdftoF4oVvudmaQeE/640?wx_fmt=png)

不同科室收治ES35病种的亏损比例差异显著。亏损比例最高的科室为神经内科专业（95%），可能与该科室收治更多轻症患者或诊疗路径不规范有关。排名前五的科室应作为重点干预对象。

3.6 月度趋势
--------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNYQ1nbp6z0QVNWzHH9ZX2rfVxq9FR1R6DlD4rTibF2Tzh2JrcgKzUt7VFCdxGX3eibMA0HR53Sy4D8tC49xoHRVWBIIHgQ07kRE/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOl0LiaibsRaQCiccvRGdcbUXaFXTMibVskmWc5biayPVxIM6BVPiblQyQ0MyoPagXIv1tmpGNzKLT8c7zQxECKMEUx97RAKdv2ibbMcg/640?wx_fmt=png)

病例数在X月达到高峰（可能与季节性疾病流行有关），平均倍率则呈现波动下降趋势。需关注倍率持续走低的月份，是否存在支付标准调整滞后或诊疗行为变化。

四、亏损原因深度挖掘
==========

4.1 低倍率病例（倍率<0.8）特征
-------------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZN07zgCIGFIFU7HjMGBIMKWMmPkDC0MztpvbLBfiak0IkV7mialHW3jqJktfJOgiaouNibcSolX8TyZPvhA1ceZc4ialyI9Rgluc3Mw/640?wx_fmt=png)

低倍率病例占所有病例的4.3%，其住院天数集中在3.4天左右（短住院）。这些病例实际费用远低于支付标准，导致医院从DRG支付中“盈余”反而变成了“亏损”（因为支付标准是基于平均资源消耗制定的，过低费用可能意味着过度治疗或编码问题）。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMsqkBXbDzv1n8By0HQFYQbRO4zd4CUlqicoFlmMOvfrzBW2UPgVSqXRsJ2lJU5YCzw9gpEtq01MHvBLiaNxDibLTpicvAB3VFfW8g/640?wx_fmt=png)

低倍率病例主要诊断为“支气管肺炎/支气管炎”和“社区获得性肺炎(非重症)”，这两个亚型的疾病严重程度较低，本应进入更低权重DRG组，却误入ES35组（可能是编码时未记录合并症或并发症）。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMQJRBTrSGt2UIvrCNczT4rrm5OribdibLbvHeQJLwgkJqlrSgHHJX7LwRhQOPtZtaV0ULpMyU9KCEGE5e1jSdTgwTTrAiaBQ2Wib4/640?wx_fmt=png)

低倍率病例主要集中在少数科室（如儿科、呼吸内科），这些科室应重点优化轻症患者的住院标准或推动日间病房模式。

4.2 倍率分段与亏损贡献
-------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZO6ROTR0kLNJup72ibYoNrH0a3OCpg30qshiaBmRxO9F1UvJIxzQib6GsHFiaZFG4QrCqeFnicf0TnhfSkMDRicqkUjjWTJTNnicbYlxE/640?wx_fmt=png)

倍率<0.6的病例虽然数量不多（89例），但每例平均偏差值极低，贡献了总亏损额的-1.9%。倍率0.6-0.8段病例数量最多，是亏损的主要来源。建议重点针对倍率<0.8的病例进行编码核查和临床路径优化。

4.3 异常值检测
---------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNtwB2JibBlvibEUkgUSPicrFqbBF6EFIOIK30IBNg5q7YzicXlFhEiaEXxtXLCDjCkiaib3aUNC89eApxKw3T0uAsh403B9FrroKQDRk/640?wx_fmt=png)

住院天数超过10天的异常病例共96例，主要分布在“病毒性肺炎”和“其他”诊断亚型。这些病例可能存在未记录的严重并发症，导致住院时间延长，应复核编码是否应进入更高权重的DRG组。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPrlbryvfzHruucWbjvRibeZYMicGQZB3SCDKYdARq4x7ViaUqmcLjpyvI2Aon1L6ZcKql3mmbaHya8puwnNboZsKxTEmYoBaZ35U/640?wx_fmt=png)

费用超过4.7K元的异常病例共88例，同样集中在病毒性肺炎。高费用病例可能是真正的资源消耗高值病例，但当前支付标准未能覆盖，需分析费用构成（药品、耗材、检查）是否合理。

4.4 科室-诊断亚型交叉热力图
----------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZON5GeSYvpA5MMqJzrbB5wtic1mC4LGwXVzvFQvboE9wicZoS5Vw8CxtAsOXiaTvsniaOThkc5Ric2z10BIerv00eTMvEYHpp4oWVT4/640?wx_fmt=png)

热力图中红色区域表示平均倍率显著低于1（亏损严重）。例如，某科室收治“支气管肺炎”时的倍率仅为0.65，而同一诊断在其他科室可能达到0.85。提示不同科室对同一诊断的诊疗效率和编码质量存在差异，可通过标杆对比推动同质化。

五、结论与改进建议
=========

5.1 核心发现
--------

1.  ES35病组整体亏损严重，亏损比例达83.6%，平均倍率仅1.531。
    
2.  亏损主要来源于倍率<0.8的低倍率病例，占比4.3%，集中于“支气管肺炎/支气管炎”等轻症亚型。
    
3.  科室间亏损比例差异大，最高科室亏损比例达95%，最低仅69.2%。
    
4.  存在96例长住院日异常值和88例高费用异常值，提示部分病例可能误入该DRG组。
    

5.2 改进建议
--------

● 建议一：优化低倍率病例管理
---------------

*   对倍率<0.8的病例进行逐例编码复核，重点检查是否遗漏了合并症/并发症（如慢性阻塞性肺病、心衰等）。若无严重合并症，应考虑是否应进入权重更低的DRG组（如ES33）。
    
*   对于真正轻症的患者，推广日间病房或门诊治疗模式，减少不必要的住院。
    

● 建议二：规范诊疗与临床路径
---------------

*   针对亏损比例高的科室（如儿科、呼吸内科），制定ES35病种的标准化临床路径，控制不必要的检查、药品和住院天数。
    
*   引入倍率预警机制：当病例费用低于支付标准0.8倍时，系统自动提醒医生和编码员审核诊断与操作编码。
    

● 建议三：加强编码员培训
-------------

*   开展DRG编码专项培训，确保主要诊断、其他诊断和手术操作的正确选择，避免“低码高编”或“高码低编”。
    
*   建立编码-临床沟通机制，对于住院天数或费用异常的病例，编码员主动与主管医生沟通确认。
    

● 建议四：建立数据监测与反馈体系
-----------------

*   每月生成ES35病种运营仪表盘，监测倍率分布、科室亏损排名、异常病例数量等关键指标。
    
*   将亏损控制指标纳入科室绩效考核，激励临床主动优化。
    

● 建议五：与医保部门协商支付标准
-----------------

*   若经过规范诊疗和编码后，仍发现大量病例费用低于支付标准，可收集数据向医保部门反映当前支付标准可能偏高，申请适当下调权重或支付标准，以避免医院因“过度盈余”反而被扣减（部分地区对低于支付标准一定比例的病组会进行调减）。
    

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言