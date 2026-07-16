---
title: "运营管理数据资源建设方法"
date: 2026-01-01
draft: false
tags: [医院运营, 绩效, 成本]
categories: ["医院运营"]
---
     运营管理数据资源建设方法 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

运营管理数据资源建设方法
============

原创 Hi您好 恒健知行 2025-09-02 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/aytLzu2QIQjKZXMT833xzQ](https://mp.weixin.qq.com/s/aytLzu2QIQjKZXMT833xzQ)

一、运营管理数据资源分类说明

运营管理数据资源分类说明的核心思想是“先定标准，再分类；先分类，再建设”。指南把全部数据资源划分为三大类：主数据、业务数据、管理指标；而这三类又统一用“数据元”进行标准化描述，形成“数据元、主数据、业务数据、管理指标”的逐层依赖关系，以保证口径一致、可溯源、可扩展。通过上述分类方法，医院在规划数据资源时，按“先建数据元字典、再梳理主数据、再盘点业务数据、最后定义管理指标“的顺序推进，即可在统一语义体系下完成多场景、可持续的数据资源建设。

首先，所有具体的数据项都用“数据元”来定义。数据元不是某一张表，而是一组规范属性：唯一标识符、中文名称、业务定义、数据类型、表示格式、允许值、来源系统。医院在新增任何字段前，必须先按这套模板注册数据元，才能被后续三类资源引用。

第一类是主数据，它描述医院运营中“跨系统共享、相对静态”的核心实体，如科室、职工、药品、耗材、资产、患者、收费项目等。主数据本身由多个数据元组合而成，并通过统一编码和系统间映射来保证“同一实体、一个编码、处处通用”。指南以科室和资产设备为例，给出了“人事-临床-财务”三套科室主数据的血缘关系和“资产-设备-检查设备”三级资产主数据的衍生路径，任何新增或变更都必须先更新主数据，再向下游同步。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQcBNnHHCLkibkKmZdiakZ1AYMR2T5NkguKRQQpqTNKRhPBfq3uMQNOyg44Ngcg4L0OAFNwfNUnibwUw/640?wx_fmt=png)  

图1 科室主数据基础血缘关系说明与管理流程机制示意图

第二类是业务数据，即各业务系统在日常运行中产生的原始明细与统计结果。指南按三大系统群枚举了41个常见来源：管理保障类（财务、人力、成本、科研等19个）、患者服务类（门诊收费、住院收费、分诊叫号3个）、临床业务类（LIS、PACS、麻醉、血透等19个），并给出典型表名和采集频次。业务数据必须引用已注册的数据元，才能确保字段含义、值域和来源系统的一致性。

第三类是管理指标，它是在业务数据之上，为满足绩效、评审、成本等管理场景而定义的计算结果。指南把指标细分为基础指标、复合指标和定性指标，并用“七位混合编码”统一命名：前两位表示指标分类（如SV服务量、SE效率、QS质量安全等），第三位表示类型（A基础、B复合、C定性），后四位为顺序号。每个指标都明确计算公式、维度、导向，与底层数据元和业务字段一一对应，防止同名异义或重复建设。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQcBNnHHCLkibkKmZdiakZ1AYmEfYXh6lvvQiaR5TqQhv7bjoKInzoHb4HF2Drlcss9g6OBw70AXWHUQ/640?wx_fmt=png)

图2 指标编码规则与示例

二、运营管理数据资源建设流程

运营管理数据资源建设流程整体遵循“应用驱动、标准先行、逐层推进、闭环迭代”的思路，分为两大路线：典型应用流程和扩展应用流程。每一步都强调先确认需求与系统支撑，再开展数据治理与建模，最后通过模型支撑具体运营场景，实现可持续迭代。对于已纳入指南的三大典型应用：三级公立医院绩效监测、三级医院评审日常监控和成本管理，医院可直接参照典型应用建设流程。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQcBNnHHCLkibkKmZdiakZ1AYlIrGY0WQYIn1Dat3MWRReUQBicmPvuibSq2iaSAQtPwwEJbPsMGvcjKRQ/640?wx_fmt=png)

图3 三类典型应用建设参考流程

1.三大典型应用建设流程

第一步是数据资源确认：首先明确要建设哪一个或同时建设多个应用；随后对照指南给出的数据资源清单，逐项核对本院现有信息系统是否已经覆盖所需业务表，若系统已具备且数据质量满足需求，则纳入集成范围，若缺失或不足，则通过中间表或手工填报方式补充；同步建立覆盖管理指标、主数据、业务数据在内的统一数据元字典，为后续集成奠定语义一致的基础。

第二步是数据资源建设：先利用数据集成工具完成跨系统采集、清洗、转换、加载，并开展主数据治理，确保科室、人员、药品、设备等关键实体编码与属性在全局唯一且实时同步；随后基于已治理的标准数据构建标准指标集，统一指标含义、计算逻辑、统计口径，做到同名同义、同源同算；

最后根据实际分析主题，将标准指标按时间、科室、病种、项目等维度组织成分析模型，通过仪表盘、报表或接口形式推送给决策层、职能科室及临床科室，实现运营监测、预警与决策支持。

2.扩展新增应用建设流程

  

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQcBNnHHCLkibkKmZdiakZ1AY7B7rKTD2obR48dWQ9Sw2JsQEDSxDFw6cIhvubrLcPFsdXSS4UPsulQ/640?wx_fmt=png)

图4 扩展新增应用建设参考流程

对于典型应用以外的扩展需求，指南提供了扩展应用建设流程。首先进行应用类型判断，明确新增需求属于指标类还是业务类；若为指标类，则先梳理原始指标并拆分为基础指标与复合指标，再核对指南中是否已提供对应指标与数据资源，若未提供则补充管理指标并进行数据溯源，明确所需业务系统与数据表；若为业务类，则先梳理支撑应用所需的全部数据资源，拆分为指标数据需求与业务数据需求，并与基础指标溯源结果整合形成数据资源合集。其次进入数据资源确认阶段，同样需逐一确认所需业务系统与数据表是否已建设，若系统缺失则设计中间表或手工填报方案，并同步更新数据元字典。最后进入数据资源建设阶段，复用典型应用的集成治理、标准建模、分析应用三步法，确保新增场景与原有体系无缝衔接、快速上线。通过这两条路线，医院能够按需启动、平滑扩展、持续优化运营管理数据资源体系。

参考《医院运营管理典型应用数据资源建设指南》第三章运营管理数据资源建设方法

![图片](https://mmbiz.qpic.cn/mmbiz_jpg/IvumIlxgDibQNxpgqAic5X4FdQJ5mzgvW7wYTPo5MZud6Qoibm82Bw4tajs4OIytWOlUUKiar8fqSuaibkicSxHiaaPeA/640?wx_fmt=jpeg&watermark=1&tp=webp&wxfrom=5&wx_lazy=1)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言