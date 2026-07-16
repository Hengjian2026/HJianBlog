---
title: "医院运营管理之医用耗材管理数据分析示例"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 数据分析, 绩效]
categories: ["医院运营"]
---
     医院运营管理之医用耗材管理数据分析示例 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理之医用耗材管理数据分析示例
===================

原创 Hi您好 恒健知行 2026-02-02 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/a70ABuoQbfQH7VhdN5bDSQ](https://mp.weixin.qq.com/s/a70ABuoQbfQH7VhdN5bDSQ)

本文模拟医用耗材管理相关数据（含医保合规、DRG/DIP用耗、主诊组绩效等场景），通过可视化分析方法介绍常见的医用耗材管理中常见的数据分析方法：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTniaxicN0uysk0WvHnx4HSyZZtw4ZFXc68g9QoQbsJ4XESHRqKBYv3pREn1JXZWgPapfhkIOnS4iaHA/640?wx_fmt=png&from=appmsg)

一、医保合规性异常识别分析
=============

识别医保合规风险类型分布，聚焦串换收费、重复计费等重点问题，为管控提供数据支撑。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSGqb4lgmH88NJkiaEmxT8oUlsSPovZpyzTqYDSoRcXQjibWiaiaUmpaug2ZvSRqxkAKeR47RXebyYqRw/640?wx_fmt=png)

结果解读
----

1\. 异常类型分布：串换收费（235条，25.1%）和重复计费（189条，20.3%）为主要合规风险，与业务场景中"不合理收费集中于串换品规及重复计费"的结论一致。     

2\. 风险优先级：串换收费占比最高，需优先加强耗材领用与计费的同步校验，通过收支配比监测雷达追溯问题科室与品种。          

3\. 管理建议：针对库存不符（168条）和领用异常（142条），需优化库存管理流程，实现"账实一致"；正常记录占比24.3%，整体合规率有待提升。

二、DRG/DIP病组用耗分析
===============

分析不同DRG病组的费用结构与耗材占比，识别高耗病组，为标准化用耗方案制定提供依据。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSGqb4lgmH88NJkiaEmxT8oUYxxqs72IUdfj7xicpTKWcZ9Zn4uHeFoj7wAuRSzVR5QzibXdnSZgGRdw/640?wx_fmt=png)

结果解读
----

1\. 高耗病组识别：FM13（心血管介入手术）和FL29（心脏射频消融）耗材占比超70%，是DRG成本管控的核心靶点；BC19（颅内血管手术）耗材占比76.64%，且单病例费用高，需重点优化。          2. 低耗病组特征：ND15（原位癌手术）耗材占比仅25.68%，成本压力较低，可作为标杆病组推广标准化用耗。          3. 管理建议：针对高耗病组，建立支架、球囊等核心耗材的使用基准；通过对比高/低费用组用耗差异，优化品种选择（如优先选用性价比高的耗材型号）。

三、主诊组用耗绩效监测
===========

从病种到医疗组进行深化分析，以FM13病组为例，监测主诊组用耗与基准值的差异，评估绩效水平，引导临床合理用耗。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSGqb4lgmH88NJkiaEmxT8oU2x1NERrCJxI3EKbNzyqWAibGyNxKcENqGAKe3SLyOpQKSPtYicSgSURA/640?wx_fmt=png)

结果解读
----

1\. 优秀主诊组：曹-942组（差额-216.9万元）和唐-860组（差额-21.92万元）用耗低于基准，绩效优秀，其用耗方案可作为标杆推广。         

 2. 需改进主诊组：梁-538组（差额+38.61万元）和肖-803组（差额+3.23万元）用耗超支，需开展专项培训，优化耗材使用强度。          

3\. 绩效引导建议：将用耗差额纳入主诊组KPI考核，建立"标杆组-普通组-超支组"的分级管理机制，推动整体用耗效率提升。

四、医用耗材监管指标趋势分析
==============

以重点科室心内科为例，跟踪耗占比、均次材料费等核心指标的月度趋势，及时预警异常波动。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSGqb4lgmH88NJkiaEmxT8oU79GV9Cn6u2yPDOyhoQQHUdkyNN9K4zscxvawaiaU60zNllyTvep4WicA/640?wx_fmt=png)

结果解读
----

1\. 耗占比趋势：呈波动上升态势（从38%升至45%），6月和10月出现明显峰值，需排查是否存在品种结构高端化转移问题。         

 2. 均次材料费特征：门诊均次材料费相对稳定（30-50元），住院均次材料费（÷100）与耗占比趋势一致，反映住院用耗是成本波动核心。          

3\. 预警与干预：建议设置耗占比预警阈值（如40%），当指标连续2个月超标时，启动科室用耗专项分析，重点核查高值耗材使用强度。

五、异常用耗病例与品种识别
=============

通过数据偏离算法（均值方差法、IQR法、控制图法等），识别异常用耗病例及品种，精准定位成本管控漏洞。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSGqb4lgmH88NJkiaEmxT8oULE2XlOJsLRhyt012DQIrxBDPe0srnV4ZSsHgS4ibXK6dWjENo8M3Stg/640?wx_fmt=png)

结果解读
----

1.  高风险病组：BC19（颅内血管手术）异常病例的耗材费用中位数超20万元，且存在大量极端高费用病例，异常原因以"高价耗材滥用"为主。
    
2.  异常特征：FM13和FL29病组异常病例的耗材费用离散度大，反映用耗标准化程度不足，需建立术式级用耗基准。
    
3.  管控建议：对高风险病组建立事前预警机制，限制高价耗材使用强度；对异常病例开展个案审查，追溯用耗合理性。
    

六、整体总结与管理建议
===========

核心结论          

1\. 风险聚焦：医保合规风险以串换收费、重复计费为主；DRG/DIP高耗病组集中于心血管、神经外科相关手术；主诊组用耗绩效差异显著。          2. 数据价值：通过大数据分析实现"异常识别-根源追溯-干预优化"的闭环管理，为医用耗材精细化管理提供支撑。          

3\. 改进空间：部分科室耗占比呈上升趋势，异常用耗病例仍存在，需强化数据驱动的监管与绩效引导。          

管理建议         

 1. 建立分级管控体系：对高风险病组、超支主诊组、违规科室实施重点管控，推广标杆案例的用耗方案。         

 2. 优化数据支撑能力：依托MDT-BAP内存大数据平台，实现实时监测与快速分析，提升响应效率。         

 3. 完善绩效激励机制：将用耗合规率、成本控制效果与科室/主诊组绩效挂钩，激发自我管控动力。         

 4. 推进标准化建设：基于真实世界证据，建立病种/术式级标准化用耗方案，平衡临床需求与费用控制。

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言