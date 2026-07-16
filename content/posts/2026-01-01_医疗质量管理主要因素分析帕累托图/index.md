---
title: "医疗质量管理主要因素分析（帕累托图）"
date: 2026-01-01
draft: false
tags: [医院运营, 智慧医院]
categories: ["医院运营"]
---
     医疗质量管理主要因素分析（帕累托图） \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医疗质量管理主要因素分析（帕累托图）
==================

原创 Hi您好 恒健知行 2025-10-07 05:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/u72sgI5rTCV4zp-tLGsoYg](https://mp.weixin.qq.com/s/u72sgI5rTCV4zp-tLGsoYg)

医疗质量管理常用的工具是戴明环（PDCA），即针对医疗质量存在的问题进行计划、执行、核查、分析，依次循环持续改进。而医疗质量问题的发掘是比较棘手的难题，帕累托图是对问题进行挖掘的比较常见的定量可视化分析方法。

比如，医院常存储重复出入院的情况，我们根据各科室重复出入院的患者数可以发掘这一情况比较严重的重点科室，甚至深挖到哪个医生；再比如，不良事件上报是医院的常规工作之一，上报的不良事件类型也各不相同，统计各类不良事件发生例次，利用帕累托图即可发现最经常发生的不良事件，然后进行PDCA可以更好的改进不良事件管理。 

1.帕累托图

帕累托图（Pareto Chart）用于显示各类别数据的频数或重要性，通常以降序排列。该图例是以意大利经济学家帕累托（Vilfredo Pareto）的名字命名，常用于质量管理中，利用“二八”原理，帮助识别“关键少数”问题，以便集中资源解决最重要的问题。帕累托图通常由条形图和累积百分比线组成，左侧纵坐标表示频数，右侧纵坐标表示累积频率。通过这种方式，用户可以直观地看到哪些问题最为突出，从而制定相应的改进措施。

下面以上述两个例子，我们用deepseek完成帕累托图的制作。

2.科室重复出入院分析

样例数据帕累托图样例数据.xlsx，可以点击下载。

重复出入院科室分布数据形如：

表1 各科室重复住院情况

科室

人数

累计频率（%）

血液

251

30.9

干部

242

60.8

神经

93

72.3

内分泌

49

78.3

内一科

25

81.4

肿科

23

84.2

骨科

21

86.8

心血管

19

89.1

儿心

17

91.2

呼吸

13

92.8

肿二

10

94.1

消化

8

95.1

肾外

7

95.9

脑外

7

96.8

乳腺

5

97.4

胃肠

4

97.9

针康

3

98.3

风湿

3

98.6

急诊

3

99

ICU

3

99.3

耳鼻喉

2

99.5

妇科

2

99.6

肝胆

1

99.8

泌尿

1

99.9

皮肤

1

99.9

心胸

1

100

Deepseek绘图：

    针对附件sheet1工作表数据，使用 D3.js 绘制帕累托图，并以完整的 HTML 文件形式输出。具体要求如下：

  

效果如下：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSQR0DDmDdp5F4fMJBd2bONXx3NIXLFFJ9PlRsOLEJzLE3efwQvRvaM6WYr4gic1icJsiaYpqHeB0LEQ/640?wx_fmt=png)

上述帕累托图，可以看出血液、干部、神经、内分泌、内一、肿(瘤)科重复住院情况占比就超80%了。管理上重点抓这些科室，尤其是血液、干部两科室即可解决主要问题。

3.不良事件分析

样例数据形如：

表2 不良事件类型分布

不良事件

数量

占比(%)

累计占比(%)

医嘱错误事件

439

43.5

43.5

基础护理不良事件

117

11.6

55.1

辅助检查不良事件

60

5.9

61

医疗文书不良事件

42

4.2

65.2

医疗沟通不良事件

28

2.8

68

病人辨识事件

24

2.4

70.4

医嘱漏执行

23

2.3

72.7

医用耗材不良事件

22

2.2

74.9

手术不良事件

21

2.1

77

医嘱执行错误

18

1.8

78.8

医嘱执行不及时

18

1.8

80.6

Deepseek绘图：

与之前图略有不同，这里我们调整下帕累托图柱子的颜色。

    针对附件sheet2工作表数据，使用 D3.js 绘制帕累托图，并以完整的 HTML 文件形式输出。具体要求如下：

  

结果如下：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSQR0DDmDdp5F4fMJBd2bONSlc3bQIicXhwwxhiblVxia45Xv8dyQk7c5bymrYzNychVpbXfDI4DGmSw/640?wx_fmt=png)

系列文章：

[智慧医院管理案例（精选）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486555&idx=1&sn=5211f8f1e9c23d70afa7fc0c8795dfad&scene=21#wechat_redirect)

[医院运营管理之分组比较（金字塔图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486668&idx=1&sn=378478a1331f2c52c2be7477451a61e3&scene=21#wechat_redirect)

[集团医院月度运营分析报告模版](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486654&idx=1&sn=a1a705c280d67c3daaccff5eb0a0cc5f&scene=21#wechat_redirect)

[数据驱动质量指标质控方法（控制图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486613&idx=1&sn=1d9b40fdfece0fd7021b9c6a2566dca8&scene=21#wechat_redirect)

[医疗质控分析之基于数据的异常值查找（箱线图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486597&idx=1&sn=4ebb5e05f49f5546114fba08722d660c&scene=21#wechat_redirect)

[巧用雷达图进行科室间的指标比较分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486591&idx=1&sn=0240f03af6b3aead46486ccdb3805da0&scene=21#wechat_redirect)

[交互式可视化案例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486583&idx=1&sn=80710795dba7c9ec5bab2305e7493660&scene=21#wechat_redirect)

[病种分析的柱形图、折线图表达](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486566&idx=1&sn=0e75826f701cacc5fbbbfa393667b4ca&scene=21#wechat_redirect)

[运营分析方法之波士顿矩阵图---Deepseek帮忙还需要其他工具吗？](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486543&idx=1&sn=1f91c6278a6019024775b5ddbc30968c&scene=21#wechat_redirect)

[医院运营月度分析报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486530&idx=1&sn=ecd4df8e0efc030c8a5218687d847673&scene=21#wechat_redirect)

[医院质量与安全管理分析报告样例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486458&idx=1&sn=89dd4becee04413de04026dbd1a8188f&scene=21#wechat_redirect)

[病种分析统计样表](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486353&idx=2&sn=fa6889dc1ba36a85579cc7f82a28ef3e&scene=21#wechat_redirect)

[医疗指标目标管理的图形化方法](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486331&idx=1&sn=f843230259af2a6c65ff5b9bc75db6a8&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言