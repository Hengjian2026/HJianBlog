---
title: "多源异构数据集成与数据治理   华西医院大数据平台案例"
date: 2026-01-01
draft: false
tags: [DRG, 医院运营, 数据分析, AI, 智慧医院]
categories: ["医院运营"]
---
     多源异构数据集成与数据治理---华西医院大数据平台案例 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

多源异构数据集成与数据治理---华西医院大数据平台案例
===========================

原创 恒健知行 恒健知行 2025-08-11 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/0XsJeyTSg4EajkUnSJJzxQ](https://mp.weixin.qq.com/s/0XsJeyTSg4EajkUnSJJzxQ)

华西医院于2017年启动了全院医疗大数据平台项目(WCH-BDP)，旨在缓解这些困难。该项目组织了两个工作组：一个负责平台建设，另一个负责平台管理。建设工作组包括首席平台架构师、信息技术专家、系统工程师和数据工程师。管理工作组包括首席信息官、医院管理用户、临床用户和科研用户。

传统大数据平台以"存储和计算集成"的方式规划和实施。WCH-BDP平台的设计实现了"存储和计算分离"，首先解决海量基因组数据文件的有效存储和管理问题；其次，当研究人员使用基因数据进行分析时，平台提供的调度软件将分析数据加载到超级计算机环境中进行分析，分析完成后保留分析结果并释放分析过程占用的临时存储空间。

数据集成方面，WCH-BDP研发针对特定数据库的日志解析技术，通过“非接口”方式从业务系统数据库底层抽取和同步数据，数据吞吐量达到每秒百万条;通过“流批--体”数据处理引擎，实现海量数据的高并发实时抽取，“流批--体”数据处理引擎直接从数据库从库增量日志中进行抽取，解决系统数据库接口开发难题;图像数据的集成和录入可以通过使用DICOM协议直接读取图像文件来完成。基因组数据和其他以文件形式存在的数据通过文件传输协议进行非实时集成和录入。

数据治理方面，主数据治理确定要处理的主数据的分类和参考标准，然后用它们在关系方面映射数据库中的数据，最后将结果发布给用户供订阅和应用；元数据治理，基于元数据目录，配置数据映射关系以启动数据提取。映射结果以配置的关系保存，并与元数据管理系统中的标准术语和标签进行比较。所有提取的数据都存储在平台的数据存储库中，该存储库使用标准化的元数据、术语和标签向应用层提供数据服务；术语标准化与标签数据治理方面，WCH-BDP应用中国开放医疗与健康联盟(OMAHA)赞助的医学术语来标准化元数据系统中的术语。还有，标签数据的治理考虑应用目标，并持续跟踪和维护标签数据，如手术前后测试结果值的变化，或患者服药前后血压变化的时间范围。

数据安全管理方面，在WCH-BDP中，数据安全分为五个级别，从1级到5级，基于三个维度：受影响对象、影响程度和影响范围。每个级别都提供相应限制的数据访问接口。为用户认证提供统一的主数据认证服务，使每个应用系统仅管理系统本身所需的角色和应用权限。当实际角色用户使用应用程序时，通过统一的平台服务接口完成数据脱敏和加密，确保数据应用的安全性。使用安全方面，WCH-BDP通过两种方法确保患者隐私保护：脱敏/加密和多方计算(MPC)。脱敏/加密策略针对不同类型的数据设计了不同的处理方法，如数字数据、固定长度的结构化数据、可变长度的文本数据、图像数据和文件数据。平台数据的管理安全要求所有平台服务，包括数据服务，都在安全闭环管理下完成。在WCH-BDP中，从数据访问、管理和治理到数据分析、利用和挖掘，最后到科研成果的转化和实现，所有任务都通过平台服务完成，有效保证了数据利用过程的安全性。

数据质量管理方面，WCH-BDP通过其庞大的数据存储库和强大的数据计算和存储物理资源，形成了一个能够有效支持数据服务的环境。在数据安全管理的整体生态下，平台可以为计算、存储和虚拟化等数据服务提供支持。同时，搜索引擎服务、术语服务和人工智能服务可以有效集成，以满足所有医疗运营的需求。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8ty4c3g2hPfjY98MyXcaUUYHjReibmbWYFIibCmkRW2iaWNF4Wa2ytBehw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8yA0zra3sNhB9Ennv5oYdEDCjsfichptHwqd8OLlFnic014UJHZLqubAA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8VtBib9bmzRg6pn4DBMH0yEFCpjOPXMeKg2xwOibKmLerYsRCCMNBj5xw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8zUGIGw3sZIRHfTWthNcnNp0xNu3e96Rd2VD0h3DV4JXsvhVaFjoYHQ/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8rGP5MruKUxu6kdicOW84eCV62bqFdib9uHsQaicsiabGT1ArnaEq5QQxiaA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8adJz5qK6AGYVMDZmf4k65qjYwVJhvkNUWC6cNL77o833ibkNWo5Z7Aw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8xZ4OgoVr4vTzoca7vpA4JvBvVbJXKrylSsib7Y7sUalsNreYwWEVEyA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8oic8AVh2NxTtMOGx96YicQdk72DF5N1Wzn6MOeuNvc7icsJ0gJang0rug/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8qxwkjWj8msNY5hfXaLSFlqpKVlgXFTXJiaB6lyA6NEibVibraRya7DGYA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibQHFlwdEF7sla2yMryB2vK8ramCMWHSZZW0IFoFFpKzzhXeW5TRKK1yGXbF0WKses520qUEGmoARw/640?wx_fmt=png&from=appmsg)

