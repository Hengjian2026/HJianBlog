---
title: "医院运营决策之门急诊工作量仪表盘  大模型写代码实现仪表系统开发教程"
date: 2026-01-01
draft: false
tags: [医院运营, 数据分析]
categories: ["医院运营"]
---
     医院运营决策之门急诊工作量仪表盘——大模型写代码实现仪表系统开发教程 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营决策之门急诊工作量仪表盘——大模型写代码实现仪表系统开发教程
==================================

原创 Hi您好 恒健知行 2026-03-03 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/dBKh\_4jlJW-Fnl0l9SCsaA](https://mp.weixin.qq.com/s/dBKh_4jlJW-Fnl0l9SCsaA)

基于大模型的手术分析仪表盘设计文章之后，有朋友让录个视频，为了赶公众号产量，这里以新的门急诊工作量分析的仪表盘设计为例，搭配视频一步步来看如何通过Deepseek大模型写代码完成系统开发的。首先声明，仪表盘是基于统计软件R的shiny包完成的。所以下面的工作前提是你的本地已经安装了统计软件R（现在应该是4.5.2版），还有Rstudio（R编辑器，方便预览效果），以及相关的R包（Deepseek会提示需要安装的R包）。确保已安装所有依赖包：

    install.packages(c("shiny", "shinydashboard", "tidyverse", "plotly", "DT", "lubridate", "scales"))

  

第一步：与Deepseek沟通需求
=================

1.你的提问：

将要统计的指标、分析的维度，系统的设想等发给Deepseek，让Deepseek给出系统设计。

2.Deepseek输出

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN1Bib1II7NvYn09kJKwb0YowY4Jol5S16XnTPIwfkxu3PMAibuzqfscFrOyFoVsGya1HTdH6hMhvEdeGhib27MVX1ZwYcOofrwPU/640?wx_fmt=png)

如果Deepseek给的设计不满意，可以多轮对话，直至符合你的期望。

第二步：让Deepseek根据设计方案写代码
======================

1.你的提问：

    上述思路很好，请给出一家年度门急诊量在150万的三级医院的门急诊工作量分析仪表盘设计代码，要求：

2.Deepseek写的代码

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOhqhd0LXwzMLEEk4KYEAzq16WEfuKvv0DO0Ygye5fL2H9hpc0QkFicXjxZXtlCflic010paGu9JRRnNNXGjcAib5xH3sc2cTGEIQ/640?wx_fmt=png)

第三步：反复测试代码
==========

这个过程是反复的过程，遇到问题通过与Deepseek多轮对话的方式修复代码。关于写代码和测试代码的过程，可以考虑关掉“深度思考”，这样反应会快一点，这个看情况。

这里假设你已经在电脑上安装了R，Rstudio这两个软件，关于这两个软件的介绍可以参考这几篇文章：

[Part1-医院运营管理之工具篇《R、Rstudio和Deepseek》](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486879&idx=1&sn=90c7a6b6b606431a732fb9d0ecd8fb0f&scene=21#wechat_redirect)

[医院运营管理工具--R数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486941&idx=1&sn=d13fdca8468e08af974cfe26cc78e37b&scene=21#wechat_redirect)

[医院运营管理工具-基于R的统计计算](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486958&idx=1&sn=f4c087f72d6edaaba2963ab775c34e3d&scene=21#wechat_redirect)

1.在Rstudio编辑器里面测试代码，即将Deepseek生成的代码黏贴到Rstudio中进行执行：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMQEshQEsNgrfibe5hHhf2Iib2Nib7QXAJJxEO86nyVJ5RhVjvPianIFnf8hYQiaw1usBibiaKJB3nib2RwJV87iczeSd3iaW7p5kbRwhI2M/640?wx_fmt=png)

如果出现报错，将报错信息贴到Deepseek中，Deepseek会给出修复后的代码，持续测试，反复修改，直至正确执行。

例如错误信息：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMmZSB4C9PRb4gjW07IxzUSxrJJds8aRnCytQyHUTGJaAick9CPSjgk5oKCicGGF1M7ZgSibaYbyEz95nmwQWQqWicoW0GL7Bcic5ro/640?wx_fmt=png)

Deesseek，修复示例：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNLkQrb1DmXjLCXpiaiaGZFnw2Dr7VtSlk5LhpZCYY2x19G3eknljMnyIK2WsEWJ2FkCUARuYQSswYg0BbswzEazsJ2jVI6axpkI/640?wx_fmt=png)

最后：Rstudio中最终效果
===============

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOo5oEZBhNpscVhdeC743bMYmqiaaX9mfUQgKGbEHmcOSReIEhhg0dUuaHRWy83xVr8notQxYofrvcz3R809kXsS2mv8LZP9PmM/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO7pkndYARIWYSkwIcj0UfXFEFtTsQQYD1iaorFTOeYrDib0wZQNicwQOVkia0ZacpqdKX4DnTZgGVS1vptArT1XIj7zuLgLNovW9c/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN46iaZoOMvyO6Go4GKTzma3rLtYiayP6kswCibY4x4SpoibH5TB8iabqyFS7j4Y2gceibicQbdEdaPiaGSPqNr1my447FBS1XRZMnUusE/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOf2K8to1qlm0ygkdruibiaE6gzT0V5xelsMSUedAgCvoYdjsxNVJe5qrLt4LcBK2Y1V6C7huH5L3pVvtW9CfoWh4wy4W9hibCEMI/640?wx_fmt=png)

最后，补一个简单的录屏

  

系列相关文章：

[医院运营管理之手术分析仪表盘](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489663&idx=1&sn=a9231c9403084adb77f893b43a40626a&scene=21#wechat_redirect)

[基于病案数据的运营数据分析系统](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488006&idx=1&sn=674408f6984bcf60ba19a4e35ba11c45&scene=21#wechat_redirect)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言