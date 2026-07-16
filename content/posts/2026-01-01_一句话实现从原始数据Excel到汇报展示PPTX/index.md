---
title: "一句话实现从原始数据Excel到汇报展示PPTX"
date: 2026-01-01
draft: false
tags: [医院运营, 数据分析, AI]
categories: ["医院运营"]
---
     一句话实现从原始数据Excel到汇报展示PPTX \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

一句话实现从原始数据Excel到汇报展示PPTX
========================

原创 Hi您好 恒健知行 2026-05-18 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/Germ8xMLm6FMKjl-cmDeSA](https://mp.weixin.qq.com/s/Germ8xMLm6FMKjl-cmDeSA)

医院运营管理工作是从数据开始的，每天面对很多Excel表达，如何统计CMI、RW已经十分头疼，统计完数据还需要制作Word,PPT用于汇报。现在有了人工智能大模型，掌握使用这些大模型可以让我们从这些繁杂的日常解脱出来。今天介绍一种极客方法，一句话实现从原始数据Excel到汇报展示PPTX。

1.效果演示
======

假设已有“门诊数据分析结果\_2023.xlsx”门诊运营统计表，每个sheet页情况如下图所示：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMaXyblyIgIoEcDB8MxCRQVGaJrV60QQOqJHAw2q1G7GmicnwegFPC2by28EpBvDKVeq1uib8aJQNh1px8ibDKDjLujKhSlBmhtwA/640?wx_fmt=png&from=appmsg)

表格记录了门诊部分核心指标，科室排名、医生排名、预约挂号情况及挂号的时间趋势等。通过以上统计情况，我们需要通过PPT的方式对上述门诊运营情况进行集中展示。

一句话：

    多维度分析“门诊数据分析结果_2023.xlsx”,并以PPT形式表达

输出结果：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPu3wfSa3jibQwq7bCzjOejaTicmXOLtmqbj6R3hyPbZicogvD7eM4SZTHEkVNXjKoQoib4fN9dLJSNVqbs1qu8FGt3EwWo6G2IYKg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO8hnkMxIm2mMefxA3RYQwhyUoDZbh2BjA9GrzXG5BWXfrnVHoEfLuqdnvexviayEDOm0ZMMdSZUgHuIpGgxnV5fOPI6ic7ozLDM/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOhUlfASticZcfDw48NsuiaaybOOXJbTS4ekPVWhT5LqibxKo8ZdZWFlgjwfviaXoQoKoMPSo7HdBCxkP4z28iaicGrvLfAkibdZoEsz0/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZORDKrXcuzOOjSfZDkyMJJ3EhoTY05pOXjc2egO8IkqIhWCJDj8TrI3nEDwXCGnfeJCRZHNxASYPGYcjChoqWicAh7TF8ybWh3o/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNIe6ykUEOIxvK8mPtw1iaDyb4M4z0K9xZtcnjpW8CgM3W3QiaNh5Zicfecn2kUWqicQTMecS5kvNP7gByFKqVp48p62GkGP1fByNE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOyOEr9WwhdFLyHiaLIcJ1p0XxWTUjwMKhyHVFANRzbhPahOicFmxiaxkcJJZYMYXOlJ88opHPgAkFgx0738Ly6Kty2Zu3tde9ZTw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZN040Yibc2YrvUwtbe31p5VoGFsgylRXeGur8N9vrIAj0N8P7RicyZd2dLjeP9tfkD7qOPia2Fy6UHP8eeEPLQz8wjJQK70IJlHQU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNCMphw0Sicoibviadp3m52vMLAkDfnrP1VWxAP38L9ocu8co3vdHX4R1AnibcvtXSYzN1GcEpFcicbxu1iawMe41ZKVdqj4ibjRMQYlo/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMPvfpibvJCbmiaI942NnGYBfy8SmVwiaRl8aZCkgqkeA6dO9J2drUmYUqm7sf5c8RDicVrxG9Hm7l3mpBnA32SXDAcgiaibVe0xITQc/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPRB4RgU8JhRvlZdicfr0oW29bVt88oQut7oQkRUkB5Y7taYG017I2LDQ7e6SZ8iaiaRCU4iaztm1p4pY4g1Z6j2N5g1pq5Dd4PjWw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN3JGPR32Mnc8rWCranyrI9nbbicBxNK6krM52gxZF18GEm4iaggbreOdFxuPZOAPPTTuoFBBnRnLjr3b9z7Z4xrrwbh9fnSjjjg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOycztI9Cr0pyW6fgoIk60ibyxsTSQOiaKtBicORFKw6c01PXToDj1wbnpwDwiaEoK93icgPl3MpOzeTKJFsVmMoWzZ39G8cmb9xoQM/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPwutDXLf6b2mwQP05Z714libTZ24JJ63uA2FmotZLqYFh5se9wfEKSyhZ25Z61k2WFNvzISjibUILSIuXBfKqbGOmnn0EyobuicU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNyRxnZlxT4rnFlr8q7F4xB7mJN5AqxiaczRvw7zympnK9XdlR4mLW7LgkWkysFB8YiaOmn8ThjrXubTh4tx1pLdH9c4wmRAutfQ/640?wx_fmt=png&from=appmsg)

2.方法原理
======

具体的方法在[PPT展示研究进展汇报](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508250&idx=1&sn=8b861305ef8735e46d4a2412e8adbeee&scene=21#wechat_redirect)一文中已经提及，采用的是直接生成PPTX格式的方案，即使用pptxgenjs (底层渲染引擎)进行直接渲染PPT的模式，中间引入一些Charts.js等图表架构。最后用编制一个compiles.js编译生成PPT。我这里将PPTXgenjs进行了调用封装成一个skill。这个skill将Excel到数据分析，再到PPTX展示的完整通道进行了打通。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMA1y3orfDgicVLPJ51cC4mneGgmeTFAWP8H496ox2wqR3JqUHbFAX5jicMTbfkyc8oGe9JxMjvTlxFoVMGoCSjMTDSQeeXlJOJQ/640?wx_fmt=png&from=appmsg)

3.不足
====

截止目前生成的PPT仍然有一些瑕疵，如图表超长PPT边界、组件对不齐等问题，所以生成的PPT仍需简单微调。但瑕不掩瑜，这个方案直接生成PPT就是考虑到我们通常对AI生成的PPT都需要根据自己的需要进行调整。

3.成果

截至成稿时间，本方案已经生成了：
----------------

[医院2025年度分析报告模版【可取】](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508284&idx=1&sn=96ffe34bfe5b7e2628d04d5d2ebab556&scene=21#wechat_redirect)

[某院半年度运营分析可视化模版【可下载】](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508232&idx=1&sn=6f832d358ecfb6d7215d7976ea632935&scene=21#wechat_redirect)

[门诊、住院及手术业务分析PPT模版【可下载】](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508146&idx=2&sn=a4225e5f5fa40d0d330225c1a7211cf1&scene=21#wechat_redirect)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言