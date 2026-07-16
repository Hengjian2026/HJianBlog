---
title: "医院基础运营指标仪表盘   从Excel一键到仪表盘"
date: 2026-01-01
draft: false
tags: [医院运营]
categories: ["医院运营"]
---
     医院基础运营指标仪表盘---从Excel一键到仪表盘 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院基础运营指标仪表盘---从Excel一键到仪表盘
==========================

原创 恒健知行 恒健知行 2026-05-29 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/icLjfkTPOzmQ3YE\_uyBFuA](https://mp.weixin.qq.com/s/icLjfkTPOzmQ3YE_uyBFuA)

从Excel到Word分析报告、到PPT汇报材料，这些是日常运营管理工作所涉及到的常规工作。更多的医院通过系统化的方式实现数据呈现，这个时候仪表盘就发挥了作用。

仪表盘的一般路径是从系统提取数据，加工、清洗和装载，再到界面展示，海量数据情况下是通过ETL、数据仓库+前端的方式进行展示。上面听上去是医院信息科在做的事情。

今天进入人工智能时代，我们每个运管人员也可以做自己的仪表盘，你的一个Excel表格数据也可以通过仪表盘进行展示。这种方式改变了我们以往的使用Excel模式，以前你在Excel中制作一个仪表盘，通过数据联动改变仪表盘的展示方式会非常负值，能够使用Excel做仪表盘才能称之为“熟悉”Excel。但现在，你使用Deepseek等大模型，一句话或者一段提示词，就可以实现之前频繁拖动Excel图表组件的操作效果。

[医疗质量管理仪表盘](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508554&idx=1&sn=70a1000fd1bf9baae51b58076aebdc0a&scene=21#wechat_redirect)

[医院运营决策之门急诊工作量仪表盘——大模型写代码实现仪表系统开发教程](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489677&idx=1&sn=683726080bf183b90cb3f7cd983e7a8b&scene=21#wechat_redirect)

[医院运营管理之手术分析仪表盘](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247489663&idx=1&sn=a9231c9403084adb77f893b43a40626a&scene=21#wechat_redirect)

[医院运营病种视角的多维度分析（驾驶舱仪表盘)](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486889&idx=1&sn=99eef95b58dda6d31845390a1a5a0879&scene=21#wechat_redirect)

上面几篇文章都是关于仪表盘制作的，之前还在使用一些R语音技术制作，依赖R，Rstudio软件。最近Claude code将html替代markdown文件格式作为大模型的标准数据文件，因为其可以承载更多的数据信息。同样的道理，我们使用html来制作仪表盘，数据传给大模型，然后命令它：

    根据提供的Excel数据，给出全面的分析维度，设计一个可视化仪表盘，

简单的一个命令就可以得到一个html文件，浏览器打开就是一个仪表盘，当然如果你是计算机工程师，或许可以加上后台数据库配置，链接相关数据库，实现仪表盘的按时间更新的动态变化。

下面是一个基于医院常见运营指标的仪表盘效果，仅供参考：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOseYKcLhiam3UaibfLSphs8qpiaGiatD8Gnn0kCWS6OPFhWgjs1iamia3ia1A8A9gIicN10ibjZNGeIiauvsAQKLcm1J00N6aF6P3nbTibuY/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP3HwRoO9UL9MbjCR8XbCYo2ECbJvibHtNtt5ibTgKHvBLxTzHbSMkds3yPgtwicFObs7TPxIEoph0urAFmY9SWOiawiaGK8tgVMIa0/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPVrvX0Mz6sI3NdF1ZZeHCpKSwwVKiaGPqvQlRXBjqVJAwDzzoASDQz8NdiaxtH3yNS6EMf2Pl3vTcPNEVn8Fe3GJHpqUxnme5kQ/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMakE2w7RK4N1Tk5gk0pNe3oWiaZOjRhMreaoQ6ic4Mwb7eMR8SkCzjVD6HtciaMicmM8fLIpoGMOINOsMT875JsgjR203mictEruc8/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP0Em5zHc14a0Z3gSIhJpS3kNM5O6Zcqhia42MuJSu7PyVsbNRFwykQbYtswOhqKicPRfXR599SJepYaxy98sDwypRkLic2t8JJBI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMQobLeh9ZkBQCLj5PDyp0AiaHTwzwSYEk2mhiao7pI5CJgWNpqUJibEf8X4Wc36GhpULaltXYYvmic1DNjaicxxCV3F0KanHZCN8Rk/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOdDP2y4TFYhdyqDC2RDemeafX6wVn0XBSbnicjmibiaggyCLZs0lUZF5EBfgetsnSr5EoCBQO7v15x5urORJVjqOZ1Ys9kW8Tkbw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPibL1ic9XnZAfkoSvyQ4PGLZaROdbPNs6h7D5SscWvOH2Wpr1MOEycicYj0tD0FdichibahWafjRgaI6fyYCe2YXuan5Gv7tIPjb2g/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZM9pAcwcibSJgqc5TW6PBGjib20TVBs9BaQUQgZMKUU1ajfUXfsrVlC271QFFiawuDqQrsibHY5RwlU4icS6wk9wDsU1nJqHAF9Fezo/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNvpfGibpZLoIgWiaiaW9rxWjqmMD8j5NfpZEz3NNeoywWLYtaZLHaXibLLYy4JQCnv5zeZ2tg1YRYgKqO4JEa0dOv8tIQ3iaatHqjg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMLM9rM0NDwXot5ibGsv3DK3YpxLXxANQiaxN3h3pKBJDOz7HUgiago2vJ2VjrPvJdhoibXnO9ZwmUTVv8KvWoAQ1tdavqKQKwbECM/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNzMgfUaibewGWZrYm9QiashyYMApsKeDWwf9H5LgLVZjjnullvXH0bh014EqI3x54B0icHNtNajetZ5uhibFicLe590qZ0sl6JBeb4/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOWYQEnEyA5Fd6v2uO8SbKPnqsnf0Q979eOOzhvcf8ZXJlGVw4RL6niafPraTuthS5vO84tSDCibO39TQcb1UA9AiagvicurIc8L1U/640?wx_fmt=png&from=appmsg)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言