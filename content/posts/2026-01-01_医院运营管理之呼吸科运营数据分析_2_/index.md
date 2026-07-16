---
title: "医院运营管理之呼吸科运营数据分析 2 "
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 数据分析, 绩效]
categories: ["医院运营"]
---
     医院运营管理之呼吸科运营数据分析<2> \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理之呼吸科运营数据分析<2>
===================

原创 Hi您好 恒健知行 2026-02-23 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/Rkvb-XHgl67MzRB-egfiuw](https://mp.weixin.qq.com/s/Rkvb-XHgl67MzRB-egfiuw)

[医院运营管理呼吸内科DRG绩效分析报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488463&idx=1&sn=5538464f9a79fa4a445470b07a81ceda&scene=21#wechat_redirect)曾对呼吸科进行绩效分析，本章节数据维度更加全面，粒度更细。

一、呼吸科病种概览
=========

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP5wGD4lIOu04lgtknUiahrBmZuQ0dCWxAXAbYVdf0jLdQLo5Sh6qsDJavnd2oT3Xov38AO4qicErheltEBGiaPKfPauwjt7YTdwM/640?wx_fmt=png)

图1 呼吸科主要诊断TOP20

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN0HLowuyaRBhePIvFRDjNI54bvx4va9kDfnP6JKKNNsg0VW57MNfUGl2YkyF4hUOA22Htv4btr0iaibmhr2XpZFwqk0K6JGqNPE/640?wx_fmt=png)

图2 主要病种构成

病种

病例数

平均年龄

女性比例

平均费用(元)

平均住院日(天)

药占比

抢救率

呼吸支持率

肺炎  

1,021

60.1

41.1%

15,642

11.1

40.6%

30.0%

16.5%

COPD

967

70.5

10.1%

13,307

9.8

37.9%

46.1%

58.8%

哮喘

317

57.3

55.2%

7,527

6.8

36.3%

16.4%

37.5%

支气管扩张

282

61.1

56.0%

9,549

9.5

38.4%

30.1%

9.3%

肺结核

157

50.4

31.8%

9,175

9.6

33.8%

19.1%

1.2%

气胸

67

50.7

9.0%

8,466

10.2

26.0%

29.9%

0.0%

肺癌

63

64.5

31.7%

11,208

8.1

29.2%

27.0%

0.0%

胸膜疾病

61

49.4

41.0%

9,316

9.0

28.0%

16.4%

0.0%

间质性肺病

40

66.5

32.5%

11,749

10.4

37.9%

40.0%

18.2%

肺栓塞

6

44.0

33.3%

35,100

23.8

44.3%

66.7%

0.0%

呼吸衰竭

2

72.0

0.0%

35,447

21.0

34.0%

100.0%

0.0%

  

表1 主要病种汇总

COPD、肺炎、哮喘是呼吸科前三大病种，肺癌和呼吸衰竭患者费用及住院日较高。

二、患者人口学特征
=========

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO6awPPxIzhxySaaAYL5QdJlTB5TURTuncAkkewzcrv7ia79PLqpjOdGsIicADXvKr3g2ljiasGOAXjtkU0nWuqYESKy3jasSciaWM/640?wx_fmt=png)

图3 年龄分布

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMs4kRxnjd2vLfichKzPiaLTMyDJrZG49iam2TdgPpPgVWaogqk1C5bFFxay2Q4jyiacoADtkRWwq0wcdPTvqyEcsJ5nmHz9XCbMUg/640?wx_fmt=png)

图4 入院途径与病种关系

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMtoSYOWGaYfpFJVaicicy88PgHBMGickY9gD0jwWlMnkBvUS9nBXENnNmOAeFl5oh9PkEwq2vCXGd0UadE8yKbjn6LN6jwt1aRZY/640?wx_fmt=png)

图5 离院方式分布

呼吸科患者以中老年为主，急诊入院患者中肺炎、呼吸衰竭比例更高。

