---
title: "PPT展示研究进展汇报"
date: 2026-01-01
draft: false
tags: [医院运营, AI]
categories: ["医院运营"]
---
     PPT展示研究进展汇报 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

PPT展示研究进展汇报
===========

原创 Hi您好 恒健知行 2026-05-14 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/kZu7plKogryBVp0qwYIaPA](https://mp.weixin.qq.com/s/kZu7plKogryBVp0qwYIaPA)

很高清最近两篇用AI做的PPT深受医疗圈朋友认可和欢迎，

[某院半年度运营分析可视化模版【可下载】](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508232&idx=1&sn=6f832d358ecfb6d7215d7976ea632935&scene=21#wechat_redirect)

[医院运营分析汇报PPT模版](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508080&idx=1&sn=0f95dbaac11c1ffe0a830f67d4658941&scene=21#wechat_redirect)

最近一直在研究AI做PPT，现在有一些认识和进展和大家分享下：

1、AI做PPT的认识
===========

从付费角度有付费智能体如Gamma，manus,Skywork，这些智能体做的PPT还是不错的，国内的豆包、Kimi也都有做PPT也是类似的模式。

另一类开源的模式，这一类是自己手搓，但需要大模型tokens，适合技术流和极客。我这里尝试了guizang-skill,ppt-master,html-ppt-skill等。这些的特点都是生成html格式的预览，你如果要PPT还得转。

另外有直接生成PPT的，如Minimax-ppt skill等。现在来看html在互联网上在技术流上是趋势。但用户端的反馈是用PPT，因为有修改的需求。

2、自己研究的进展
=========

我这里尝试了两种方式：

（1）html格式slides
---------------

第一种用 SvelteKit+Reveal.js 的模式，Reveal是一个广泛的制作html格式的slides的技术底层。上面一些开源的也是用到的.具体的例子：

[门诊、住院及手术业务分析PPT模版【可下载】](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508146&idx=2&sn=a4225e5f5fa40d0d330225c1a7211cf1&scene=21#wechat_redirect)

这个结果是图片格式的，没法编辑。目前这个路径还在研究，在制作一些模版，例如：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOib4ficoYDzQlhTaFZ5Sd9NsPp0MqcPqTmHo2IOqwf2GU5JC6YHK2NDFSmMUA3wadxLb8ib0XNzbkBECdLuia5PFUYhNNIxTJ1SJA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNeFwVsicHxZIOYQFA9DDibmK5lr8biac4h3Rufq9n1t9IW9DMdxeeEn8HwicWy4ibliapaBsFCwCCd5Zic8Lmgxlenhe3FnmxgJgorag/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZP5ibHD8lbv2levQnuTiaEHlk2Iiak7BM4jDorIPsWURKuq4z5YaPMYX2Ggx5MX2fqicehB9klGASNyFP1BKV4a19icQ2WJwSNFhibQI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPiaVCEEL2HNSMtOta4CiaT6KsoG5zel7h3eso5X9SlicHz0faCbVwKlW9t64aAnZ9R51icSTEcc4qY6icoIGcatFlrw0ibkibtmEohKc/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMcX0Fl6FgyQUqpHybYRmQ6WQMUrn3BibDAA1szcydp5ZtETJKCIs2hW6TibzVfq3lod8dRfzBhcr9MSWoMS1iaelibfJvespj4aDA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN2gRctxu6XzYXawEXIPaehrhfVSz2jOtmHYibsJxiagtOLHbMibg6Z16YFRBzbibGgqyXo4yCafCIlJsyCJPHXXOohaXzuk9E9rzg/640?wx_fmt=png&from=appmsg)

（2）直接生成PPTX格式
-------------

该模式是使用pptxgenjs (底层渲染引擎)进行直接渲染PPT的模式，中间引入一些Charts.js等图表架构。最后用编制一个compiles.js编译生成PPT。这种模式生成的就是PPTX，但布局容易乱，我们看看模版：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMFMzNw7jGwLGIW835JqKQWfJCfkOhs4icibYmKRFAhmmU1BICzYIFKm1fvI3KF9sWGjJOwJ82bej1cgzFPZ9mXbIIvmpxeib62hI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOQjOjWGYIzIjcHogPKsGhl0QRH26tSFicSmTETyAdIdQKCTicz680mCvSyAFr8AcI6SBTIAKbV4EQXiar6kKibGfZu56NhY2M08YE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOkR6zLtdgebcDYncDVlV8913jXQ5O15r9nURKxZDef8F0LcRQ9ibzD0JkzpapFzn0QL7ZywqqJBicQPm0r4r2NX9oW9C84CucOs/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOFRxLKT7BAOJbg3eTG7AibzXVJ7VaNRSItfE23DBSiaQXXV8mV6CBwQCRhictupwCaIEfResKLrC0ias9ibPvPM7dBOLGnS5R2Ihak/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPbgzmOH1KNp46cmrpmomdDoIZXicBLxBETbb7FtFgn9rlTTt3mDWuFyq6nTojOXvQ2grmqqjBITiaeHa1FOF5ympibcaPJxuaTJQ/640?wx_fmt=png&from=appmsg)

总之，数据的展示呈现是一个策略，好的展示更容易让人接受。PPT是呈现的重要方式之一，探索PPT制作仍在路上。

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言