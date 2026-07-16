---
title: "耳鼻喉科DRG运营分析报告"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 数据分析, AI]
categories: ["医院运营"]
---
     耳鼻喉科DRG运营分析报告 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

耳鼻喉科DRG运营分析报告
=============

原创 Hi您好 恒健知行 2026-02-26 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/6pIFE70n5o2Pu9wloHG5ag](https://mp.weixin.qq.com/s/6pIFE70n5o2Pu9wloHG5ag)

一、分析思路与框架
=========

本报告基于耳鼻喉科DRG数据，从以下四个维度进行深度剖析：

*   DRG病种分析：识别核心DRG病种，构建波士顿矩阵评估绩效，分析费用离散度以优化临床路径。
    
*   并发症分析：量化并发症数量对医疗资源消耗的影响，绘制热力图和网络图揭示共病规律。
    
*   手术专项分析：针对耳鼻喉科手术科室特点，分析手术级别、手术率及手术费用结构。
    
*   科室运营与质量：对比两病区运营指标，监测质量安全，描绘患者画像。
    

二、DRG病种分析
=========

图1：核心DRG病种 Top 10 分布

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNJkVADcw8x1qRpibVq3DVDDuDV9DbOkdzZKU64Tolw9eO7jo8iaJ0SYjHPL97KeZa2Wqo8YYxU8vIiafIv9ibHoGW0syd38ajr3Ks/640?wx_fmt=png)

科室主要收治头颈恶性肿瘤大手术、鼻腔鼻窦手术、中耳/内耳手术等，体现耳鼻喉科专科特色。

图2：DRG绩效波士顿矩阵

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOGpNhTvbNVMBicZ2C1w4ASYLzHiaicNgiasqKticAp5I66fGSMibX1qofJc7SiatnNqSUPmNicWGgSKlzxjfvbrOIpctM7ePEFWPRF7nY/640?wx_fmt=png)

右上角为“低效区”（高费长住病种），需重点优化；右下角为优势病种，应巩固优势。

图3：Top 5 DRG费用分布

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMudRYqr2RJm4uzpgbwO14ic5Ab0t7QyZSaVpny2knWJlH3QkcCjvQvHzUcu7QP8JRgAwW4cCy9jaaRicgicFiaMuotgR5vBCicpBGw/640?wx_fmt=png)

观察箱体长度，头颈恶性肿瘤大手术费用离散度大，提示可能存在资源使用差异。

表1：超长住院预警

DRG病种

  

平均住院日

预警阈值

超长例数

超长占比

DA19-头颈恶性肿瘤大手术

13.3

35.2

5

0.1

DE19-喉、气管手术

5.3

11.9

9

0.1

DG25-口腔科中手术，不伴并发症与合并症

7.8

16.7

9

0.1

DC29-外耳及耳部其他手术

6.7

15.0

3

0.0

DC19-中耳/内耳手术

8.1

17.2

5

0.0

DS19-平衡失调及听觉障碍

8.3

16.8

4

0.0

DD29-鼻腔、鼻窦手术

7.9

14.4

10

0.0

DE29-扁桃体和/或腺体样切除手术

6.1

9.8

2

0.0

DE20-扁桃体和/或腺体样切除手术，年龄＜17岁

6.3

11.2

2

0.0

DL19-头颈、耳、鼻、咽、口其他特殊的操作

5.6

17.6

1

0.0

  

三、并发症深度透视
=========

图4：并发症数量对费用与住院日的影响

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN3fZuJkurMgHwfbibNiaYVIOoib1BiagKSxu2pC1hTnQbicIaibKzzqhnCnVaLQDbFH3JhtR3pdXVI1OkZstMiaibj5plJkHz55Cs2bUc/640?wx_fmt=png)

并发症数量增加显著推高费用和住院日，多病共存是资源消耗的主因。

图5：主诊DRG与常见并发症关联热力图

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOpm1G3bcEgw7tic5bWSUDLET4nJmXz9GiaE4TKeBncNo8y5ribykWascMfaWrkGvgic5ibn5lbYDFDg8pFJyx9ic2ibpKJ6YoNWVeLyA/640?wx_fmt=png)

颜色越深代表关联越强，例如头颈恶性肿瘤常合并高血压、糖尿病，需加强共病管理。

图6：并发症共现网络图

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPwTicEiadTXsbeTSRicafSFibLVMDPbSYyrzjvAiaegYVEjrGeyarViaYwhk7sibU8pibr7NiaNribDwtg8dsV40BmXFkn2s8JqVFpapG6Q/640?wx_fmt=png)