三、医疗质量指标
========

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMicficqcKGEkAwOyChkKHCiay2ysU7t1W9gyWs1pnWDay6Od1Mz0Ez82ToX5FkQZBZ2ms4Qb84dDVicfTCydVRIBu9EWrf3LVTV7A/640?wx_fmt=png)

图6 呼吸支持类型与病种构成

呼吸支持类型

主要病种

病例数

平均费用(元)

平均住院日(天)

病死率

无创通气

COPD

75

25,599

14.9

8.0%

有创通气

COPD

18

48,603

15.9

0.0%

有创通气

肺炎

18

83,659

24.1

16.7%

无创通气

肺炎

13

33,848

17.2

0.0%

无创通气

其他

7

17,361

7.4

28.6%

有创通气

其他

6

23,069

10.3

33.3%

无

肺炎

4

31,925

21.0

0.0%

无创通气

支气管扩张

4

36,782

15.8

0.0%

无创通气

哮喘

3

32,176

16.0

0.0%

有创通气

哮喘

3

48,544

18.0

0.0%

无

COPD

1

5,594

8.0

0.0%

无

其他

1

23,966

17.0

0.0%

无

间质性肺病

1

13,373

13.0

0.0%

无创通气

肺结核

1

29,899

13.0

0.0%

无创通气

间质性肺病

1

20,574

9.0

0.0%

  

表2 呼吸支持患者分析

病种

病例数

使用抗菌药例数

使用率

人均抗菌药费(元)

肺炎

1,021

1,002

98.1%

3,594

COPD

967

832

86.0%

2,321

哮喘

317

175

55.2%

1,374

支气管扩张

282

267

94.7%

2,061

肺结核

157

109

69.4%

1,883

气胸

67

21

31.3%

2,021

肺癌

63

30

47.6%

1,154

胸膜疾病

61

31

50.8%

1,687

间质性肺病

40

36

90.0%

2,820

肺栓塞

6

4

66.7%

8,708

呼吸衰竭

2

2

100.0%

6,174

  

表3 抗菌药物使用情况

有创通气患者主要分布在呼吸衰竭、重症肺炎，病死率较高。

四、并发症分析
=======

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZN76hzicSHo0HCaDNJW6knlo5p7hvtO1nF24s4NCdVzZ6a7kdf9XxtOfpuxNr3B7F48eNLQHwTkePh1QhEMpegFQBxk73nx45j0/640?wx_fmt=png)

图7 并发症共现网络

并发症类别

受累患者数

总病例数

发生率

最常见诊断

出现次数

其他

2,551

3,915

65.2%

前列腺增生

427

心血管

1,234

3,915

31.5%

肺源性心脏病

488

消化/肾脏

1,072

3,915

27.4%

肝功能不全

191

内分泌

445

3,915

11.4%

非胰岛素依赖型糖尿病不伴有并发症

482

呼吸相关

420

3,915

10.7%

呼吸衰竭

468

感染

356

3,915

9.1%

支气管扩张伴感染

198

血液

252

3,915

6.4%

轻度贫血

139

电解质紊乱

154

3,915

3.9%

低钾血症

105

  

表4 常见并发症发生率

心血管并发症最常见，与COPD、老年患者多，电解质紊乱也较突出。

五、费用与运营效率
=========

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMhuyBX5BdxDKNtypbQ6WLDFd0iaEtl3I7hS7mR6l9JQHgQJ4ibh2TZErgWuNEhllYK2qGdLFInAKhQRO4tJnWv0vATl1kXpJsSs/640?wx_fmt=png)

图8 费用结构瀑布图

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPQarxO7nSvHloqtDhSNHGSpa5nQgkoed3zhGId3MV11qbGIwDAWHojTHmDARic6s2R7eicg6eLpgoicf05Dcsib1NXZFHibPVPTr6I/640?wx_fmt=png)

图9 主要病种费用比较

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOQSNUbuWINdzTwx8ECnS0NNNZJ24Howk79FyibprPcEs9p2Uo7XicSSjOj8gqjAG9a7dyVJL4WzP92pplJibZqo4RDENXw32jgIQ/640?wx_fmt=png)

