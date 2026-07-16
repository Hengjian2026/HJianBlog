---
title: "门诊管理之费用分析"
date: 2026-01-01
draft: false
tags: [医院运营]
categories: ["医院运营"]
---
     门诊管理之费用分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

门诊管理之费用分析
=========

原创 Hi您好 恒健知行 2025-11-13 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/910pih7\_LyF8xslMWwvo\_w](https://mp.weixin.qq.com/s/910pih7_LyF8xslMWwvo_w)

1.数据简介

我们对门诊患者经常会分类型进行统计，尤其是医保患者，我们需要统计哪类医保患者的就诊人次多？费用多？均次费多？药占比情况怎么样？如下表所示，下表中，对病人进行分类统计、不同分类还有子类。

病人类型

统计项目

就诊人次

总金额

药费金额

均次费

均次药费

药品比例

农合

农合普通

46

5447.89

3218.14

118.43

69.96

59.07

农合

居保留观

7

1016.53

753.25

145.22

107.61

74.1

农合

农合合计

53

6464.42

3971.39

121.97

74.93

61.43

少儿

少儿普通

16

1874.96

950.7

117.19

59.42

50.71

少儿

少儿留观

3

2000

690

666.67

230

34.5

少儿

少儿合计

16

1874.96

950.7

117.19

59.42

50.71

医保

医保普通

1042

172839.88

98839.18

165.87

94.86

57.19

医保

医保留观

69

11231.45

7256.2

162.77

105.16

64.61

医保

医保合计

1111

184071.33

106095.38

165.68

95.5

57.64

自费

自费普通

292

41758.87

19473.62

143.01

66.69

46.63

自费

自费留观

32

3445.44

2611.39

107.67

81.61

75.79

自费

自费合计

324

45204.31

22085.01

139.52

68.16

48.86

2.病人类型分析

针对上表，我们还有一些可视化分析的方式进行直观展示数据的情况。如就病人类型维度，我们可以看农合、医保、少儿、自费等维度下的就诊人次、总费用、均次费、药占比情况。也可以查看不同类型患者的药品费情况。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSMqAQ2uQiba416HvHRHMQibibiaFiaa14aVUnHnLQIddj8sNZ59G0LkibTpd1jsYc1gcJR7m0OFjian760w/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSMqAQ2uQiba416HvHRHMQibibicLp43bQLZV2yUS2dzd0GbjFpCfKR356x01ScYoPBGDOow58W3GWzKg/640?wx_fmt=png)3.普通患者VS留观患者比较

同样，我们可以比较普通患者和留观患者。模拟的数据有一些有意思的现象：可以发现少儿留观患者的均次费很高，但药占比确不大。自费患者留观的均次费较少，但药占比却很多等现象。真实世界是否存在类似的情况?

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSMqAQ2uQiba416HvHRHMQibibYuqCQvFCsiak4myZvS8J5mmoQ87NHIbvJfVW6l1mN6uY0qTLjGsM7mA/640?wx_fmt=png)

4.病人类型矩阵分布

我们以均次费为X轴，药占比和均次药费作为Y轴，绘气泡图，我们可以发现很明显的矩阵分布规律：

（1）医保患者：均次费、均次药费、药占比都很高

（2）自费患者：均次费中等、药占比最低；均次药费中下

（3）农合患者：均次费较低，药次药费较高，药占比最高

（4）少儿情况：均次费最低，均次药费由此子弟，药占比中下。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSMqAQ2uQiba416HvHRHMQibibE41LcbHZFrv40rtzMIZVzQXJwDbC7WSRQQvllibTX2BX0ib8JFRu5ewQ/640?wx_fmt=png)

5.整体视角看病人类型

总体来看，我们医保患者最多，自费患者次之，农合患者再次之，最后是少儿患者，各指标表现都最低。这反应某医院患者分布情况。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSMqAQ2uQiba416HvHRHMQibib1eyJ1tWibWRSsaSIaAxpZUx7EAfb5EpbtaExjJQwzIB3LZCPPJtEcow/640?wx_fmt=png)

附系列文章：