资料来源《Big Data Health Care Platform With Multisource Heterogeneous Data Integration and Massive High-Dimensional Data Governance for Large Hospitals Design, Development, and Application》，需要文献，关注私信。

![](https://mmbiz.qpic.cn/mmbiz_jpg/IvumIlxgDibSR47j0P4qwYGwSj8ldqh9Jib1aNv32ju0WxXdUTguhEfbIrVia8LHiafKrqVImibgssBNic1ib0zzt5TxA/640?wx_fmt=jpeg)

智慧医院案例系列：

[六年前的医院信息化架构今天依旧抗打——瑞金医院信息化建设案例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485814&idx=1&sn=9d3bec0ba9e137db80135ed3de1bf1df&scene=21#wechat_redirect)

[上海市儿童医院的“5R”智慧医院建设理论与实践](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485719&idx=1&sn=523dd4efc6d25252345bec2381dafe4f&scene=21#wechat_redirect)

[武汉协和医院智慧医院规划建设的探索与实践（2021年CHINC）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485708&idx=1&sn=6a07dc982c6b32a30f602472c3ed490e&scene=21#wechat_redirect)

[国考背景下新疆医科大学第一附属医院运营调整策略](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485634&idx=1&sn=81c2cc72237d5c756c35f05fe4769778&scene=21#wechat_redirect)

[业财融合·数字赋能—公立中医院高质量运营的破局之道——重庆市中医院案例](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485631&idx=1&sn=a4d07cfbc7b4d3a4995af260b0ab1b06&scene=21#wechat_redirect)

[县域医院高质量发展突围之路---瑞安模式的智慧急救](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485613&idx=1&sn=3d871a361819db869155742397b6e4b5&scene=21#wechat_redirect)

[智慧医院数据治理及应用案例——广州医科大学附属第二医院](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485595&idx=1&sn=b67c729745466d1b3fbc9bbc714f8b93&scene=21#wechat_redirect)

[院科两级质控体系建设助推医院高质量发展](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485506&idx=1&sn=d76d83e90608d54c70be52f63d942b3e&scene=21#wechat_redirect)

[以DRG为抓手促进学科高质量发展](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485417&idx=1&sn=969841786452eae93c57e5f344e74702&scene=21#wechat_redirect)

[安徽医科大学第二附属AI应用探索](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485352&idx=1&sn=670dd57ea81bf73754ffbcea036ad28b&scene=21#wechat_redirect)

[公立医院绩效考核管理案例——上海市胸科医院](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247485204&idx=1&sn=ef5d511dff4a9687fe09f8d3f631c393&scene=21#wechat_redirect)

[智慧医院案例---北医三院](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247484882&idx=1&sn=7ff8dada419af1497ef2587c01fab03b&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言