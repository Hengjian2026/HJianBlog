---
title: "医院运营病种盈亏分析"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 智慧医院, 成本]
categories: ["医院运营"]
---
     医院运营病种盈亏分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营病种盈亏分析
==========

原创 Hi您好 恒健知行 2025-10-23 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/QzWVBjbKnpa2WY2C0rSc5g](https://mp.weixin.qq.com/s/QzWVBjbKnpa2WY2C0rSc5g)

在DRG/DIP付费改革背景下，基于病种的盈亏分析成为医院运营工作的基础工作。基于《XX市DIP支付方式改革实施细则》文件，医院可以获得本院高低正常倍率计算方法，最终分值计算方法等。通常医院可以计算出高倍率组、低倍率组、正常组、异常组、病例最终分值等。再结合从当地医保局获取不同的区、县的职工和居民的结算点值即可计算单个病例的盈亏金额。本文分析基于已经计算出了盈亏金额，进行下一步分析。

### 1.样例数据

### 样例数据通[医院运营疾病谱分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486815&idx=1&sn=b94f41396d12c52f13400cde64958c91&scene=21#wechat_redirect)文中的数据。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTw2roxOftxwOWSedQq0fzhUHWsfwRoMhB3sq6VyAqht6wicADuSFleFQ3U3k1Lx1wk0B9icceDvbow/640?wx_fmt=png&from=appmsg)

其中预测盈利是根据医保结算后的预测结果，医保主要疾病诊断和医保主要手术操作信息字段作为本次分析的目标疾病谱。在进行异常值（以费用指标为度量，按照四分位数统计量，超过3被分位差即认为是异常值，即超高、高地费用病例）、缺失值处理之后，即可进行疾病谱的绘制。

疑似异常的数据记录：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTw2roxOftxwOWSedQq0fzhiaJLAgAaaANneiaoVydsmkS6NI5th8FK11icMhGOeyoIs6RnAnIIU3oyw/640?wx_fmt=png&from=appmsg)

2.盈利分析

首先可以进行基本的盈亏统计量计算，筛选盈利、亏损靠前的病种：

盈利前10病种：

标准化诊断名称

病例数

总盈亏

平均盈亏

总费用均值

急性广泛前壁心肌梗死

15

127470.49

8498.03

18737.45

急性下壁心肌梗死

6

48200.6

8033.43

20736.57

股骨颈头下骨折

9

51806.37

5756.26

23937.87

直肠恶性肿瘤

5

22045.61

4409.12

20290.27

急性非ST段抬高型心肌梗死

16

62203.91

3887.74

14184.32

卵巢良性肿瘤

8

21821.55

2727.69

12622.31

帕金森病

5

9987.47

1997.49

5682.36

不稳定型心绞痛

19

37122.89

1953.84

6792.46

冠状动脉粥样硬化

13

24077.33

1852.1

7322.7

慢性肾脏病5期

12

22159.76

1846.65

5729.1

亏损前10病种：

标准化诊断名称

病例数

总盈亏

平均盈亏

总费用均值

恶性肿瘤放射治疗

14

\-81239.39

\-5802.81

38049.03

铜绿假单胞菌性肺炎

5

\-21507.51

\-4301.5

28895.8

皮肤慢性溃疡，不可归类在他处者

5

\-16212.92

\-3242.58

8696.58

恶性肿瘤免疫治疗

6

\-17651.59

\-2941.93

12251.13

下肢溃疡，不可归类在他处者

6

\-16945.49

\-2824.25

8060.62

大脑动脉栓塞引起脑梗死

12

\-33179.91

\-2764.99

20124.97

甲状腺恶性肿瘤

5

\-13736.43

\-2747.29

18813.98

丘脑出血

8

\-17655.87

\-2206.98

18669.85

肾结石伴有积水和感染

19

\-39253.91

\-2066

13408.13

肾输尿管结石伴有积水和感染

13

\-25914.05

\-1993.39

14933.27

盈利手术：

标准化手术名称

病例数

总盈亏

平均盈亏

总费用均值

全髋关节置换

5

64231.83

12846.37

27237.63

呼吸机治疗\[大于等于96小时\]

7

61571.81

8795.97

31372.98

经皮冠状动脉球囊扩张成形术

3

24091.3

8030.43

20439.57

脑血肿切开引流术

8

63196.87

7899.61

33180.39

腹腔镜下肾囊肿去顶术

3

19274.31

6424.77

11441.9

药物洗脱冠状动脉支架置入

50

261805.67

5236.11

20845.8