图10 主要病种住院天数比较

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZM3lkfzNCBW31r6cs9jAXickrVCYx2UeJJdaGx6rWBu1OwQYAVHnYsb6x3htX5u9NWaMgpmluaOPYercpk5q0UKHjZBRBfMHj8s/640?wx_fmt=png)

图11 主要病种药占比

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOJWKk95GhMmKeZiciaAF81q4Ot4L8DCwZjSiaJBw3re8icYVfuajhVVz6oTEIOH5fhDVtj6DdwkHFK92KYSwyibTEhk8X60sNZRWHg/640?wx_fmt=png)

图12 自付金额分布

药费占比较高，肺癌、呼吸衰竭患者费用显著高于其他病种。

六、DRG分组绩效
=========

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNtdt4fOiaR4BF5ZA4HwIAE4CVZZiaupJGQJwBjcS2Q7wfJXn9CzOEJ92gXvwZx3Jp6s3MtCSa4a80P0Kayo0gfGM2dJIBmnGgdk/640?wx_fmt=png)

图13 DRG绩效矩阵

DRG分组

病例数

时间消耗指数

费用消耗指数

简易CMI

权重等级

ES15-呼吸系统感染/炎症，不伴并发症与合并症

415

0.8452678

0.6331384

0.6331384

中权重

ET15-慢性气道阻塞病，不伴并发症与合并症

331

0.8204323

0.7206498

0.7206498

中权重

EX15-支气管炎及哮喘，不伴并发症与合并症

310

0.7480646

0.5644301

0.5644301

中权重

ES13-呼吸系统感染/炎症，伴并发症与合并症

295

1.1028474

1.0841899

1.0841899

中权重

ET13-慢性气道阻塞病，伴并发症与合并症

255

0.9890006

0.9402464

0.9402464

中权重

ET11-慢性气道阻塞病，伴重要并发症与合并症

211

1.0228852

1.1452002

1.1452002

高权重

EJ15-呼吸系统其他手术，不伴并发症与合并症

206

1.0677165

0.8922871

0.8922871

中权重

EC13-结核，手术室手术，伴并发症与合并症

188

1.4088655

1.6191421

1.6191421

中权重

EX13-支气管炎及哮喘，伴并发症与合并症

178

0.8797290

0.7196529

0.7196529

中权重

EC15-结核，手术室手术，不伴并发症与合并症

138

0.9540631

0.7276414

0.7276414

中权重

EJ13-呼吸系统其他手术，伴并发症与合并症  

121

1.1451496

1.0633136

1.0633136

中权重

ES11-呼吸系统感染/炎症，伴重要并发症与合并症

95

1.2113088

1.5031566

1.5031566

高权重

EK21-呼吸系统诊断伴非侵入性呼吸支持，伴重要并发症与合并症

77

1.3834234

2.0224719

2.0224719

高权重

RU14-恶性增生性疾病的支持性治疗（住院时间＜7天）

70

0.7535243

0.6649798

0.6649798

低权重

RU12-恶性增生性疾病的支持性治疗（7天≤住院时间＜30天）

52

0.9985102

0.8514278

0.8514278

低权重

  

表5 主要DRG分组绩效

右上象限的DRG组（ES11、ET11等）费用和时间消耗均高于平均，需重点关注。

七、手术与操作分析
=========

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPiaeIwxfjliamNu8RAMb9ZGxAibP1SG5de03alvr6GFq9qTO12WmuRCOqjM5AX1bBgj2pCAPQb0I5oTaPr38vJk6dqKjdbaMgrIc/640?wx_fmt=png)

图14 常见手术操作TOP10

胸腔闭式引流、支气管镜检查是呼吸科最常见的操作。

八、时间趋势分析
========

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP2dKK7RIAUKnic8EsEibYxQnr7zXciaviaFJWSzvzAEskHvu9hJMp3ppPU0Ync1MLjbf6QxNFI9L2utsLKtPs6c0NpqxQ0V9TRLrM/640?wx_fmt=png)

图15 每月入院人次趋势

冬春季入院人次明显增加，与呼吸道感染高发季节一致。