展示了并发症之间的“抱团”现象，帮助识别核心共病群组。

表2：常见并发症统计

并发症名称

  

发生例数

非胰岛素依赖型糖尿病不伴有并发症

151

鼻息肉

143

鼻中隔偏曲

141

高血压3级

97

变应性鼻炎

66

高血压1级

65

喉恶性肿瘤个人史

60

特发性(原发性)高血压

59

慢性鼻窦炎

56

慢性咽炎

55

  

四、手术专项分析
========

图10：手术级别分布

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOYRIt0fVHFCm3knlH5hpSn4sF7Vm9Gsl6eNmRic5Hd8sibbp98bGQnKELt3EtQVBA67M2nEibapVQhJlhjnmIp5ZwqDokWRElr2A/640?wx_fmt=png)

耳鼻喉科手术以三、四级手术为主，体现科室技术难度。

图8：费用结构（含手术费）

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNDa1jvgkdar1ibntUlaXgzXCT0CUpqvgpfaCp9p4R1NzVsmiaRsian6Pznf6PGbk86lUF9iaM4REpkYkiaCKc4keXUmCEGuL2XTia8M/640?wx_fmt=png)

手术麻醉费占比显著，符合手术科室特征，可进一步分析耗材占比。

图7：两病区运营指标对比

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMBLpWMEXFjzAcHV96mpmicefg8fgm5Gga0XZKdXglHChBpw8zzfRnicf2qGc82rQq9jotMX7Pm9wG6iaL5OwgFNOMLZ4WveEU7Tc/640?wx_fmt=png)

对比两病区的平均住院日、次均费用、手术率等，识别运营差异。

图9：Top 1 DRG病种住院日分布

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOlnuHOlqAIEVrSCpukicJUzE0piaV2Hl9uaG6P6UpibricAjnxWWnpsBJrVOAt3SscwatfUM6MeKqEWpOxAcYQoWM2wnMu8n1MSNM/640?wx_fmt=png)

针对同一DRG病种，对比两病区的住院日分布形态，发现效率差异。

表3：科室运营概览表

科室

  

出院人次

平均住院日

次均费用(元)

药占比

手术率

耳鼻咽喉科一区

1,268

8.71

10,724.96

0.25

0.78

耳鼻咽喉科二区

1,084

7.83

15,890.47

0.15

0.78

  

五、质量安全与患者画像
===========

图12：质量与安全指标

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNNzaFhbVdQYD007XBOmJfVCpxibxZGIRzulx32Ts1Ykbp0C8FA9NBdWD9Dibgnv6vDNJA6A0PZn0JeJI50ibLLicElr6MibfhKgPJc/640?wx_fmt=png)

监控抗生素使用率、非医嘱离院率及死亡率，越低越好。

图13：患者转归分布

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMHPmhNfXRmltZjZ9WFEH2lGvU3aDzJqZHBAGBia8wnc2HFrc5vaQyyoGQPXPlsjPfbXHQF8OfXbqQ62KjXp02picOBNWtyl4ibqs/640?wx_fmt=png)

绝大多数患者为医嘱离院，转归良好。

图14：患者年龄性别分布

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOkn7N9DMk6nGOzU5xlGEaviaLRNwLecMGsSnJMR7iavll22jCk1AFWLQEPsnFrloZ7uppF5raesuhLHbQaC8z7jRBkPcAxXFAE4/640?wx_fmt=png)

耳鼻喉科患者年龄分布广泛，中老年占比较高，儿童亦有一定比例。

图11：月度入院人次趋势

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPfw8NciaXxXmeDCFHhuya5puUJibW0MWjzrS6UCKsGIJyLBdiak7z3ibgt0RuC2PsGhzYex4DgxMO464HDY4C8iaOzpNB6wskZkvfQ/640?wx_fmt=png)

观察全年入院人次波动，为资源配置提供参考。

  

科室系列分析

[医院运营数据分析以甲乳外科为例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489542&idx=2&sn=5c0423202d34c50049b94dac7e7777ab&scene=21#wechat_redirect)

[医院运营管理之感染科病种费用分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489512&idx=1&sn=906d5a4d52595eacfee1f71795b7205a&scene=21#wechat_redirect)

[医院运营管理之呼吸科运营数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489499&idx=1&sn=9fac0596bc8381ec2874e08b0534b029&scene=21#wechat_redirect)

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