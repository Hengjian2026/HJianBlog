---
title: "基于大模型构建智能监管两库自查工具"
date: 2026-01-01
draft: false
tags: [AI]
categories: ["医院运营"]
---
     基于大模型构建智能监管两库自查工具 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

基于大模型构建智能监管两库自查工具
=================

原创 恒健知行 恒健知行 2026-06-30 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/GtNoiV9q-nIWQIGtgbMO4g](https://mp.weixin.qq.com/s/GtNoiV9q-nIWQIGtgbMO4g)

[AI赋能运营管理](https://mp.weixin.qq.com/mp/appmsgalbum?__biz=MzkzNjkyNjg1Ng==&action=getalbum&album_id=4362098350821572610#wechat_redirect)

[医院管理之仪表盘开发](https://mp.weixin.qq.com/mp/appmsgalbum?__biz=MzkzNjkyNjg1Ng==&action=getalbum&album_id=4408162654758846467#wechat_redirect)

[病种运营管理](https://mp.weixin.qq.com/mp/appmsgalbum?__biz=MzkzNjkyNjg1Ng==&action=getalbum&album_id=4285363037001056257#wechat_redirect)

\----------------------------------------------

2025年以来，国家医保局分批次向社会公布智能监管知识库、规则库（以下简称“两库”），至今已经发布了16批次的规则和知识文件。这些规则包括了：

*   药品区分使用（限儿童使用）
    
*   手术项目未按规定折价收费规则
    
*   药品限工伤保险、生育保险
    
*   药品限就医方式
    
*   药品限医疗机构级别
    
*   药品限支付疗程
    
*   医疗服务项目重复收费规则
    
*   医疗服务项目限定频次、年龄、支付疗程、周期频次规则
    
*   药品限二线使用规则
    
*   超互联网医院药品支付范围规则
    
*   中药饮片单方使用不予支付规则
    
*   药品限适应症规则
    

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOCJDSQbgkiaSs0VuhpQs8a3qJmticbklckBRdD5HTfSXU8Jhs2xhABKmpRuMrUI7JsUdHTEicB0urajf3eCSRQf3qzVzmzyS34OA/640?wx_fmt=png&from=appmsg)

如上图，可以结合上述两库规则可以构建医院内部自查工具，医保部门可以从HIS库拿到一些待查医嘱数据，对接规则库，自动批量抛出违规结果。这里使用的是codex,具体做法如下：

将所有文件存在电脑某个文件夹，Codex锁定该目录，接下来进行Vibe Coding，对话完成知识整理。下面是一些琐碎的提示词：

    1.整理本项目文件夹内的文件，现在的目录太深（整理文件）

主要的对话内容如上述内容，中间可能会有一些循环、重复、确认，大模型在中间过程会生成很多Python脚本等内容，最终可以形成一个本地可用的工具。

工作完成之后，可以让大模型写一个该项目的使用手册，例如我这里输出的手册包括：

1.工具介绍：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOWTxPgoLeibjZUvfv8nw0bcawMt7NuEp511gJpqfblvV2Nch9Fx7bW4cv25ahdkXnNMG1iahcuB8xDfB2Isxwian6lnlTJ1NChtM/640?wx_fmt=png&from=appmsg)

2.使用步骤

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOCo9IbgHEejyt1xqiciczIvIZzgmpTx8m7hzUlOf8vGJNDgIDVxsmHQbA2QsM94vCjibRoDfOqIs96U4yoDibuQ5wGwWLlia9P24Fw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNFOaxoXrK8taSwzjIeG14jSEsGhn1OVUzWYf5VqBswvxWeiaVWlwGn1NvhibauwKia2Dhq4P1ydyj2aKKYCfRSLfHSf5moXTW32c/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP1mw8AYx3P2mvqzkcxs7KpSoJCcQr3Fx8O5N5NsmbQV9UIKCaJ0CtLaN4BdL7JFakg1qoFhbV7DJsn1KGd3Uvk1Tibpq1BM0vs/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOklJS4IlQskZXHicgnQVw7OGkIAYwd9RlVngAMKBJlI2wnhiapaN5SnGN6j39PhBPTLVYRVUm934oytA4WeWaDXT38NUJQUX5hU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPaA9khD76o6NAls76e6xjeicVcPKtkichofHm3HcjBicVC3ibHjuia4jeSOT8Gad8dcfGGCew1CBVwsb6DgfzRI0wIZMK7EY43J998/640?wx_fmt=png&from=appmsg)

不足之处：

本地工具，目前只是对一些导出的记录进行违规自查；并没有对接医院的HIS系统等，没法自动根据医院实时数据进行自动查验。主要用于业务人员的提效辅助工具。

展望扩展：

作为知识库、规则库，可以借鉴Karpathy关于知识库构建的思想，搭建一个关于规则的“生命周期+知识图谱+自动化”的架构，这样可以引入医院自由的知识规则、持续迭代知识库，自动化更新知识库，实现知识的与时俱进。再就是与医院信息系统对接，实现对医院医嘱等信息的在线核验，确保对医保违规内容先知先觉。

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言