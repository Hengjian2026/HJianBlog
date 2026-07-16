---
title: "XX省DRG住院医疗服务综合评价分析"
date: 2026-01-01
draft: false
tags: [DRG, 绩效, 成本]
categories: ["医院运营"]
---
     XX省DRG住院医疗服务综合评价分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

XX省DRG住院医疗服务综合评价分析
==================

原创 Hi您好 恒健知行 2026-03-21 06:25 安徽

> 原文地址: [https://mp.weixin.qq.com/s/2FWdYKBnxMRHa0jufE3t\_Q](https://mp.weixin.qq.com/s/2FWdYKBnxMRHa0jufE3t_Q)

一、数据概述
------

### 1.1 数据来源与样本

本文基于《2023年广东省DRG住院医疗服务综合评价分析报告》附件1数据,通过模拟数据进行分析。数据覆盖范围如下：

指标

数值

DRG组总数

801个

涵盖科室数

15个

分析维度

全省 vs 三级公立综合医院

### 1.2 核心指标说明

本次分析围绕以下DRG核心指标展开：

指标名称

说明

计算方式

病例数(CASE\_COUNT)

某DRG组的总出院人次

直接统计

平均住院日(AVG\_STAY\_DAYS)

某DRG组患者平均住院时长

总住院床日/病例数

次均费用(AVG\_COST)

某DRG组患者平均医疗费用

总费用/病例数

CMI值

病例组合指数，反映技术难度

Σ(某DRG权重×病例数)/总病例数

死亡率(DEATH\_RATE)

某DRG组患者死亡比例

死亡病例/总病例×100%

药品占比(DRUG\_RATIO)

药品费用占总费用比例

药品费用/总费用×100%

耗材占比(MATERIAL\_RATIO)

耗材费用占总费用比例

耗材费用/总费用×100%

* * *

二、数据模拟与处理过程
-----------

### 2.1 原始数据结构

基于报告附件1，我们模拟生成了801个DRG组的基础数据，覆盖15个科室类别：

`科室分类及DRG组数量：   - 呼吸系统：75组  - 循环系统：80组  - 消化系统：78组   - 神经系统：68组  - 内分泌系统：58组 - 泌尿系统：65组   - 血液系统：40组  - 妇科：52组      - 产科：48组   - 新生儿：32组    - 骨科：62组      - 普外科：75组   - 心外科：25组    - 神经外科：30组  - 其他：13组   `

### 2.2 数据处理步骤

#### 步骤1：全省基础指标计算

`# 全省801个DRG组的核心指标计算   provincial_summary = df.groupby('DEPT_CATEGORY').agg({       'CASE_COUNT': 'sum',           # 科室总病例数       'AVG_STAY_DAYS': 'mean',        # 科室平均住院日       'AVG_COST': 'mean',             # 科室次均费用       'CMI': 'mean',                   # 科室平均CMI       'DEATH_RATE': 'mean',           # 科室平均死亡率       'DRUG_RATIO': 'mean',           # 科室平均药品占比       'MATERIAL_RATIO': 'mean'        # 科室平均耗材占比   })   `

#### 步骤2：三级公立医院对比指标计算

`# 计算三级医院与全省均值的差异百分比   df_comparison['STAY_DIFF_PCT'] = ((HOS_AVG_STAY - PROV_AVG_STAY) / PROV_AVG_STAY) * 100   df_comparison['COST_DIFF_PCT'] = ((HOS_AVG_COST - PROV_AVG_COST) / PROV_AVG_COST) * 100   df_comparison['CMI_DIFF_PCT'] = ((HOS_CMI - PROV_CMI) / PROV_CMI) * 100   `

#### 步骤3：预警阈值设定

根据统计学原理和行业标准，设定以下预警阈值：

预警类型

阈值定义

预警含义

住院日预警

\>全省均值×1.2

住院时间过长

费用预警

\>全省均值×1.2

费用消耗异常

CMI预警

<全省均值×0.8

技术难度偏低

* * *

三、核心指标统计
--------

### 3.1 全省总体指标

统计指标

数值

全省总病例数

1,918,321 例

全省平均住院日

13.76 天

全省次均费用

4.33 万元

全省CMI均值

1.488

全省死亡率均值

1.23%

### 3.2 科室维度对比分析

#### 表1：全省与三级公立综合医院各科室核心指标对比

科室

全省病例数

全省住院日(天)

全省费用(万元)

全省CMI

三级住院日(天)

三级费用(万元)

三级CMI

住院日差异%

费用差异%

CMI差异%

产科

113,316

14.60

3.89

1.452

14.23

4.00

1.633

\-2.5%

+2.7%

+12.5%

循环系统

209,556

13.29

4.19

1.568

13.02

4.27

1.812

\-2.0%

+2.0%

+15.6%

消化系统

206,833

14.33

4.36

1.585

14.02

4.58

1.821

\-2.1%

+5.0%

+14.9%

呼吸系统

179,330

14.70

4.75

1.495

14.50

5.05

1.707

\-1.4%

+6.1%

+14.2%

神经系统

176,099

14.25

3.90

1.456

13.91

4.10

1.685

\-2.4%

+5.0%

+15.7%

内分泌系统

157,466

13.89

4.48

1.484

13.47

4.70

1.726

\-3.1%

+4.9%

+16.3%

泌尿系统

165,445

13.06

4.31

1.472

12.76

4.55

1.703

\-2.3%

+5.5%

+15.7%

骨科

168,584

14.56

4.27

1.458

14.14

4.56

1.685

\-2.9%

+6.9%

+15.6%

普外科

220,078

13.00

4.18

1.435

12.60

4.37

1.650

\-3.0%

+4.6%

+15.0%

血液系统

98,334

14.19

4.12

1.426

13.73

4.42

1.642

\-3.2%

+7.2%

+15.1%

妇科

138,680

13.11

4.90

1.491

12.99

5.12

1.736

\-0.9%

+4.3%

+16.4%

新生儿

89,233

12.27

4.61

1.567

12.14

4.88

1.835

\-1.0%

+5.9%

+17.1%

心外科

65,382

12.39

4.43

1.442

12.49

4.63

1.607

+0.9%

+4.4%

+11.4%

神经外科

68,997

13.77

4.38

1.434

13.52

4.55

1.644

\-1.8%

+3.8%

+14.6%

其他

34,998

13.37

4.44

1.426

12.79

4.52

1.627

\-4.3%

+1.7%

+14.1%

* * *

四、数据可视化分析
---------

### 4.1 科室对比分析

  

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMzWDOA1vmCrFVic7eXy8YCEpoYicycs3rI1rtIKctvaibw9o1iaFdXkytlM5LRE4rrTRvpAZWEe346jbGA5SOf87ibGZwiayIxcDo4M/640?wx_fmt=png&from=appmsg)

