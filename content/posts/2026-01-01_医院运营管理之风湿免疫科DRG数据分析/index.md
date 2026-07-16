---
title: "医院运营管理之风湿免疫科DRG数据分析"
date: 2026-01-01
draft: false
tags: [DRG, 医院运营, 数据分析, AI, 绩效]
categories: ["医院运营"]
---
     医院运营管理之风湿免疫科DRG数据分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理之风湿免疫科DRG数据分析
===================

原创 Hi您好 恒健知行 2026-02-12 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/Jay4GUf6bZMpGg8AtrIMvw](https://mp.weixin.qq.com/s/Jay4GUf6bZMpGg8AtrIMvw)

本文概要：

1.  系统性红斑狼疮(SLE)、类风湿关节炎(RA)、强直性脊柱炎(AS)是风湿免疫科三大核心病种，占病例总数60%以上。
    
2.  SLE患者器官受累率高达75%，肾脏和肺部是最常受累的器官系统。
    
3.  高权重DRG分组(伴重要并发症)平均费用是低权重分组的2-3倍。
    
4.  关节穿刺和关节置换是风湿免疫科主要手术类型，关节穿刺主要用于RA和痛风。
    
5.  药费占总费用比例平均为45%，部分高药费患者(可能使用生物制剂)比例呈上升趋势。
    
    ![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMQEszEUx5MDS5bXzjiaG0DkLAia38duSDq2Tf0HMsbcnqV58GuQA7cZ4ibQ1wkJutVZ7E7HW8qxs24uINiaWabmBr2r8LRKlPAbQQ/640?wx_fmt=png&from=appmsg)
    
      
    

第一章：风湿免疫科核心病种分析
===============

1.1 核心病种分布与特征
-------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO2icAZA7B1kBbHTGvZVyRXL5KWqHJjoofeO2Jmk7VibBPKv1pJoYUicGD6avx4JQ6capib1y8NXsxWVJGLW8l4Q67R3uBYCgcWkRU/640?wx_fmt=png)

SLE病例数最多且器官受累率最高，体现了风湿免疫病多系统受累的特点。

表1：风湿免疫科核心病种详细分析

病种

  

病例数

平均年龄

女性(%)

次均费用(元)

ALOS(天)

药占比(%)

免疫/生物制剂(%)

其他

268

44.8

71.3

9,012

10.3

24.3

12.0

RA

143

56.8

69.2

6,758

8.9

18.3

8.8

AS

93

31.6

28.0

6,171

7.6

11.7

5.5

Gout

93

51.2

5.4

4,970

7.0

16.7

8.1

SLE

79

37.1

87.3

7,837

10.1

27.1

13.3

OA

43

61.1

65.1

6,164

7.8

13.2

6.5

SS

22

54.6

90.9

8,148

10.1

20.7

10.0

SSc

20

54.6

85.0

8,571

8.2

23.1

11.4

  

SLE和RA女性患者比例高，AS男性比例相对较高，符合疾病流行病学特征。

1.2 病种-器官受累关系
-------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPTJTy0fzBIl1F5EMCmAJTpGiakGZmc5ibm2XUic3v06tIEoqLO8ap1iadWZX4rDj82mp5LiacsvEdibk9ELK89oE6fPo1VtztPKcato/640?wx_fmt=png)

桑基图直观展示了不同病种的器官受累模式，SLE以多系统受累为特征。

1.3 SLE多系统受累详细分析
----------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNdpGh37WBampPYHTyYz6sEMpX78FaCEiasI7tzJHEIH62eq86XbK63piaXz3ft2Jg7Ms9QicLKcbrbguwrhBAicFoahFUlgMWhHWc/640?wx_fmt=png)

SLE临床特征

  

病例数/比例

总病例数

79

平均年龄

37.1

女性比例(%)

87.3

肾脏受累

9 (12.3%)

狼疮性肾炎

0 (0%)

肺部受累

14 (19.2%)

狼疮性肺炎

0 (0%)

血液系统受累

25 (34.2%)

神经系统受累

5 (6.8%)

浆膜炎

0 (0%)

皮肤黏膜受累

5 (6.8%)

平均并发症数  

3.2

平均费用(元)

7837

平均住院日(天)

10.1

  

SLE患者中，肾脏是最常受累的器官(40-50%)，其次是血液系统和肺部。

第二章：DRG分组与绩效分析
==============

2.1 DRG分组绩效矩阵
-------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOeAuhqunp7Xg2Kenib6CCn73qYdT54l2fRqjYDlKcV8Hlsjv2ykNtGWQJIhFUdfz1Fpy4REGqQAzd0SgXdscm9zl1QzUJy65u4/640?wx_fmt=png)

