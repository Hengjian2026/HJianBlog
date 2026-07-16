---
title: "医院收支数据统计分析"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 绩效, 成本]
categories: ["医院运营"]
---
     医院收支数据统计分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院收支数据统计分析
==========

原创 Hi您好 恒健知行 2025-12-23 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/HT8-v3EohckJncTh\_w293w](https://mp.weixin.qq.com/s/HT8-v3EohckJncTh_w293w)

1.收支相关统计量
=========

收入方面，医院会统计门急诊收入、住院收入、医疗服务收入、卫生材料收入、药品收入、检查收入、化验收入、其他收入等；成本方面则包括对人力成本、卫生材料成本、固定资产折旧成本、维修成本、无形资产摊销成本、提取医疗风险基金成本、药品成本、其他物资成本等进行统计；另外，医疗付费改革下，DRGs/DIP病种结算差额成为必须统计的指标之一。

在日报、周报、月报、季度报或年报表中，上述指标成为核心指标，甚至需要统计到门诊、住院、科室等。

2.上述指标的可视化分析
============

2.1科室收入
-------

将科室按照收入规模（营收）、收入增长率作为横纵坐标、结余情况代表气泡大小绘制科室收入的矩阵图，大致可以将科室分为“四象限”，右上角科室则是“明星”科室。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEOkhXsmB1TVWvjPuicf3iaQLRz7cXKLwxoByWiabkzm6O7ibPicGOzdkUDDicw/640?wx_fmt=png)

2.2科室成本
-------

科室成本分摊到各个月份，热力图形式展示每个科室、各个月份的成本情况，可以清晰展示每个科室在一年中哪个月份成本消耗较大，为成本控制提供支撑。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEOPzYomO9SYPKITZhGWfib1mX00BP0b9rvz7ncvxsRW7rkIEiaLr1o3S0w/640?wx_fmt=png)

2.3单项成本控制
---------

以“耗材成本”控制为例，耗材成本各个月份的分摊成本可以计算出来，利用时序均值-标准差法、或IQR法可以用来监控成本的异动情况。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEOrfBGNFcyU1lV7QPBwnPbd0wdBUCDSQk7KWjcbYOnQ2UaIObQb8CzOQ/640?wx_fmt=png)

2.4盈亏平衡
-------

收入指标、成本指标共同影响医院的盈亏平衡结果，聚焦到全年、某月度、科室，当前时间的收入指标、各项成本指标可以有机结合起来形成一副“瀑布图”，可以全面反映该时段的盈亏平衡情况。如下图，最后的“其他成本”高于“总收入”则盈利，反之则亏损。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEO3k8jwgNLmWia3ejHUvjSMiaULUYLa4iaYDRgKAPYn1pibf9l3l3gtOoG3w/640?wx_fmt=png)

2.5科室结余
-------

每个科室可以计算自己的盈亏数值，由收入规模、结余率及结余规模则可以绘制矩阵图，如下图，参考四象限图，同样可以得出在财务视角、营收视角表现比较优秀的科室，及相对较差的科室。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEO1Buh4B36aABXiapuahsFJicLoVboSRTMn6icTj6ibibUBsveE44CNWH13Ww/640?wx_fmt=png)

2.6预算执行
-------

结合预算情况，执行结果，可以绘制各科室预算执行的排序情况。如果考虑到绩效考核，则可以使用预算执行进度图来跟进，同一条柱子上展示预算目标、实际及绩效区间。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEOYA9rMrSO2Plgu3WTR0TgV5Osibtvgz1ficzG61aV2znjP25rShVx0ZvA/640?wx_fmt=png)

2.7科室盈利能力树图
-----------

宏观层面，矩阵树图可以更清晰的展示各科室的盈利能力。下图的矩阵树图，它是以矩形面积代表了科室盈亏金额，矩阵越大，数值则越大。可以对不同的数值区间用一定颜色来区分，突出显示便于直观得出盈亏结果。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEOibQ9bJGPICXqxqaGYXqbWpeBPXU8o0tYpbJqfwDK0xU0mHL7AGZbI7w/640?wx_fmt=png)

2.8资源配置气泡图
----------

最后从资源配置视角来看各科室，使用气泡图，通过资源投入（成本）和产出（收入）来度量科室表现。样例数据提供了一条模拟直线，样例数据中该直线反映投入、产出成“反比”，并不是成本越大收入就是很高的短期现象。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQLBK74V56ZutNuOJ4SnKEOnR5Iic2Pyc7SHiaae7As8WjRCrAibWibHowK4vVDmZ0VqP1FOyyJfLVHXw/640?wx_fmt=png)

 系列文章

[门诊管理之挂号分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487497&idx=1&sn=9487e54d466345be4bd273baf300fa4f&scene=21#wechat_redirect)

[门诊管理之费用分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487516&idx=1&sn=0469b9d38a0d69e4eaeef11a358d55e4&scene=21#wechat_redirect)

[医院管理手术质量分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487608&idx=1&sn=ad3793142d97ad3847a1a780d786645e&scene=21#wechat_redirect)

[医院运营管理之预算执行跟踪](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487614&idx=1&sn=fa24523b4436ac36e80e15317094c30c&scene=21#wechat_redirect)

[医院管理之大设备运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487726&idx=1&sn=197ceff6f204c2f72935682cbb1c927e&scene=21#wechat_redirect)

[医院运营管理之门诊运营管理](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487783&idx=1&sn=f458f5cc0334c601fcf7923c6520d5a9&scene=21#wechat_redirect)

[医院运营管理之住院分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487839&idx=1&sn=7e367af531d610ea6563284ac504df60&scene=21#wechat_redirect)

[医院运营管理之常见手术指标统计表](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487854&idx=1&sn=21e9d29732ca87cebf5a48ccad0791d0&scene=21#wechat_redirect)

[医技科室工作量统计运营分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488061&idx=1&sn=ec9efff941ca501e048e6c37e2548dd5&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言