腹腔镜下十二指肠溃疡穿孔修补术

7

28099.42

4014.2

12095.8

支气管镜下支气管活检

4

15655.83

3913.96

6121.04

腹腔镜胃溃疡穿孔修补术

4

14211

3552.75

10914.75

腹腔镜卵巢病损切除术

9

30971

3441.22

11288.78

亏损手术：

标准化手术名称

病例数

总盈亏

平均盈亏

总费用均值

后入路玻璃体切割术

3

\-26899.86

\-8966.62

20600.38

肱骨骨折切开复位钢板内固定术

4

\-31694.27

\-7923.57

23032.84

锁骨下静脉穿刺中心静脉置管术

5

\-30651.91

\-6130.38

22239.72

调强适形放射治疗\[IMRT\]

16

\-94532.45

\-5908.28

37906

腰椎穿刺术

19

\-106002.27

\-5579.07

21305.32

单侧甲状腺切除伴他叶部分切除术

3

\-15178.86

\-5059.62

17449.62

经尿道输尿管镜肾盂激光碎石术

10

\-36634.53

\-3663.45

15327.45

经尿道输尿管镜肾盂激光碎石取石术

6

\-20585.83

\-3430.97

16802.72

胸膜腔药物注射治疗

3

\-9878.59

\-3292.86

13459.9

超声引导下前列腺穿刺活检

3

\-9553.85

\-3184.62

9709.58

高频诊断、手术的盈亏情况：

主诊断

主手术

标准化诊断名称

病例数

平均盈亏

标准化手术名称

病例数

平均盈亏

后循环缺血

87

12.28

静脉注射化疗药物

79

70.13

慢性阻塞性肺病伴有急性下呼吸道感染

69

473.48

经皮椎骨成形术

56

\-209.53

稳定型心绞痛

68

892.31

单根导管的冠状动脉造影术

54

790.24

恶性肿瘤支持治疗

67

\-426.16

药物洗脱冠状动脉支架置入

50

5236.11

老年性骨质疏松伴病理性骨折

61

\-39.52

无创呼吸机辅助通气(双水平气道正压\[BiPAP\])

46

42.04

急性左心衰竭

60

1387.6

脑血管造影

39

2302.5

大脑动脉血栓形成引起的脑梗死

51

\-239.04

胃镜检查

37

\-510.72

肺炎

44

674.31

血液透析

36

1383.45

大脑动脉狭窄脑梗死

41

539.94

内镜下结肠黏膜切除术(EMR)

35

\-535.8

大脑动脉闭塞脑梗死

41

\-152.22

白内障超声乳化抽吸术

32

\-1038.45

慢性心功能不全急性加重

37

556.2

经尿道前列腺气化电切术\[TEVAP手术\]

28

\-349.74

胃肠功能紊乱

36

\-766.78

胃镜下活组织检查

28

\-1199.09

手术后恶性肿瘤化学治疗

35

436.03

近期产科会阴裂伤修补术

23

69.99

姑息性化疗

35

\-29.94

呼吸机治疗\[小于96小时\]

22

1970.05

输尿管结石伴有积水和感染

34

\-999.68

毫针治疗

20

\-331.67

盈利科室：

出院科室

病例数

总盈亏

平均盈亏

总费用均值

盈亏率

重症医学科

37

79826.97

2157.49

21994.94

9.81

心血管内科一区

223

336842.76

1510.51

8583.66

17.6

胃肠肛肠疝外科

78

77627.95

995.23

11117.55

8.95

妇科

57

51630.35

905.8

10251.06

8.84

关节骨病科

73

63414.65

868.69

10958.17

7.93

心血管内科二区

174

129971.96

746.97

6447.84

11.58

中医科

10

4271.34

427.13

6500.5

6.57

神经内科一区（老年病科）

193

81790.21

423.78

6812.54

6.22

全科医学科

91

32100.8

352.76

4384.34

8.05

感染内科

29

10041.44

346.26

4494.87

7.7

儿科

106

35169.42

331.79

2206.87

15.03

呼吸与危重症医学科

174

46257.25

265.85

5966.88

4.46

康复医学科

30

5363.13

178.77

7332.9

2.44

脊柱外科

87

9770.74

112.31

8703.87

1.29

内分泌风湿免疫肾内科

113

10489.45

92.83

6337.1

1.46

亏损科室：

出院科室

病例数

总盈亏

平均盈亏

总费用均值

盈亏率

眼科

101

\-120596.8

\-1194.03

7196.02

\-16.59

神经外科二区

42

\-46571.81

\-1108.85

13585.02