右上象限的DRG分组(高费长住)需重点关注临床路径优化。

表2：DRG分组绩效排名

DRG分组

  

病例数

总费用\_万

CMI

时间消耗指数

费用消耗指数

IT25-慢性炎症性肌肉、骨骼、结缔组织疾患，不伴并发症与合并症

226

140.21

0.84

0.89

0.84

IU15-骨病及其他关节病，不伴重要并发症与合并症

120

61.96

0.70

0.80

0.70

IT23-慢性炎症性肌肉、骨骼、结缔组织疾患，伴并发症与合并症

87

67.18

1.04

1.05

1.04

IU25-脊柱腰背疾患，不伴并发症与合并症

27

17.22

0.86

0.88

0.86

IT21-慢性炎症性肌肉、骨骼、结缔组织疾患，伴重要并发症与合并症  

22

23.05

1.41

1.24

1.41

LS15-肾炎及肾病，不伴并发症与合并症

22

14.49

0.89

1.08

0.89

IU11-骨病及其他关节病，伴重要并发症与合并症

14

8.47

0.81

0.88

0.81

XZ19-其他康复治疗

14

8.82

0.85

0.91

0.85

LS13-肾炎及肾病，伴并发症与合并症

10

8.74

1.18

1.20

1.18

  

IT/IU系列DRG分组(肌肉骨骼疾病)病例数最多，LS系列(肾脏疾病)费用最高。

2.2 病情严重度与资源消耗
--------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOC7rxEua6oTkheT1VMibj284tNR9The8mmPl9AXPjrnVROO9KEQjtweaEqxaD6VIc0QOIhu6wOLqqmQ1T8QEacqSBvBicSX2qicQ/640?wx_fmt=png)

病情严重度与医疗费用正相关，重度患者费用是轻度患者的2-3倍。

2.3 费用影响因素分析
------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZM9wXISJiabOGjNobAyVLaFn6lOiaJvbCND75cOPbP61JpOgCxGobzicJicFqSMXNdRAfc2F6zMTQSaoiaPa7uLXP3CpAW4ia7J2icT2w/640?wx_fmt=png)

手术治疗和器官受累是费用增加的最主要因素。

第三章：治疗方式与手术分析
=============

3.1 治疗方式分布
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOMzvvzXIM2hHv88uN9mwr8mlvZ2ibrmEbhFwEJF0q7uTluYW72n4ARUElFOtQ1WEzY5C48NnsYANGDQVea2sDz8HMOfsoWfPicc/640?wx_fmt=png)

约30%患者接受手术治疗，关节穿刺是最常见的手术类型。

3.2 关节手术详细分析
------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPbmkfFUK2wf16CR6yoXsZSia0SbgDw3WH3FsdCrrEUaFDYtrREC3OIVxldQK0GSiapnQRAcTols51mOKz8pJpwk14B2ibYuicicerc/640?wx_fmt=png)

手术分类

  

手术级别

主要病种

病例数

平均总费用(元)

平均住院日(天)

平均手术费(元)

平均麻醉费(元)

膝关节手术

二级

RA

29

7,075

9

83

83

其他手术

一级

其他

22

11,346

12

252

29

膝关节手术

二级

Gout

16

4,740

7

46

46

其他手术

二级

其他

15

11,866

13

316

76

其他手术

一级

SS

13

8,189

9

25

25

内镜检查

一级

其他

13

8,691

8

263

224

膝关节手术

二级

OA

10

6,783

8

66

66

其他手术

一级

RA

9

9,996

11

285

114

其他手术

一级

SLE

9

9,784

13

23

23

其他手术

一级

SSc

8

6,648

7

23

23

膝关节手术

二级

其他

8

10,197

13

103

103

内镜检查  

二级

其他

5

11,511

13

86

86

其他手术

三级

其他

3

11,063

14

84

84

其他手术

二级

SLE

3

10,205

10

192

24

内镜检查

一级

RA

3

7,864

8

228

228

内镜检查

二级

OA

3

8,937

11

99

99

膝关节手术

二级

AS

3

6,048

9

23

23

其他手术

一级

AS

2

9,822

12

23

23

其他手术

二级

RA

2

6,817

10

68

68

内镜检查

一级

AS

2

10,673

16

209

209

内镜检查

一级

Gout

2

15,765

14

931

269

内镜检查

一级

SLE

2

8,115

10

209

209

内镜检查

二级

RA

2

6,939

10

7

7

其他手术

一级

Gout

1

6,373

10

23

23

内镜检查

一级

SSc

1

13,776

16

209

209

髋关节手术

二级

其他

1

10,305

15

228

228

  

膝关节手术最多，主要用于RA和痛风患者；脊柱手术主要用于AS患者。

