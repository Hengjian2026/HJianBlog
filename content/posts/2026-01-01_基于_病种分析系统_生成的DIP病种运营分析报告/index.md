---
title: "基于 病种分析系统 生成的DIP病种运营分析报告"
date: 2026-01-01
draft: false
tags: [DIP, 数据分析, 绩效, 成本]
categories: ["医院运营"]
---
     基于《病种分析系统》生成的DIP病种运营分析报告 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

基于《病种分析系统》生成的DIP病种运营分析报告
========================

原创 Hi您好 恒健知行 2026-03-25 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/4QgpBT8qigDb9naq3T2Rhw](https://mp.weixin.qq.com/s/4QgpBT8qigDb9naq3T2Rhw)

模拟了一份DIP病种结算单数据，5000条记录用于测试系统生成的分析报告。详情如下：

一、DIP分析概述
=========

本报告基于DIP（按病种分值付费）数据，从病种结构、绩效指标、费用构成、盈亏分析等维度进行全面分析，为医院DIP运营管理提供数据支撑。

DIP核心概念说明：

*   分值（病案分值/病种分值）：每个病例或病种的DIP分值，是医保结算的核心依据，分值越高代表获得的医保支付越多。
    
*   分值比：实际病案分值与DIP标准分值的比值，>1表示高于标准，<1表示低于标准。
    
*   倍率情况：实际费用与DIP标准费用的比值，分为正常倍率（0.8-1.2）、高倍率（>1.2）、低倍率（<0.8）。
    
*   预测盈亏/超支结余：基于DIP分值和实际费用计算的结果，负值代表医院结余（盈利），正值代表医院超支（亏损）。
    

2.二、DIP病种结构分析
=============

2.1 DIP分组病种分布（Bottom 10）
------------------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMnrw5Lvc3TXicDIzesYfG3EE1XoDr20KkrDdFlQMdvNTpicuOPrIbetAq0rwt5Ao6hJIJd4gHeeFNicAHD5E6HcRNYS4QqvEgTrQ/640?wx_fmt=png)

【结果解读】

该图展示了各DIP分组中病例数排名后10位的病种分布，便于识别需重点关注的低工作量病种。

● 病例数较少的病种可能需要优化诊疗方案或评估是否继续收治

2.2 病种类型分析
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNicWeskDBRAyVmqIhogle5ibPrqhx6MFR9rfOubVZhdduoWuB3q2icmtW69woiaGxF8D9qND9Y3giaJbMh4orw3K5l1EiaSaTcRLicmk/640?wx_fmt=png)

【结果解读】

该图展示了不同病种类型的病例数和平均费用分布（双轴图）。

● 柱状图显示各病种类型的病例数量

● 折线图显示各病种类型的平均费用，帮助识别高费用病种类型

表1：DIP病种汇总表
-----------

DIP分组

  

病例数

平均住院日

平均费用(元)

急性阑尾炎

278

7.27

3,854

肠病毒性水疱性口炎伴有疹病

275

7.12

2,587

慢性胃炎

270

7.50

2,677

脑震荡

266

7.66

2,816

急性上呼吸道感染<o:page>

265

7.43

2,599

高血压病

261

7.48

2,753

2型糖尿病

252

7.56

2,851

未特指的急性咽炎

252

7.67

2,649

未特指的急性支气管炎

252

7.37

2,647

膝关节骨性关节炎

252

7.51

2,876

未特指的支气管肺炎

249

7.41

2,813

肾结石

249

7.50

2,963

单胎顺产

248

7.30

3,374

疫苗接种

248

7.67

2,495

先兆流产

244

7.52

3,087

轮状病毒性肠炎

244

7.94

2,717

妊娠37整周之前的假临产

230

7.86

2,597

未特指的急性扁桃体炎

227

7.19

2,601

新生儿其他特指的呼吸性情况

225

7.29

2,750

未特指的细菌性肺炎

213

7.36

2,926

  

【表格说明】该表汇总了各DIP分组的核心指标，包括病例数、平均分值、平均费用和预测盈亏。

三、DIP病种绩效分析
===========

3.1 分值散点图
---------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOAsN4Vko3YJHetEcR1mMdpMI1am6FYWUxOxh44ib7bo9EoB4bicVXhZI4W96xxKgiaWUdNTUJcGiaEkWVh3H7Vm61ao6WKU0qhicia8/640?wx_fmt=png)

【结果解读】

该图展示了各病种的倍率与分值关系，气泡大小代表病例数。

● 右上角区域：高分值、高倍率的病种，代表费用高且分值也高的病例

● 左下角区域：低分值、低倍率的病种，代表费用低且分值低的常见普通病例

● 气泡越大代表该病种病例数越多，是重点关注对象