科室对比分析图

**图表解读：**

1.  **病例数分布**：普外科（220,078例）、循环系统（209,556例）、消化系统（206,833例）位居前三，合计占比约41.3%
    
2.  **住院日对比**：三级医院在大多数科室的住院日低于全省均值，说明效率较高；但心外科略高（+0.9%）
    
3.  **费用对比**：三级医院费用普遍高于全省均值2%-7%，其中血液系统（+7.2%）和骨科（+6.9%）差异最大
    
4.  **CMI对比**：三级医院CMI均高于全省均值，体现其收治病例技术难度更高
    

### 4.2 核心指标分布

  

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP7w9DlkA06FeacsDy0hicBLsl5AMVLibm4pmXDoHkINol9ckfYHv3ydwOY90ldncNxk3a1bE61gneW01rqUQkOG210R9B08Vtag/640?wx_fmt=png&from=appmsg)

核心指标分布图

**图表解读：**

1.  **住院日分布**：呈右偏态分布，均值13.76天，部分DRG组住院日超过25天
    
2.  **费用分布**：呈正态分布，均值4.33万元，高费用尾部延伸到8万元以上
    
3.  **CMI分布**：0.5-2.5区间分布较为均匀，均值1.488，体现DRG分组的合理性
    
4.  **药品vs耗材**：存在明显负相关，药品占比高的DRG组耗材占比往往较低
    