九、结论与建议
=======

1.  COPD、肺炎、哮喘为呼吸科核心病种，应建立标准化临床路径，缩短住院日，控制费用。
    
2.  呼吸衰竭和重症肺炎患者呼吸支持使用率高，需加强呼吸治疗团队建设，优化通气管理模式。
    
3.  药占比高，特别是抗菌药物和吸入制剂，应开展合理用药评价，推进生物类似药使用。
    
4.  并发症管理是提升质量的关键，心血管合并症、电解质紊乱等应纳入综合管理。
    
5.  DRG支付下，高消耗DRG组（ES11、ET11等）应优先进行成本控制分析，探索同质化治疗。
    
6.  冬春季高峰期间合理调配床位和人力资源，保障医疗安全。
    

科室系列分析

[医院运营管理之肝胆外科运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489301&idx=1&sn=61305f442b9dce9c420fa47ac0e756b6&scene=21#wechat_redirect)

[医院运营管理之产科数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489273&idx=1&sn=2dee59c488084feff3bbaa80cee753b9&scene=21#wechat_redirect)

[医院运营管理之妇科数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489255&idx=1&sn=bc7e48f2337f310fac1e6225a9fc3c2a&scene=21#wechat_redirect)

[医院运营管理之肾脏内科DRG数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489157&idx=1&sn=b5871357f653459e79cad54f23153058&scene=21#wechat_redirect)

[医院运营管理之风湿免疫科DRG数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489154&idx=1&sn=aa2feec315a4e1d487ab0b0bd823248c&scene=21#wechat_redirect)

[医院运营管理之肿瘤科DIP运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489142&idx=1&sn=3fc7731c0726cfd61b5ec005d6f8b869&scene=21#wechat_redirect)

[医院运营管理之儿科全维度分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489099&idx=1&sn=edfeff32e2358adbcfe5fd3d4cf63501&scene=21#wechat_redirect)

[医院运营管理之新生儿科运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489069&idx=1&sn=44ea96b36325b3bc7a873823fc75fb1f&scene=21#wechat_redirect)

[医院运营管理胸外科运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489041&idx=1&sn=bb727034fa1f8c89e3dd61d3ccccaa33&scene=21#wechat_redirect)

[医院整体DRG精细化运营盈亏分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488964&idx=1&sn=88c46c2cce92dfd641182ea257c770ef&scene=21#wechat_redirect)

[Claude Skills用于医院运管数据分析实践，以制作心血管内科可视化分析为例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488670&idx=1&sn=5772d0e81c88caa62bc2e4424cccf6d2&scene=21#wechat_redirect)

[医院科室运营管理之泌尿外科运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488643&idx=1&sn=351014e9a1b1560e723f6b028423c804&scene=21#wechat_redirect)

[医院科室运营管理之内分泌科运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488622&idx=1&sn=45dd68e70257a11f1e58e1313efb7eb9&scene=21#wechat_redirect)

[医院运营管理之DIP病种运营诊断---以眼科为例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488597&idx=1&sn=855454766758c2cb7d7e2df369727a68&scene=21#wechat_redirect)

[普外科住院医疗服务DRG绩效评价深度分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488527&idx=1&sn=4dc42cffe3095266ee96fdf48e61f971&scene=21#wechat_redirect)

[消化内科专科精细化运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488516&idx=1&sn=8127bec8359f841c64c73249dd8c1354&scene=21#wechat_redirect)

[专科病种精细化经营管理分析路径，以胃肠外科为例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488506&idx=1&sn=1b070793dcb93a1782ea88b2d67b483d&scene=21#wechat_redirect)

[基于病案首页的神经外科住院绩效分析可视化报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488408&idx=1&sn=e9b437261f785f42c44bc81064b7b17f&scene=21#wechat_redirect)

[医院科室精细化管理以骨科绩效分析为例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488386&idx=1&sn=8649adaae21e32fdade83cbdc5abc18c&scene=21#wechat_redirect)

[医院科室精细化病种运营管理分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488538&idx=1&sn=7d7b997e14056eacad04493d75c9264b&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言