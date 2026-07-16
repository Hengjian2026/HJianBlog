---
title: "医院整体DRG精细化运营盈亏分析"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 绩效, 成本]
categories: ["医院运营"]
---
     医院整体DRG精细化运营盈亏分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院整体DRG精细化运营盈亏分析
================

原创 Hi您好 恒健知行 2026-01-31 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/aR3-z0pDNS4HWzCAlCC5hw](https://mp.weixin.qq.com/s/aR3-z0pDNS4HWzCAlCC5hw)

  

===

第一章：数据概览与描述性统计分析
================

本章节旨在全面了解数据的基本情况，包括病例规模、分布特征、数据质量和关键指标的统计特征，为后续深入分析奠定基础。数据是通过模拟的 10000 条医保结算记录，数据合理性值得商榷。

核心分析内容：

1.  盈亏分布分析：了解医院整体经济状况
    
2.  关键指标统计：CMI、DIP分值、费用占比等
    
3.  数据质量评估：识别数据异常和缺失情况
    

表1：整体盈亏基本统计量

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYiacOO6IY0xQ3FfWtiaUdV78SmO3bicOPDLqJncdgKXIibZrHahJVjd1l9dA/640?wx_fmt=png)

上表展示了全院盈亏的基本统计特征。重点关注盈利比例和亏损比例，了解医院整体经济状况。

关键分布可视化：（可以看出来模拟的数据服从正态分布，真实情况下大都偏态分布的）

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYiaQuDGvM01Qhw0u6Yw8SEPETgTDNlh2BW2jYNx1ReRlz5ic2djbnJib4ng/640?wx_fmt=png)

1.  盈亏分布直方图：显示盈亏金额的分布情况，大多数病例集中在均值附近，但存在长尾分布
    
2.  CMI分布：反映病例的技术难度，CMI越高代表病例复杂度越高
    
3.  费用占比箱线图：药品、耗材、检查三项费用的占比分布，超过30%红线的需要重点关注
    
4.  年龄结构：患者以中老年为主，这与疾病谱分布特征相符
    

第二章：MDC学科战略布局分析
===============

运用波士顿矩阵分析法，从病例规模（横轴）和技术难度（纵轴）两个维度，对各主要诊断分类（MDC）进行战略定位，识别明星学科、潜力学科、现金牛学科和瘦狗学科。

矩阵图解读：

*   明星学科（右上）：高病例量、高技术难度，应重点投入资源
    
*   潜力学科（左上）：高技术难度但病例量不足，有发展潜力
    
*   现金牛（右下）：高病例量但技术难度一般，是医院主要收入来源
    
*   瘦狗学科（左下）：病例量少、技术难度低，需考虑优化或转型
    

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYia84ZEciager5lEAWs3ibbaUsEARcrAFjib79iaCA4HohSYRSSPUEkAs4wgQ/640?wx_fmt=png)

1.  右上象限（明星学科）：病例量大且技术难度高，是医院的核心竞争力所在
    
2.  左上象限（潜力学科）：技术难度高但病例量不足，有发展潜力但需要市场开拓
    
3.  右下象限（现金牛学科）：病例量大但技术难度一般，是医院稳定的收入来源
    
4.  左下象限（瘦狗学科）：病例量少且技术难度低，需评估其存在价值
    
5.  气泡颜色：红色表示亏损，绿色表示盈利；气泡大小表示盈亏总额
    

第三章：科室深度画像分析
============

从科室层面深入分析运营状况，包括科室战略定位、经济贡献排名、费用结构特征和内部病种分析，为科室精细化管理提供依据。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYiaffCX5k6KEyGsg2C5L9LfTlCoXxAAt9Nz1LShDfTic6iaJeiao9b1CY4Ng/640?wx_fmt=png)

此图展示各科室在规模和难度两个维度的分布，帮助识别需要重点发展的科室。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYia38c5e2mOXwvQpVzbat2lr17uMGvEZ1T2NwWt5sMoHU9bk7iaLFIrIgw/640?wx_fmt=png)

清晰展示各科室的经济贡献情况，为绩效分配和资源倾斜提供依据。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYiaWFxFdVE5McW9jlLexMMPibuKBBWas6xzicBtsYrzkjgibbwiaQmuvGIkhg/640?wx_fmt=png)

展示主要科室的费用构成，重点关注药品、耗材、检查占比是否合理。

第四章：医师绩效评价分析
============

通过四象限分析法，从工作负荷（总权重）和经济贡献（总盈亏）两个维度评价医师绩效，识别金牌医师、高产低效医师等不同类型，为人力资源管理提供参考。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYiaXu5T32hUYwkNtQIX3KlcibeUejfw3HDFDwX81WDh8dIEHYOGgicW6tYA/640?wx_fmt=png)

