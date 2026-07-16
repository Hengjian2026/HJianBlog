---
title: "医院运营管理数据架构"
date: 2026-01-01
draft: false
tags: [DRG, 医院运营, 绩效, 成本]
categories: ["医院运营"]
---
     医院运营管理数据架构 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

医院运营管理数据架构
==========

原创 Hi您好 恒健知行 2025-08-31 16:37 安徽

> 原文地址: [https://mp.weixin.qq.com/s/2fN1v4gQfLVqGo6Gn9xHhg](https://mp.weixin.qq.com/s/2fN1v4gQfLVqGo6Gn9xHhg)

一、数据逻辑结构

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW70jvl9sooEZiaYFzH7B37GmqBvePwCwk5GIDia2YFLFWEWTiaqhoPgIDzA/640?wx_fmt=png)

医院运营管理数据的逻辑架构是由应用场景、业务主题域和数据管理类型三个维度共同构成的立体模型，其核心思路是“以用促治、分层治理、标准先行”。

1.在X轴横向上是具体的数据应用场景，例如成本核算、绩效考核、三级医院评审、科室运营分析等，这些场景直接决定了“需要哪些数据、用到什么程度”。每一个场景都不是简单口号，而是被拆成可落地的原始指标，再反向追溯到具体业务系统里的明细字段，做到“需求—数据”一一对应，避免过度采集或缺项漏项。

2.在Y轴纵向上，是所有可能用到的数据，按业务来源划分为若干主题域。临床业务域主要承载电子病历、检验、影像、手术、麻醉等诊疗过程数据；患者服务域聚焦门诊收费、住院收费、预约挂号、满意度调查等面向患者的服务数据；科研业务域收纳科研项目、经费、成果、专利等科研管理数据；运营保障域则覆盖人力资源、固定资产、物资耗材、财务总账等后台支撑数据；外部数据域补充来自卫健委、医保局等监管机构的反馈结果。通过主题域划分，医院可以清晰地看到同一实体在不同系统中的“多面性”，进而通过主数据映射把它们对齐，经过统一编码后就成为唯一主数据，供所有场景共享。

3.第三个维度Z轴上，是数据管理类型的治理分层。最底层是主数据，它定义了科室、职工、药品、耗材、设备等核心实体的唯一标识和属性规范，由专门的主数据管理平台维护，任何业务系统新增或修改这类实体都必须同步到主数据，以保证“一处变更，全局生效”。中间层是业务数据，即各系统在日常运行中产生的原始明细，如一次门诊收费记录、一条医嘱执行记录、一张检验报告，它们被要求保持完整、及时、可追溯，并通过ETL工具进入数据仓库或数据湖。最上层是管理指标，它是在业务数据基础上按照统一公式和维度加工而成的统计结果，例如“平均住院日”、“四级手术占比”、“百元收入能耗”，这些指标被纳入医院的指标元数据体系，任何部门引用都必须使用同一名称、同一口径、同一维度，杜绝“同名不同义”或“同义不同名”的现象。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7VM24NR7yQnBIf3gEguASiaR5H1QPZODcv1rkcMZXaTJThmxxqIqqRNw/640?wx_fmt=png)

这三个维度相互嵌套、层层递进：应用场景先提出“我要什么”，业务主题域回答“从哪儿来”，数据管理类型再规定“怎样治理”。当医院新增一个场景，比如DRG付费改革，只需在应用场景层补充“DRG分组盈亏”指标，在业务主题域层确认需要病案首页和医保结算清单两张表，在数据管理类型层复用已有的病案主数据和费用指标公式，即可快速形成新的数据服务，而无需推倒重来。由此，医院运营管理数据就从分散、异构、口径不一的状态，逐步演化为统一、标准、可扩展、可持续运营的数据资产体系。

  

二、数据分层结构

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7t6tIY0fFrudjr4U67RT1W9Qa5IxTXUnRIWN4c3c7f4OBNsaD0dSjeQ/640?wx_fmt=png)

运营管理数据资源的分层结构包括数据来源层、数据处理层和数据应用层:

数据来源层，它位于整个分层结构的最底部，负责收集和汇聚所有原始数据。这一层的数据主要来源于医院内部的各类业务系统，包括临床类系统和运营类系统。临床类系统涵盖了门诊收费、住院收费、电子病历、检验信息系统等，它们记录着患者的诊疗过程、医嘱执行、检查结果以及费用明细等信息；运营类系统则包括人力资源、财务管理、设备管理、耗材管理等，它们产生人员考勤、财务报表、物资采购与库存、固定资产卡片等运营支撑数据。此外，对于尚未实现系统集成的环节，该层也支持通过手工填报的方式补录必要数据，确保数据的完整性。

数据处理层，它位于数据来源层之上，承担着数据清洗、转换、整合与建模的核心任务。在这一层中，原始业务数据经过规范化的数据元定义、质量控制、格式转换和主数据映射等一系列加工过程，逐步转化为标准化、结构化的明细数据。这些明细数据不仅包括主数据和业务数据本身，还进一步衍生出管理指标和分析模型。管理指标分为基础指标和复合指标，基础指标直接从明细数据中提取，如门诊人次、住院天数；复合指标则通过多个基础指标的复合运算得出，如人员经费占比、百元收入能耗。在此基础上，数据处理层还会根据具体的分析主题和应用需求，构建相应的分析模型，如按科室、病种、时间维度聚合的星型或雪花模型，为上层应用提供高效、低冗余的数据支撑。