[门诊管理之挂号分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487497&idx=1&sn=9487e54d466345be4bd273baf300fa4f&scene=21#wechat_redirect)

[医院运营管理之入出院患者分析（瀑布图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487455&idx=1&sn=6c0b50572e489ff66c5ff5561a0a4e3a&scene=21#wechat_redirect)

[医院运营管理之床位效率分析（波士顿矩阵图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487317&idx=1&sn=f8905fc339b5da6cb9e48327475930f2&scene=21#wechat_redirect)

[医院运营管理之科室视角的排名问题（条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487286&idx=1&sn=8ef2038e0f499ebabacc6d1953626a79&scene=21#wechat_redirect)

[医院运营管理手术盈亏分析（矩阵气泡图改进表达）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487279&idx=1&sn=52c9bcbe5dd0bd826c5884e3807965db&scene=21#wechat_redirect)

[医院运营管理之基于数据的相似科室分析（聚类图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487252&idx=1&sn=cf27f8f12ba4e5982d0755214b38ad05&scene=21#wechat_redirect)

[医院运营管理之患者住院空间布局（热力图、桑基图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486970&idx=1&sn=f5b3a54944df4fb98e35138865ac8d7c&scene=21#wechat_redirect)

[医院运营管理之期初期末比较（斜坡图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486964&idx=1&sn=09d02602b59ec1d91778a3e5db182d56&scene=21#wechat_redirect)

[医院运营病种视角的多维度分析（驾驶舱仪表盘)](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486889&idx=1&sn=99eef95b58dda6d31845390a1a5a0879&scene=21#wechat_redirect)

[医院运营管理病种与科室关联展示（组合图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486847&idx=1&sn=0c981e69f60b726660ac9897d2342cc2&scene=21#wechat_redirect)

[医院运营疾病谱分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486815&idx=1&sn=b94f41396d12c52f13400cde64958c91&scene=21#wechat_redirect)

[病种分布可视化（旭日图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486809&idx=1&sn=5423fe9b340baea81273c1a163ba31c3&scene=21#wechat_redirect)

[病种费用分布可视化（云雨图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486791&idx=1&sn=6428ead198c1ab91ea49131c525f196f&scene=21#wechat_redirect)

[医院运营分析科室病种比较（森林图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486754&idx=1&sn=54c5b33b6f1dd9c122add9fc28e6d824&scene=21#wechat_redirect)

[住院患者费用极高病例影响因素图示（森林图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486772&idx=1&sn=5392f639dfe5c2e43f9d68847e32ca16&scene=21#wechat_redirect)

[科室运营分析之病种动态分析（动态条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486725&idx=1&sn=6ed61c865f257f2c0ddef4a20089469c&scene=21#wechat_redirect)

[医院运营分析之病种费用分组比较（小提琴图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486719&idx=1&sn=5fcc2823a21332a7bf0dc4fb829bc4f0&scene=21#wechat_redirect)

[病种运营分析之优势科室展示（三维气泡图](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486701&idx=1&sn=ac0e486ab83e6578abaf82be73e256d1&scene=21#wechat_redirect)[）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486701&idx=1&sn=ac0e486ab83e6578abaf82be73e256d1&scene=21#wechat_redirect)

[科室运营分析之优势病种挖掘（矩阵树图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486700&idx=1&sn=52796a0574a3dde2e544ba789bd77522&scene=21#wechat_redirect)

[医院运营管理之差距分析（进度图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486685&idx=1&sn=b94ea7e23013624c07eadabdc6a8467c&scene=21#wechat_redirect)

[医院运营管理之分组比较（堆叠条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486669&idx=1&sn=885a691da1da1b87853dbedb140f1e6c&scene=21#wechat_redirect)

[医院运营管理之分组比较（金字塔图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486668&idx=1&sn=378478a1331f2c52c2be7477451a61e3&scene=21#wechat_redirect)

[数据驱动质量指标质控方法（控制图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486613&idx=1&sn=1d9b40fdfece0fd7021b9c6a2566dca8&scene=21#wechat_redirect)

[医疗质控分析之基于数据的异常值查找（箱线图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486597&idx=1&sn=4ebb5e05f49f5546114fba08722d660c&scene=21#wechat_redirect)

[巧用雷达图进行科室间的指标比较分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486591&idx=1&sn=0240f03af6b3aead46486ccdb3805da0&scene=21#wechat_redirect)（雷达图）

[病种分析的柱形图、折线图表达](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486566&idx=1&sn=0e75826f701cacc5fbbbfa393667b4ca&scene=21#wechat_redirect)（[柱形图、折线图](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486566&idx=1&sn=0e75826f701cacc5fbbbfa393667b4ca&scene=21#wechat_redirect)）

[运营分析方法之（波士顿矩阵图）？](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486543&idx=1&sn=1f91c6278a6019024775b5ddbc30968c&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言