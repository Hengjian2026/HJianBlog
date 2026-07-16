---
title: "数据驱动质量指标质控方法（控制图）"
date: 2026-01-01
draft: false
tags: [医院运营, 智慧医院, 绩效]
categories: ["医院运营"]
---
     数据驱动质量指标质控方法（控制图） \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

数据驱动质量指标质控方法（控制图）
=================

原创 Hi您好 恒健知行 2025-10-01 07:51 安徽

> 原文地址: [https://mp.weixin.qq.com/s/OhkNWo3oWjaUpcEj43iilw](https://mp.weixin.qq.com/s/OhkNWo3oWjaUpcEj43iilw)

1.控制图介绍

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQmvnciawKfkgd31PVdicT4ozSYsZyn0RqVAztibrKdMflqrNgrOnpHQFjrUEMrC5UZKuqyLgYiaqcg0A/640?wx_fmt=png)

控制图是美国的管理大师休哈特首次提出的，它是传统制造业生产过程对产品质量指标进行测量、记录、评估和监察，判断生产流程是否处于控制状态的用统计方法设计的控制图。控制图的组成部分包括了：

（1）上控制线和下控制线：项目经理或者干系人计算出控制上下限，是生产过程是否失控的判断依据；

（2）目标线或中心线：指生产过程的目标质量线；

对于传统制造业的品控，其判断是否失控的规则常有：

（1）超过控制线，当生产过程有一点超过控制线，即认为失控

（2）七点原则，即当连续 7 个数据点落在目标线上方或下方，即认为失控。

（3）连续3点中有2点落在中心线同一侧的2σ限以外。

（4）连续5点中有4点落在中心线同一侧的1σ限以外。

（5）连续6点或更多点持续上升或下降（趋势）。

（6）数据中出现非随机或异常模式。

2.控制图类型

针对统计数据类型，控制图有所拓展，比如针对连续性的度量，或计数的度量等因素控制图衍生出来：平均数与极差控制图、平均数与标准差控制图、中位数与极差控制图、个别值与移动极差控制图、不良率控制图、不良数控制图、缺陷数控制图、单位缺陷数控制图等。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQmvnciawKfkgd31PVdicT4ozZoibiaJlWGDNTNBOtnNRTm4ela1aQCQ9DZ3PibzCIQb97Cb1jbriclbiaFw/640?wx_fmt=png&from=appmsg)

  

关于控制图的选择问题，选择合适的控制图主要取决于所绘制和检查的数据类型。如上图所示，对于计量型数据（连续性的）根据子组数量情况选择单值-移动极差图、 均值-极差图或均值-标准差图。对于计数型数据，选择取决于数据是缺陷数还是缺陷品数

3.医疗质控场景

针对医疗质量管理，某些指标可以使用控制图来监控，如感染率、死亡率、医疗错误、、等待时间、急诊服务响应时间等。

例如，不良事件发生率相对应是计数数据的缺陷率指标，统计每个月度、季度或每周的不良事件发生率，分母数据量总是不一样的，可以选择 U chart控制图来监控不良事件发生率。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQmvnciawKfkgd31PVdicT4oznJKyicmoacIpJqZI5cj5KajlGLrKoVnpLjliaEICNBSTicxWeHHgId2Kg/640?wx_fmt=png)

4.deepseek绘制控制图

我们以样例数据.xlsx为例，数据包括平均住院日、住院费用指标，还有时间指标。我们可以用deeepseek来监控月度医院整体平均住院日、住院费用指标情况，监控是否有突然增加、减少、异动等情况。以平均住院日为例，提示词如下：

    请用控制图分析监控平均住院日,要求：

deepseek会给出完整的思考路径：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQmvnciawKfkgd31PVdicT4ozywtVKuDo1LzmgE1pwEreYwus7iaeBpunATKGtPl2rjMfKXlic9EL5ebg/640?wx_fmt=png&from=appmsg)

完整结果如下图，结果显示样例数据中每个月的平均住院日相对稳定。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQmvnciawKfkgd31PVdicT4ozH3zxZTL8Ny7eD9TLcErXibg8Nbw9NqzHTn2z88biaZyFRyJgb8ibicx6XQ/640?wx_fmt=png&from=appmsg)

  

5.讨论

控制图可以快速识别某种过程是否失控（如某个执行中的管理措施、PDCA执行过程的监控），判断某个管理措施是否有效等。由此，在医疗质量管理方面的应用，可以用于度量医疗质量持续改进措施是否有效。同时也可以看出，它更多是时间维度上捕捉数据的变化情况，可以作为一个简单的跟踪工具，确保改进后的绩效得以长期维持。

对于平均住院日等质控指标来看，监控每周/月医院的平均住院日指标，相当于将这段时间所有病人的住院日加总求平均，样本量相当于每周/月有多少病人，这种情况推荐使用平均数-标准差X-R控制图。如果是对每一个患者的住院日进行监控，由于每个病人是一个监测点，此时可以使用个别值-移动极差控制图X-RmChart。

  

参考文献《A study on the application of control chart in healthcare》 

  

系列文章：

[智慧医院管理案例（精选）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486555&idx=1&sn=5211f8f1e9c23d70afa7fc0c8795dfad&scene=21#wechat_redirect)

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