3.2 DIP绩效矩阵（四象限分析）
------------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMjpe6YdsYxoOCJxA2M7e9hxrdSx5DW9tDzeicf8b4ibfjLia5bLVbibvyNiaRIsjibl1XrAlJkO850EwHwibrRKEyFLVZDaABzMHWxZI/640?wx_fmt=png)

【结果解读】

该矩阵以倍率（横轴）与分值比（纵轴）进行四象限分析：

● 优质病种（低倍率高分值）：费用控制好且分值高于标准，是优势病种

● 高风险病种（高倍率高分值）：费用高且分值也高，需关注成本控制

● 需改进病种（高倍率低分值）：费用高但分值低于标准，需要重点优化

● 常规病种（低倍率低分值）：费用和分值都处于常规水平

3.3 分值偏差分析
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMmcgVtlyl1hngW4vDON9HyGh9un4Vich01umPhx4eXWoXnSGz3YpwLToVRRrc4OKIedEbdZmeOAE5dxq6KR8BqQzxjtOLOYicS4/640?wx_fmt=png)

【结果解读】

该图展示了各DIP分组实际分值与标准分值的偏差情况。

● 绿色柱体：实际分值高于标准，表示该病种收益较好

● 红色柱体：实际分值低于标准，表示该病种可能存在成本超支

● 建议重点关注偏差大的病种，分析原因并优化临床路径

4.四、费用结构与盈亏分析
=============

4.1 预测盈亏分析
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMpEg8Uj5gh6byuYONebGytTrzBOlXk2eqNQsoOMicXL1Sev2Myj8j7EwGJcphIWKOcp0WarLHTvKPy3ECibSPdHB84ReNzdzHt4/640?wx_fmt=png)

【结果解读】

该图展示了各DIP分组的超支结余情况（负值=医院结余，正值=医院超支）。

● 绿色柱体：结余病种，实际成本低于DIP分值收益，医院盈利

● 红色柱体：超支病种，实际成本高于DIP分值收益，医院亏损

● 对于超支病种，需要分析成本构成，优化诊疗方案

4.2 倍率情况分布
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOcT1bTNq4Fuia69O2WKSrfia4IT8lMMWayM2ec0tEvNgesXy8B6JMLQlMQa7KsZZMHPricYDTtXGIQf5p0iaKiacKnaAMmY0MzO0F8/640?wx_fmt=png)

【结果解读】

该图展示了正常倍率、高倍率、低倍率的病例分布比例。

● 正常倍率（0.8-1.2）：费用控制良好的病例，占比越高越好

● 高倍率（>1.2）：费用超出标准的病例，需分析超支原因

● 低倍率（<0.8）：费用远低于标准的病例，可能存在漏费或诊疗不足

4.3 费用结构分析
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMbia5JjicBFlJ8Zln9HYZ0wicV0Huicl8hRt3zv1w4xE10vicR1M3jiaRqb6Wc4e68CD44GmmL0jLGIZia9mZ659Ugfbwo5s698BZIUg/640?wx_fmt=png)

【结果解读】

该图展示了DIP数据的费用构成比例。

● 药品费占比：反映用药合理性，应控制在合理水平

● 耗材费占比：反映耗材使用情况

● 检查化验费占比：反映诊断检查的充分性

● 综合医疗服务费占比：反映医务人员技术劳务价值

4.4 费用构成饼图
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOLOtiaMEXkfp9zTmBia9iaD8geV5dAGQnTJwViaPKTibAbOL1uTvGzJMD5ut1lrbnficLLSO0Urj2lUxQamTSiaGyhicLVww8v3DdZJ7A/640?wx_fmt=png)

【结果解读】该饼图展示了药费、耗材费、诊疗费三大类费用的占比情况。

表2：DIP盈亏汇总表
-----------

DIP分组

  

病例数

结余例数(负值)

超支例数(正值)

超支结余总额(元)

人均超支结余(元)

结余比例

急性阑尾炎

278

141

137

\-292,525

\-1,052

50.72%

急性上呼吸道感染

265

134

131

\-245,869

\-928

50.57%

慢性胃炎

270

144

126

\-237,898

\-881

53.33%

肾结石

249

143

106

\-230,772

\-927

57.43%

未特指的细菌性肺炎

213

114

99

\-230,460

\-1,082

53.52%

膝关节骨性关节炎

252

124

128

\-223,732

\-888

49.21%

单胎顺产

248

125

123

\-223,092

\-900

50.40%

疫苗接种

248

123

125

\-202,877

\-818

49.60%

未特指的急性支气管炎

252

132

120

\-199,205

\-790

52.38%

先兆流产<o:page>

244

119

125

\-197,570

\-810

48.77%

脑震荡

266

132

134

\-197,394

\-742

49.62%

高血压病

261

135

126

\-195,515

\-749

