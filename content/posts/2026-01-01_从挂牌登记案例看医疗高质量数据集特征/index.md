---
title: "从挂牌登记案例看医疗高质量数据集特征"
date: 2026-01-01
draft: false
tags: [AI]
categories: ["医院运营"]
---
     从挂牌登记案例看医疗高质量数据集特征 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

从挂牌登记案例看医疗高质量数据集特征
==================

原创 恒健知行 恒健知行 2025-06-26 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/K4lX3\_CBTi9H\_zijnrb0KA](https://mp.weixin.qq.com/s/K4lX3_CBTi9H_zijnrb0KA)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibR2vb7zeT9nYEsGpJyo80xoYNWric9vnnaUmibJBdm67FAsVFSlhCr5R1NXm52MiclQzXoDaZXibTibESw/640?wx_fmt=png&from=appmsg)

  

2024年10月，上海芯超数据科技有限公司在上海数据交易所注册登记了系列重大疾病专病数据集，本文以“骨肿瘤专病队列”数据集为例分析医疗高质量数据集的一些特征。

一、常见概念
------

  

---

1.数据集

它是由一系列数据所组成的集合，针对数据质量管理的国家标准GB/T 36344-2018《信息技术 数据质量评价指标》中，‌将数据集定义为“具有一定主题，可以标识并可以被计算机化处理的数据集合。

2.高质量数据集

高质量数据集是人工智能大模型训练、推理和验证的关键基础，是按照特定标准，经过采集、清洗、归类和标注等智能化处理，具有相应更新和维护机制的数据集合。简单理解，高质量数据集可以直接喂给各类模型、算法，直接用于大模型诊断、分析、评估、预测、生成等。

国家数据局指导的全国数据标准化技术委员会将高质量数据集分为三类：

l通识数据集，包含面向社会公众、无需专业背景即可理解的通用知识，主要用于支撑通用模型落地应用。

l行业通识数据集，包含面向行业从业人员、需要一定专业背景才能理解的行业领域通用知识，主要用于支撑行业模型落地应用。

l行业专识数据集，包含面向特定业务场景相关人员、需要较深的专业背景才能理解的行业领域专业知识，主要用于支撑业务场景模型落地应用。

3.医疗高质量数据集

包括医疗行业通识数据集、医疗行业专识数据集。目前从各地的大数据交易中心登记在册的更多是行业专识数据集。这部分数据集，大部分人看不懂，也用不到，交易的频率会很低。以上海数据交易所“骨肿瘤专病队列”为例，该数据集集成了以骨肉瘤为核心的多种常见骨肿瘤的临床诊疗、预后及全面覆盖基因组、转录组、蛋白质组等关键领域的多维度数据，构建了一个深度反映真实世界骨肿瘤的综合数据集。

二、高质量数据集特征
----------

  

---

《人工智能数据集质量评估要求》中对数据集质量提出要求，包括完整性、准确性、现实性、现时性、无偏性、相关性、安全性等。在上述标准约束下，“骨肿瘤专病队列”数据集定义了病例⼈⼝学信息、临床病史、就诊记录、检验结果、检查结果、治疗⽅案、⼿术治疗、出院⼩结、费⽤信息、随访信息等信息，并含各数据元的中英⽂名称、编码、数据元说明、值域定义及范围等共603个字段。曾柯等发表的《骨肿瘤专病数据库的构建与应用》论文中可以知悉，数据集的设计采用分层结构化架构，共包含13个主模块、48个子模块。如下图          ![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibR2vb7zeT9nYEsGpJyo80xo6giawia5AowrZDOXoZyk1EvksCiakuFoiatNnZTOa8ebGhbw3UVsHoic7Lg/640?wx_fmt=png)

医疗行业高质量数据集具有以下特征：

技术规范性方面：要求精准定义字段属性，如影像层厚、基因测序深度、药物剂量等，以避免浮点误差；设置强约束条件，如患者ID强制非空、诊断编码绑定标准术语等；确保元数据完备，包括诊疗溯源字段和质控量化字段，如影像采集设备型号、实验室检测方法、影像信噪比等。需设计多模态知识融合字段，实现跨学科关联，如病理学与影像组学特征组合；需具备动态扩展能力，预留响应字段。

在质量可控性上，完整性方面进行缺失值管理和多模态对齐，如标注缺失原因代码；准确性方面，采用 AI-人工协同标注、设置异常检测字段等；安全与合规性方面，运用隐私保护设计，如脱敏、加密、动态授权，设置全链路审计字段，实现数据血缘追溯。

医疗专属特征方面，主要包括多模态融合、伦理强化，如DICOM格式关联文本等。

三、医疗高质量数据集建设
------------

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibR2vb7zeT9nYEsGpJyo80xoYObzRRYnPyyHpJBB7fJ7NAweAWAHNY83Qv4KZPrdhIHLBvSySNGdPQ/640?wx_fmt=png)

参考《高质量数据集建设指南》，具体步骤如上图所示：

数据需求：明确数据的规格要求，构建包含完整性、准确性等特征的数据质量模型，并验证数据是否可获取。

数据规划：设计数据架构，制定涵盖各阶段的数据质量计划，并预计数据工作量。

数据采集：确定数据采集方式，测试并改进收集方法，同时进行数据质量度量和提升。

数据预处理：进行数据转换、验证等操作，创建和选择特征，丰富数据上下文语境。

数据标注：为目标变量赋值，并确保数据标注的规范和质量。

模型验证：评估模型表现效果，分析原因，沟通问题，重复相关阶段以提升数据质量，并重新训练和验证模型。

参考资料（文件可下载）：

《高质量数据集建设指南》技术文件征求意见稿.pdf

《高质量数据集分类指南》标准草案.pdf

人工智能数据集评估规范.pdf

基础与骨病骨肿瘤专病数据库的构建与应用.pdf

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言