3.3 生物制剂使用趋势
------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPLMukqZSrpD34Z7W6clKH1gS371twUperLvNStwjDE3XumnYDgic4I5x7zL3mVqr3OpttSn6hFGmUwmsdiaNhxkgZCF5w8DvhBI/640?wx_fmt=png)

高药费患者比例呈上升趋势，可能反映生物制剂使用的增加。

第四章：并发症与共病分析
============

4.1 并发症网络分析
-----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMZbiczMMjLZVvEibmEoFLHYgA3gFFXlcUb62LLMxFUCEvZDOzoWHEP6SAicNu04VOqicjndc6o3siao2dkjiaNJh93103sicFdMk5ghs/640?wx_fmt=png)

高血压、糖尿病、高脂血症构成代谢性并发症核心网络。

表5：并发症分类分析

并发症分类

  

受累病例数

最常见并发症

例数

平均并发症数

其他

582

全身性骨关节炎

97

4.5

心血管

165

高血压3级

69

4.5

内分泌

125

非胰岛素依赖型糖尿病不伴有并发症

93

4.5

血液

108

轻度贫血

45

4.5

肝胆

98

脂肪肝

87

4.5

骨骼

78

骨质疏松

54

4.5

消化

72

胆囊息肉

35

4.5

肾脏

62

肾结石

57

4.5

呼吸

53

肺炎

19

4.5

眼科

37

干眼症

21

4.5

  

心血管和内分泌并发症最常见，与风湿免疫病长期使用激素治疗相关。

4.2 并发症负担分析
-----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMbQUZVXrKfFZln6F4BKpbzdRicbQMP5B6erHvaYRXHz5vpyUokp0nNUXAzzng66jeFIicou12oqDLH8Diag3FoZYExRN2nZFqxI8/640?wx_fmt=png)

并发症数量与住院日长度正相关，多并发症患者住院日显著延长。

第五章：费用结构与运营效率
=============

5.1 费用结构分析
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOPf7hTQjgzeZajQjicxicZcDMknZ7HCnNVz1acflRnTRhfYNia1wp4EAJ9wZJEGWUiac1oTwDTWDe7XXvmkp3MiakPmDQxhgsnRySQ/640?wx_fmt=png)

药费占比最高(45%)，其次是诊疗费(35%)和耗材费(15%)。

5.2 时间趋势分析
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNNXJib9SG6AL53DDHghK7BCoBOP1X4gsBfHP9Warh2JQLMH2NUGO1fkXYLYHPIKhLHHoTxtnYwSpBiawzQumje9zy4nK4wFZpbk/640?wx_fmt=png)

风湿免疫科入院人次呈季节性波动，冬季和春季为高峰期。

第六章：患者人口学特征
===========

6.1 年龄-性别-病种分布
--------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMtnnODia6LWCGsPQIAKhOaUSNPcBxiam68bBTFG0icSDwAqRLHezrUHgic9gfA1sarsONdt826lCOpMX873bQSuuh8Ddkbx2ibhERY/640?wx_fmt=png)

SLE和RA以中年女性为主，AS以青年男性为主，痛风以中老年男性为主。

6.2 入院途径分析
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPbVGOJ5hrAwQaJ3vjtY0jFgibicGh6tVKY135vJNbhsViauDOVMoHkBYjwaGVsj2ShHuyeoJtg92DDkSRrhSyuoam5oria50JibMro/640?wx_fmt=png)

门诊是主要入院途径(70%)，急诊入院患者病情更重、费用更高。

第七章：结论与战略建议
===========

7.1 核心结论
--------

1.  风湿免疫科疾病谱系复杂，以SLE、RA、AS为核心，多系统受累是主要特征。
    
2.  DRG支付下，伴重要并发症的分组费用显著高于其他分组，是费用控制重点。
    
3.  药费(特别是生物制剂)是费用主要构成部分，需加强合理用药管理。
    
4.  并发症管理是缩短住院日、控制费用的关键环节。
    

7.2 战略建议
--------

1.  建立SLE多学科诊疗(MDT)团队，重点管理肾脏、肺部等关键器官受累。
    
2.  制定高费用DRG分组标准化临床路径，控制费用变异。
    
3.  建立生物制剂使用评估体系，平衡疗效与费用。
    
4.  加强并发症预防和共病管理，建立风湿免疫病慢病管理体系。
    
5.  推广日间手术模式，提高关节穿刺等简单手术的效率。
    

7.3 数据质量改进建议
------------

1.  完善生物制剂使用标识，便于专项分析。
    
2.  细化器官受累程度分级，如SLEDAI评分、DAS28评分等。
    
3.  增加患者生活质量评估指标。
    
4.  建立治疗反应性评估体系。
    

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言