5.  **预警分布**：费用预警占比最高（43%），其次为住院日预警（37%），CMI偏低预警占20%
    

### 4.3 预警DRG组分析

  

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOnBX4s2sbyEBv7OicQEq1NI7iccAfk291Xd6d2QLTGBxF2ucZS636H0b1dbGzTXuZySu4BBFQk81Adq612IshH7LFqzso9bU66s/640?wx_fmt=png&from=appmsg)

预警分析图

**图表解读：**

1.  **住院日预警TOP20**：部分DRG组住院日超过全省均值40%以上，需重点关注
    
2.  **费用预警TOP20**：药品占比高的DRG组往往费用预警更明显
    
3.  **CMI偏低预警**：多为常见病、多发病，技术难度相对较低
    
4.  **散点图分析**：大部分DRG组集中在差异±20%区间内正常运营
    

### 4.4 综合效率分析

  

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOVrVD7Im8n5LHj5er5A9xv0AxPeu0ricJvAkTVsprOzR8ZuwsNnrve6swpYt3MeL83wWe5AouUGTiccn1Cm4r28oPOaln5J6Z4U/640?wx_fmt=png&from=appmsg)

综合分析图

**图表解读：**

1.  **费用结构**：药品占比和耗材占比呈现互补关系，与CMI无明显线性关系
    
2.  **效率分布**：高病例数组CMI差异大，说明大科室内部病种复杂度不均
    
3.  **高病例数病种**：主要分布在循环系统、消化系统、呼吸系统等大内科
    
4.  **高CMI病种**：主要分布在神经系统、心外科、新生儿等高技术难度科室
    

* * *

五、预警与变化分析
---------

### 5.1 预警DRG组统计

预警类型

DRG组数量

占比

住院日预警（>均值×1.2）

292个

36.5%

费用预警（>均值×1.2）

336个

41.9%

CMI偏低（<均值×0.8）

213个

26.6%

**至少一项预警**

**485个**

**60.5%**

### 5.2 三级医院与全省差异分析

对比维度

三级医院表现

主要原因

住院日

93%科室低于全省

效率管理更精细

费用

93%科室高于全省

接收更多复杂病例

CMI

100%科室高于全省

技术能力更强

### 5.3 重点关注科室

1.  **心外科**：是唯一住院日高于全省的科室（+0.9%），费用高于全省（+4.4%），需关注效率
    
2.  **血液系统**：费用差异最大（+7.2%），建议加强成本管控
    
3.  **骨科**：费用差异（+6.9%）和住院日均需关注
    

* * *

六、决策支撑建议
--------

### 6.1 效率提升方向

优先级

科室

问题

建议措施

高

心外科

住院日偏高

优化手术流程，缩短术前待床时间

高

血液系统

费用偏高

加强药品耗材管控，推行临床路径

中

骨科

费用偏高

推进耗材集中带量采购

中

呼吸系统

费用偏高

规范抗生素使用

### 6.2 学科发展建议

1.  **新生儿科**：CMI达1.835（全院最高），建议持续提升危急重症救治能力
    
2.  **神经外科**：CMI达1.644，建议继续发展高难度手术
    
3.  **内分泌系统**：CMI增速最快（+16.3%），建议发展代谢疾病特色技术
    

### 6.3 DRG精细化管理建议

1.  建立DRG组实时监测预警系统，对住院日、费用异常波动及时预警
    
2.  针对高频DRG组（TOP20）制定临床路径，标准化诊疗流程
    
3.  定期开展科室间DRG效能对标分析，找差距促改进
    
4.  将CMI纳入科室绩效考核，激励收治疑难重症
    

* * *

七、结语
----

XX省DRG住院医疗服务综合评价显示，三级公立综合医院在收治更多疑难重症（CMI高于全省均值11%-17%）的同时，保持了较高的运营效率（住院日普遍低于全省）。但部分科室存在费用偏高的问题，需要通过临床路径优化、耗材成本管控等措施持续改进。

801个DRG组覆盖了主要病种，通过对核心指标的持续监测和对比分析，可以有效支撑医院精细化管理和学科发展规划。

* * *

_数据参考：《2023年广东省DRG住院医疗服务综合评价分析报告》附表1_

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言