---
title: "医院病种管理烧伤科DRG分析"
date: 2026-01-01
draft: false
tags: [DRG, AI, 绩效, 成本]
categories: ["医院运营"]
---
     医院病种管理烧伤科DRG分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院病种管理烧伤科DRG分析
==============

原创 Hi您好 恒健知行 2026-05-04 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/EA7nrs0olaFOIFpolPCZqQ](https://mp.weixin.qq.com/s/EA7nrs0olaFOIFpolPCZqQ)

病种分析合集：[病种运营管理](https://mp.weixin.qq.com/mp/appmsgalbum?__biz=MzkzNjkyNjg1Ng==&action=getalbum&album_id=4285363037001056257#wechat_redirect)
============================================================================================================================================

  

===

摘要
==

本报告基于烧伤科DRG结算数据，从科室概览、病种结构、共病（合并并发症）分析、费用结构、高低倍率、医师绩效等多维度分析，识别科室运营中的关键问题与机会。

分析发现 8个DRG病种覆盖80%以上病例，其中烧伤、腐蚀伤及冻伤等灼伤的手术室手术、二度级及以下烧伤、腐蚀伤及冻伤等灼伤，不伴并发症与合并症等为主要病种。

一、分析背景与方法
=========

随着DRG支付方式改革深化，烧伤科因治疗周期长、费用高、合并症多，面临较大的控费压力。本次分析旨在全面评估科室运营状况，定位亏损病种，优化资源配置。

本文使用R语言对烧伤科结算数据进行清洗和聚合，主要分析维度包括：宏观指标、月度趋势、病种结构、共病影响、费用构成、合并症、高/低倍率病例及医师绩效。所有图表均基于模拟数据生成。

二、科室运营概览
========

2.1 关键指标
--------

模拟病例188例，平均CMI为9.88，总费用603万，总盈亏-616万，费用消耗指数为1.21，时间消耗指数为2.19。其中科室CMI反映技术难度，若小于1则说明收治病种相对简单；费用/时间消耗指数大于1表明高于全省平均水平，需加强管理。

2.2 月度运营趋势
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPUsqE1tYyVCwCEBl0tMMmC9ZhepG6e0BePEvia5ARqPdtL8X7mz3FPXF7nHib6BjhKQJgOn1sqhY9pUwTHXx1b7v3cZ8DlVIBDM/640?wx_fmt=png)

CMI趋势月间波动可能与季节性入院相关；盈亏曲线反映科室控费成效。重点关注盈亏为负的月份，分析其费用结构变化。

三、病种结构分析
========

3.1 帕累托分析
---------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMOv770iaYlxVC1ciapC8cx2ScqLryTLdFtrBQMnTEIaDNbKD29FZ4Cq1MBJrFicp2lyzYYg3nX7QFpvtdjyDnxSIArDgjqlRxAJw/640?wx_fmt=png)

备注，模拟数据中有一些未落组NA数据。帕累托前8个DRG覆盖80%以上病例，构成科室核心病种群。管理重点应聚焦这些病种，通过路径优化和成本控制实现效益提升。

3.2 DRG价值矩阵
-----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPIbAibtzfY8rUJEsTiaa4Hb38bgM2BUPH3YfE703Z3872CAUSw2MHX82xO6ib0Y820vUKcNVQibZicFFnNe7GeOSF5BHDibzE2RF47M/640?wx_fmt=png)

矩阵横轴为CMI（技术难度），纵轴为平均盈亏。第一象限（高CMI、高盈利）是科室优势病种；第三象限（低CMI、亏损）需评估收治价值或改进效率。点越大表示病例数越多。

主要病种Top20多指标热力图：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNQNCPhvJzzYPbJT43eM9ib0aYCdphLyx7BQcLBghibSO973FCeDJ1ohIMdDqTiaWUwQicU3w5cbQcznUF4qSYG70ibCryqkicYlMkM8/640?wx_fmt=png)

3.3 盈亏归因分析
----------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP648OeruBJ25nIfVjsuL6FicYcm6Vs1PZ8RH9qnpFl6Mfr8KLSa8icgmPIXaGEkPzKK0gicf7G7DdCcicFAjnljYjdD9Rk4pSvlSo/640?wx_fmt=png)

归因亏损主要来自哪些DRG病种，盈利又来自哪些病种。通过盈亏归因可以识别重点管控对象和优势病种，为资源配置提供依据。

四、烧伤科特色分析
=========

4.1 ICD-10诊断大类分布
----------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZN5OfGmeljcIdZzciatC66lDHPcxhdCVNRJJqPSw8pCejNHKNiaGibDNNStVsCoagWX4DQuqjZJyzCsOqic436kn1byuznJcaES0lM/640?wx_fmt=png)

烧伤科以皮肤相关疾病（S损伤、T烧伤）为主，符合烧伤科病种特点。提示应针对这些高频诊断大类制定临床路径。

4.2 共病等级与资源消耗
-------------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO8ib6tu25MFGhcjHyTzVZQO04iaPWXseMnzz0MRoPPTXsMoibAIQexiaL616emmX2GtoKdrJEYORPIczsfiaT5OIVZg5ISGiaFEzHJE/640?wx_fmt=png)

随着诊断数量增加，平均住院日明显延长。共病≥7个的患者住院日延长，提示多病共存是导致住院日延长的主要原因。应强化综合评估和多学科协作。

共病等级多维分析图：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOI9V1WthZpxU2iaVRZ457wc1kVE19y07Pib4gt6CQjgHjIztsDlXCOGSFPcuVFic0CiaFw74M14Jts6RUFD00gRRIP2dUuVUaqicvY/640?wx_fmt=png)