数据应用层，它直接面向医院的各类用户和管理场景，提供多样化的数据服务。在这一层，经过加工处理的数据被转化为直观的可视化界面、报表、仪表盘或API接口，供决策层、职能科室和业务科室按需使用。例如，院领导可以通过绩效监测平台实时查看国考指标完成情况，财务部门可以调用成本分析模型评估病种盈亏，临床科室可以借助科室运营看板追踪床位使用率与平均住院日。数据应用层不仅支持固定报表和周期性分析，还能够通过数据推送、订阅服务或开放接口，灵活响应突发需求和个性化查询，确保数据在正确的时间、以正确的形式送达正确的使用者手中。

  

三、数据架构与数据治理

“数据治理是运营管理数据资源建设的关键任务，数据治理工作需要应用相应的软件工具平台，并在科学规范方法的指导下推进。”医院运营管理数据治理通过五大环节形成一套从数据进入医院到最终退役的闭环管理体系。

1.数据标准管理，奠定治理底座。

医院以数据元为核心，为每一条可能跨系统使用的数据项建立统一的定义、值域和编码规范；新增或变更数据项必须同步更新元数据记录，确保无论数据流向哪个业务系统，其含义和格式始终保持一致。借助元数据管理系统或数据资产登记平台，标准不再是静态文档，而是可在线查询、版本受控、自动提醒的活规则。

2.数据集成治理，负责打通“数据孤岛”。

利用数据集成工具对接 HIS、人事、物资、财务等多源异构系统，在抽取、清洗、转换、加载的每一步都嵌入校验规则，把原本格式各异、口径不一的原始数据转化为符合统一标准的高质量数据资产。同步部署的数据质量管理软件实时监测完整性、一致性、准确性，一旦发现异常即刻告警，从源头减少脏数据流入后续环节。

3.主数据管理，聚焦核心实体的唯一性。

科室、人员、药品、设备等关键主数据由专门的主数据管理系统集中维护，任何业务系统的新增或变更必须首先在此登记并同步到全局，从而杜绝“同名不同义、同义不同名”的现象。系统内置血缘图与差异比对功能，让数据管理员能够一键定位冲突、快速修复。

4.数据质量管理，贯穿整个生命周期。

除了在集成阶段设置质控点外，医院还在主数据维护、指标建模、分析应用等后续环节持续设置检查规则，通过数据质量管理系统定期生成评分报告，推动业务部门按“发现—整改—验证”的循环不断提升数据健康度。

5.数据资产登记与管理，把治理成果固化为可持续利用的资源。

经过标准化、清洗、认证后的数据表、指标、模型被统一纳入资产目录，附带业务含义、更新频率、责任人、权限等级等元信息；平台支持申请、审批、授权、审计、退役的全流程线上化管理，让数据在合规、安全的前提下被最大化共享与复用，同时确保过期或敏感数据能够及时下线或脱敏，形成真正的数据资产全生命周期管理闭环。

 ![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7fJ4XvsxE1cO8ZHx5eI1c05OP5avNib5icvk6HibGLKAJ1DoNJicpn74D1Q/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7vcNXqL2L4QH3MwHJoBNZpRgjWSwa7oxA1hBCSIOVWhIJdNZErotcjw/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7yyrfyXCKtNZd4MekGr57aEicQBicgagPsp8AcCVJgYN5s3GIDT5z0kpQ/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7n3NJ9w8ia0555NIyt8jWnDBowaQHicHY6Jc19W3wGMVqMiaXBUzAicEyvA/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7N6kCic44N0GL2nzY9JZE84TfWvNEOJEf1VDGRRChZOsCRSn3E1yV2Tg/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7u7DBvZ83SXyanh0ErE9w3ITLibM0lbvhDANuNBAQgfM59eNSFuDGpVA/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7lXNSV2a5IgHyMJemtPzj0KUK9aUxNhzJAdwrgY5m3t6EbYJpHORpFg/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7jNqH5ngWNACMUJN80jXcqVs1uwKAknpQ5ziaNfOvFg55K0YJ5qUDoOg/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7fOtoiaF666oHARJN3IkZTtr9wl0yqc7JXQE5m87DWrsfibSR2aZa9nfw/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7neKFROKO8zoXiaic7zrI0zCfgIZ61C0aBrWiaMksAOJiaaXgTeAVtEFpYQ/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7lTHnnCDQ8ecibGKf3D3Q3EUXl4QUXgYILluc8SGSO9oCeFtWqzEjkfg/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7PcJ9gKj8yu2VNVakG8U8Yg8N0RZb2rOPRpAibkds0ll0iaaVrLtkszZw/640?wx_fmt=png&from=appmsg)![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7MiageibV6m3F1lL7p02DCKFnvFqILp4OQ1adyOdkSleibuesyLic2icuUgg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7HTXX4YBbRyqCwgZNicAPGjhx6UyU6ib8MiaTRMzCz4iaiaumAJlnVuXClxQ/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW75KXiarxiaI5AC3ibfaJr3DLwls9H6ElQ5fVXqia9fd4UddUgjNuDictqtrA/640?wx_fmt=png&from=appmsg)

  

 参考《医院运营管理典型应用数据资源建设指南》第二章数据结构

![](https://mmbiz.qpic.cn/mmbiz_jpg/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7YuoecJanq79Mo20VV6JTUCwM49ibMiasYVCtpquJj0ZdFNXNNEtnygnw/640?wx_fmt=jpeg)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言