\-8.16

神经内科二区

122

\-83134.28

\-681.43

9739.98

\-7

肿瘤科二区

119

\-79903.63

\-671.46

9041.81

\-7.43

泌尿外科

159

\-105511.75

\-663.6

10974.81

\-6.05

神经外科一区

68

\-35117.79

\-516.44

11634.13

\-4.44

消化内科

206

\-73524.48

\-356.91

5322.29

\-6.71

产科

46

\-15268.79

\-331.93

4499.32

\-7.38

创伤骨科二区

76

\-23826.02

\-313.5

8964.36

\-3.5

耳鼻咽喉头颈外科

115

\-32618.95

\-283.64

5530.18

\-5.13

肿瘤科一区

95

\-24617.53

\-259.13

8088.71

\-3.2

皮肤科

51

\-12886.4

\-252.67

3317.79

\-7.62

胸甲状腺乳腺血管外科

68

\-11471.34

\-168.7

9819.07

\-1.72

肝胆胰外科

75

\-11967.47

\-159.57

7038.44

\-2.27

创伤骨科一区

59

\-3170.42

\-53.74

6646.14

\-0.81

病种的盈亏趋势：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTw2roxOftxwOWSedQq0fzhP7fZhSjptGUpdibRCWnE2LoZnOXw6tga7KibW8pNoQzPhLAaDdEND4bQ/640?wx_fmt=png)

病种的累计盈亏情况：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTw2roxOftxwOWSedQq0fzhSPQ9G2AE8v8HTsSIV04658HND5drsw8ibV34Rg9wdvMIia0ybEFicbsRg/640?wx_fmt=png)

病种盈亏散点图：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTw2roxOftxwOWSedQq0fzhXj7tl8ckVFUaD0FLsN9Jpc5ViagRoc5OicBeSb4uKxj69xsWGy8jia6lA/640?wx_fmt=png)

盈亏科室对比分布：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTw2roxOftxwOWSedQq0fzh9QTjRicI6PicCu4sfhI7znlM2kBwoVXQ4nnn4iaHwiccBRibibkgV6mZFPNw/640?wx_fmt=png)

### 3讨论

盈利分析是医院运营常规工作，上述分析可以为医院管理提供数据支撑。针对分析结果，医院可以采取一定的措施，如增加高盈利诊断的收治比例；针对高亏损病种进行成本效益分析，进行成本控制；强化科室发展，重点发展盈利能力强且符合医院战略的专科。辅助流程优化，提高手术室和特殊治疗设备的利用率等。

系列文章：

[智慧医院管理案例（精选）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486555&idx=1&sn=5211f8f1e9c23d70afa7fc0c8795dfad&scene=21#wechat_redirect)

[某医院DIP病种分析简报](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486799&idx=1&sn=8756d7d910bd83427faf565b4676a32a&scene=21#wechat_redirect)

[一键制作医院运营分析报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486766&idx=1&sn=27a4f4bc9d88beb39f622c4d681806df&scene=21#wechat_redirect)

[集团医院月度运营分析报告模版](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486654&idx=1&sn=a1a705c280d67c3daaccff5eb0a0cc5f&scene=21#wechat_redirect)

[医院运营月度分析报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486530&idx=1&sn=ecd4df8e0efc030c8a5218687d847673&scene=21#wechat_redirect)

[医院质量与安全管理分析报告样例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486458&idx=1&sn=89dd4becee04413de04026dbd1a8188f&scene=21#wechat_redirect)

[病种分析统计样表](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486353&idx=2&sn=fa6889dc1ba36a85579cc7f82a28ef3e&scene=21#wechat_redirect)

[医疗指标目标管理的图形化方法](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486331&idx=1&sn=f843230259af2a6c65ff5b9bc75db6a8&scene=21#wechat_redirect)

[医院运营疾病谱分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486815&idx=1&sn=b94f41396d12c52f13400cde64958c91&scene=21#wechat_redirect)

[病种分布可视化（旭日图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486809&idx=1&sn=5423fe9b340baea81273c1a163ba31c3&scene=21#wechat_redirect)

[病种费用分布可视化（云雨图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486791&idx=1&sn=6428ead198c1ab91ea49131c525f196f&scene=21#wechat_redirect)

[医院运营分析科室病种比较（森林图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486754&idx=1&sn=54c5b33b6f1dd9c122add9fc28e6d824&scene=21#wechat_redirect)

[住院患者费用极高病例影响因素图示（森林图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486772&idx=1&sn=5392f639dfe5c2e43f9d68847e32ca16&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言