4.3 合并症/并发症对费用的影响
-----------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNwLDp3C0MfUIkp6lNATzxGkrnoiaXd4JyTSZrG9VGfubqfhEWFckvY2fn6ZHNkWeFpRFsSpUUq1O2vHATw3ZhqFxGMTBlqh36Q/640?wx_fmt=png)

有合并症/并发症的患者平均费用和住院日均显著高于无合并症者，且往往伴有更高的药占比。应优化围术期/治疗期管理，减少可预防的并发症。

五、费用结构分析
========

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOZia9EsDEj2iaQadqGLQtQeFKXf62dG9mbeD57XMGQBAhuQ9GPFnibictnJ8kGuNErpcRHt5Lqrcl17nz0J0N0jj0pIj9YQVIKU3Y/640?wx_fmt=png)

费用结构药品费和耗材费是烧伤科的主要支出，占比高且波动大。优化药物治疗方案、减少不必要的检查是控费的关键。

5.1 费用结构对比分析
------------

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMtGZqPKOPYVLognx9mlMibyGUuaE0ia0t6LmMQhHKdIvVkpicNnv2PgX43pMWj1F92fWzwoOTnicyCzgBte4Xac8WcaQXqBia6SvaE/640?wx_fmt=png)

费用对比通过与全省估算均值对比，可以识别各费用项的管控空间。西药费占比较高，需重点关注药品合理使用；卫材费和化验费也有一定管控空间。

5.2 超长住院日分析
-----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMtD7geLYdJQrgM4kqZsJngSveLbSDEQuEqibADTxdPAm8BYjia8RON3JP2Ez5jaJZartJxqDkmw0eSorj2eoZ62jop3fs235OcE/640?wx_fmt=png)

超长住院超长住院日通常与共病复杂、合并症并发症相关。通过识别超长住院病例，可针对性优化临床路径，缩短无效住院时间。

六、高倍率与低倍率病例
===========

高倍率病例共 33 例，占比 17.6%；低倍率病例共 105 例，占比 55.9%。

高/低倍率DRG分布图：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOlozNrSTFSyGqJd7zEJvQyFaZVsKSXCnTyKr4wc3xrBIjcZo4xHHicu6icVl4Hx6tMwUCc4C24CbYleaIyFBFFGaMOLSCxI925k/640?wx_fmt=png)

高倍率病例是科室亏损的主要来源，需逐一审核其诊疗合理性；低倍率病例可能意味着费用不必要的压缩或诊疗不足，应确保医疗质量。

七、医师绩效分析
========

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPX7CKrKzKLTUrOKx2E8eULricXYSfaBRvPcGlweIGTqYRYfAD2KfHwuiaroGBo3yz3bKltSLpVCpFrW1PfBAXWKiaXY2GRKWUmm8/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOreAn0s3aXnHhdUdiaQaRicoASAgicibakQCQZUbLZO3oSdEcLH7er4Ubc5Voy8GYNsOrccNpY9o9uNzR0OaaSrdzv9ELQDzCmtMg/640?wx_fmt=png)

医师绩效CMI反映了医师收治疑难病例的能力，盈亏则体现控费水平。可识别出高CMI、高盈利的标杆医师，推广其诊疗经验；对于亏损严重的医师，应分析其费用结构，提供针对性辅导。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNc8zyVwjSG2A1FquYKV0BQfaCx3Hj2TkvwUGrbbMDl2GhE1LticasBNqj7gF49sBewUxX1VyNjfRdibS9vd9ek8ZbzqsTkfiaORQ/640?wx_fmt=png)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMp4qxQEGfwPQKkNktgZtejZnoMKWeQvNA5LgNibnN7kAljFAOUhtXk6fQLNlmicEuwdEibARomhj96EC9I4ia0G7XpibVxRERD5JBg/640?wx_fmt=png)

八、效率效益矩阵（波士顿矩阵）
===============

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMeBBibXYoZkZaMibx6ib2MOTNp0dVvfIGCuK3Qoyp38FF5pqxGVA8pS1skDtDXY69SUyMkLKXINSSMWvA10ibeSibaTM4xSGPp6GTk/640?wx_fmt=png)

矩阵横轴为平均住院日（效率），纵轴为床日服务费（效益）。右上象限（优质病种）住院时间短、日床费用高，是科室的'现金牛'；左下象限需重点整改。

8.1 诊疗行为分析
----------

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZORoWtprMsn3tHhx2gxkVx1p6kFGHnQiaibEvTn5PLx5QEQw07iazVwolU2hkcgE8nwhju6Lfm3oL0WMcuJTZEUS7K1ia3JaBoxe1c/640?wx_fmt=png)

诊疗行为手术级别分布反映科室的技术结构。通过分析手术级别与费用的匹配度，可识别是否存在手术升级或费用异常的情况。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNefuX3huUyXsaibxWRVmFCFWQ6OsbR3boGFlyGIxT2mocS3vkkHfJKXynqXChPeicdJDs2My8heF4GVwStyKmjbNYVAQpCZQO98/640?wx_fmt=png)

编码员绩效编码员的工作量和高倍率占比反映编码质量。高倍率占比过高可能提示编码存在问题，需加强培训或审核。

九、结论与管理建议
=========

1.  烧伤科药品和耗材占比较高，应推动临床路径下的合理用药，减少辅助用药。
    
2.  合并症并发症是导致费用增加的重要因素，应优化围术期管理，减少可预防的并发症。
    
3.  对价值矩阵中亏损且CMI不高的病种进行专项分析，必要时调整收治策略或优化临床路径。
    
4.  通过超长住院日分析，识别无效住院时间，优化临床路径，提高床位周转效率。
    
5.  建立月度DRG运营看板，持续跟踪关键指标变化，及时预警异常波动。
    

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言