51.72%

肠病毒性水疱性口炎伴有疹病

275

138

137

\-194,402

\-707

50.18%

未特指的急性扁桃体炎

227

114

113

\-192,019

\-846

50.22%

新生儿其他特指的呼吸性情况

225

122

103

\-189,209

\-841

54.22%

妊娠37整周之前的假临产

230

118

112

\-174,183

\-757

51.30%

未特指的急性咽炎

252

121

131

\-154,931

\-615

48.02%

未特指的支气管肺炎

249

127

122

\-150,981

\-606

51.00%

轮状病毒性肠炎

244

119

125

\-148,152

\-607

48.77%

2型糖尿病

252

126

126

\-147,204

\-584

50.00%

  

【表格说明】该表按盈亏情况汇总了各DIP分组的关键指标，便于识别重点管理对象。

表3：倍率情况分析表
----------

倍率分组

  

病例数

占比

平均费用(元)

平均住院日

低倍率(<0.8)

1,678

33.56%

2,831

7.40

正常倍率(0.8-1.2)

1,672

33.44%

2,826

7.51

高倍率(>1.2)

1,650

33.00%

2,851

7.53

  

【表格说明】该表按倍率情况分类汇总，展示正常倍率、高倍率、低倍率的病例分布和费用特征。

五、运营趋势分析
========

5.1 月度入院趋势
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPCjibohPIWAua4D7Mpcg0Ov8tTB0760cJicW4X12bRuKDyibW9ZAgJBxnWGiakOJbfS0XspwEibqicT5KictGX9zLrmTibq5cibNfCave8/640?wx_fmt=png)

【结果解读】

该图展示了各月份的入院人次变化趋势。

● 观察季节性波动，识别业务高峰期和低谷期

● 关注趋势变化，为资源配置提供参考

5.2 患者特征画像
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNZakMC61v4pibocqh9pcJ5nK8YPjJcJuf5jr7D3LmUOJZ6e2xNWicv2kPLnZxQLe9ZQRxpwFkNdyEhibLewzLROvtPmR4tvfyfIs/640?wx_fmt=png)

【结果解读】该图展示了患者的年龄和性别分布，帮助了解收治患者的人口学特征。

5.3 科室统计概览
----------

科室

  

出院人次

平均住院日

次均费用

药占比

中医科专业

326

7.29

2,816

0.22

产科专业

1,013

7.58

2,968

0.22

儿科

252

7.17

2,789

0.21

内科专业

239

7.64

2,831

0.23

口腔科专业

261

7.58

2,815

0.24

外科专业

253

7.33

2,817

0.22

妇科专业

259

7.78

2,817

0.22

康复科专业

253

7.59

2,801

0.23

急诊科专业

276

7.13

2,764

0.22

新生儿专业<o:page>

526

7.41

2,784

0.23

皮肤科专业

273

7.64

2,814

0.22

眼科专业

251

7.91

2,836

0.23

耳鼻喉科专业

245

7.50

2,826

0.22

重症医学科

275

7.40

2,795

0.22

骨科专业

298

7.13

2,759

0.22

  

【结果解读】该表展示了各科室的出院人次、平均住院日、次均费用和药占比情况。

六、管理建议
======

基于上述DIP数据分析结果，提出以下管理建议：

【病种结构优化】
--------

● 1. 优化病种结构：分析高分值病种的占比情况，提升科室整体病例分值水平。

● 2. 优化病种组合：在保证医疗质量的前提下，适当增加高分值病种的收治比例。

【费用控制管理】
--------

● 3. 降低高倍率病例比例：针对高倍率病种，分析超支原因，优化临床路径和用药方案。

● 4. 控制药耗占比：优化药品和耗材使用，降低可避免的成本支出。

【盈亏管理优化】
--------

● 5. 关注超支病种：针对预测盈亏为正的DIP分组（实际成本高于DIP标准），深入分析超支原因，制定控费措施。

● 6. 巩固结余病种：对于预测盈亏为负的DIP分组（实际成本低于DIP标准），保持现有诊疗方案和成本控制水平。

【编码质量管理】
--------

● 7. 提升分值准确率：规范主要诊断和手术操作编码，减少主诊断不适宜和主操作不适宜标记。

● 8. 加强编码培训：定期开展DIP编码培训，提高临床编码的准确性和完整性。

  

[医院病种分析系统---从Demo演示到实践](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489958&idx=1&sn=abde202f8869518e68b07a48bd58361b&scene=21#wechat_redirect)

[医院病种分析报告系统更新DIP盈亏分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489833&idx=1&sn=7b3e6d7de460266fd87cda21e7c47169&scene=21#wechat_redirect)

[医院病种分析报告系统化了](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489691&idx=1&sn=90234adc2be10442f6064ece8811c7b5&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言