*   第一象限（右上）：金牌医师，高产出高效益，应予以表彰和激励
    
*   第二象限（左上）：高效低产医师，效益好但产出不足，可适当增加工作量
    
*   第三象限（左下）：普通医师，需关注其发展
    
*   第四象限（右下）：高产低效医师，产出高但效益差，需重点帮扶改进
    

第五章：DRG病种层面分析
=============

从病种维度分析盈亏情况，识别现金牛病种和出血点病种，为重点病种管理提供决策支持。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSfPnO2FACDwl4NgfQ2ulYia7wUvlGic1sSNhoXje1CepicsFiaHL7pzIauK8TvgbXWibtmDHb5sz8hPmw/640?wx_fmt=png)

清晰展示盈利最好和最差的病种，为临床路径优化提供方向。

第六章：合规预警与审计清单
=============

识别严重超支（红灯预警）病例，生成审计清单，为医务部门和医保管理部门提供重点关注对象。

发现 15 例红灯预警病例（超支>20%）

总亏损金额：3485.33元

表2：【红灯预警】特病单议/病历质控重点审计清单

  
病案号

责任科室

病种名称

主治医师

结算时间

实际费用

医保支付

亏损金额

住院天数

  

呼吸内科

支气管哮喘

  

202,501

1,000

830

170

24

  

皮肤科

玻璃体、视网膜、脉络膜手术

  

202,501

1,000

824

176

29

  

康复科

角膜、巩膜、结膜手术

  

202,501

1,000

822

178

19

  

骨科

骨折手术治疗

  

202,501

1,000

810

190

15

  

普外科

疝修补术

  

202,501

1,000

798

202

22

  

骨科

关节镜手术

  

202,501

1,236

1,018

218

19

  

康复科

晶状体手术

  

202,501

1,214

992

222

30

  

消化内科

玻璃体、视网膜、脉络膜手术

  

202,501

1,300

1,074

225

20

  

急诊科

角膜、巩膜、结膜手术

  

202,501

1,000

764

236

22

  

神经外科

前房出血及眼创伤的非手术治疗

  

202,501

1,000

737

263

16

  

皮肤科

玻璃体、视网膜、脉络膜手术

  

202,501

1,000

736

264

19

  

感染科

除眼眶外的外眼手术

  

202,501

1,247

973

274

23

  

急诊科

角膜、巩膜、结膜手术

  

202,501

1,227

947

280

5

  

耳鼻喉科

前房出血及眼创伤的非手术治疗

  

202,501

1,055

767

288

27

  

泌尿外科

前房出血及眼创伤的非手术治疗

  

202,501

1,744

1,446

298

10

审计建议：

1\. 医务部逐案核查，区分技术性超支与管理性超支

2\. 符合特病单议条件的，及时申报

3\. 管理不当病例，纳入科室绩效考核

  

红灯病例需要重点关注，建议医务部门组织专家评审，区分合理超支和不合理超支。

第七章：综合结论与管理建议
=============

基于以上分析，我们得出以下主要结论和建议：

表3：DRG运营分析关键指标汇总

分析维度

统计结果

数据概况

总病例数：10000例，覆盖科室：20个，涉及病种：24个

经济效益

总盈亏：1846.50万元，盈利病例占比：64.6%，亏损病例占比：35.4%

医疗质量

平均CMI：1.50，平均住院日：15.5天，药占比：7.1%，耗材占比：8.9%

风险预警

红灯预警病例：3994例，黄灯预警病例：1181例

  

管理建议：

1\. 学科建设建议：

*   重点发展明星学科，保持其竞争优势
    
*   关注潜力学科，通过技术创新提升病例量
    
*   优化瘦狗学科，考虑转型或与其他学科整合
    

2\. 科室管理建议：

*   对亏损科室进行专项帮扶，分析亏损原因
    
*   优化费用结构，控制药品和耗材占比
    
*   建立科室DRG运营指标考核体系
    

3\. 医师管理建议：

*   表彰奖励金牌医师，推广其经验
    
*   对高产低效医师进行专项培训指导
    
*   建立医师DRG绩效档案
    

4\. 病种管理建议：

*   优化高亏损病种的临床路径
    
*   推广高盈利病种的最佳实践
    
*   建立病种成本核算体系
    

5\. 风险控制建议：

*   建立红灯预警病例审核机制
    
*   完善特病单议申报流程
    
*   加强病案首页质量管控
    

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言