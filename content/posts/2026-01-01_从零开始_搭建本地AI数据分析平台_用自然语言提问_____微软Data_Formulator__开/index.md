---
title: "从零开始 搭建本地AI数据分析平台 用自然语言提问     微软Data Formulator  开源智能体的本地化实践"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 数据分析, AI]
categories: ["医院运营"]
---
     从零开始，搭建本地AI数据分析平台，用自然语言提问--- 微软Data Formulator 开源智能体的本地化实践 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

从零开始，搭建本地AI数据分析平台，用自然语言提问--- 微软Data Formulator 开源智能体的本地化实践
==========================================================

原创 恒健知行 恒健知行 2026-07-16 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/OKMIjX83s7cs3p5sglc9hg](https://mp.weixin.qq.com/s/OKMIjX83s7cs3p5sglc9hg)

[运管智能体功能边际在哪里](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247509303&idx=1&sn=1970a4409b74d7f3f7c0e0c59273aa5e&scene=21#wechat_redirect)
===================================================================================================================================================

[医院运营管理数据基础 - 从采集到决策的全链路数据治理](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247509268&idx=1&sn=c77521544292f74c6e4659ef09d4496e&scene=21#wechat_redirect)
==================================================================================================================================================================

[医院运管智能体 - 让运营数据分析张嘴就来](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247509256&idx=1&sn=2b1864603248d982ce2b151ff8f6baff&scene=21#wechat_redirect)
============================================================================================================================================================

  

===

————————————————————

一、缘起：为什么要做这次测试？
===============

在DRG/DIP支付改革深入推进的今天，医院运营管理对数据驱动的需求日益迫切。但一个现实问题是：医院的数据分析能力，能否跟上业务需求的速度？

Data Formulator是微软研究院开源的一款AI驱动数据可视化工具，它允许用户通过自然语言提问，让AI代理自动分析数据并生成可视化图表。MiniMax则是国内领先的大模型服务商。

本次测试的核心目标：

*   验证Data Formulator能否在本地环境中稳定运行
    
*   测试MiniMax大模型对医疗领域数据的理解和分析能力
    
*   探索"自然语言→数据分析→可视化图表"这一工作流在医疗场景中的可行性
    

二、环境搭建：从零开始的本地部署
================

2.1 硬件与软件环境
-----------


说明

操作系统

Windows 11 专业版

Python版本

3.11

核心框架

Data Formulator v0.7（微软研究院）

大模型

MiniMax (MiniMax-Text-01)

模型接入

通过 LiteLLM 统一适配层

  

2.2 启动服务
--------

执行uvx data\_formulator --port 5567启动服务，浏览器自动打开主界面：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMyuZpGV5iaMWhiagRwcKp7oT8gMMs8f5hiajS7fUsCapPkeVct80sTwmNchjsZwkeynG0xfNZKezEYGapibJnA8WdOGRRmrAF5CnM/640?wx_fmt=png)

Data Formulator首页

2.3 数据上传
--------

上传20260416combined\_data.csv（41,430条DRG住院记录）：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOQzPSyibAS12va0dfiatzceXnjVj6pUzo9Y2ibvJhI4zlKJbZNE43V5hrB0vLrlEsrSaj7rGibkiad9BTepdjo9NVd86bunADCISP4/640?wx_fmt=png)

数据上传界面

2.4 数据加载完成
----------

数据加载完成后，系统自动识别字段并展示数据概览：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPHiaRiaakFST8t6482j08XVvnibHN7ETNicoTnEyxd16ml1WEVw2KCE6VfqIHRAMy7k3CRzUlicWNmjqOozicp8SMxU1q1cp104Fbfk/640?wx_fmt=png&from=appmsg)

数据加载完成

三、数据准备
======

本次测试使用的模拟数据为data.csv，包含4万+条住院记录，32个字段。

类别

字段

基本信息

年度、月份、科室、医保类型

费用信息

医疗总费用、统筹基金、DRG付费总额

住院信息

实际住院天数、住院类型、入院/出院时间

诊断信息

DRGS编码/名称、主诊断、主手术

支付信息

支付方式、权重值、费率值

  

四、测试过程：问题问答
===========

问题一：费用趋势分析
----------

提问："分析2023年各月份的医疗总费用和DRG付费总额的趋势对比"

提问输入后点击发送，等待模型响应：

MiniMax首先识别出这是一个"时间序列+双指标对比"分析需求。模型自动完成了按月份分组聚合、计算月度汇总数据、选择合适的图表类型等步骤。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMLkpeOWbLvNovbHg9RHSImmCT4gOn8Wdw2AOhliaIOU9y7CSkeSF0pibtCAjsEovrE4APAGzia5ewI99IK57S91nu0nsFNjAft4Y/640?wx_fmt=png)

图1：费用趋势分析结果

响应时间：约30秒

问题二：科室绩效分析
----------

提问："哪个科室的平均住院天数最长？各科室的DRG付费总额分布如何？"

模型需要识别"科室"作为分组维度，计算"平均住院天数"和"DRG付费总额"两个指标，分别排序并展示Top 10。

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMd4uiaBj50jkTEmkIoNREyUF9FeCjFadTZzaibwNicLAliabYG3HlpicBia766DickicWtR9hynNOSicU36zbjV6SYn6za6o5FI11rcribo/640?wx_fmt=png)

图2：科室绩效双维度分析结果

响应时间：约35秒

问题三：DRG分组统计
-----------

提问："统计各DRGS名称的病例数量，找出病例数最多的前10个DRGS分组"

模型正确理解"Top-N"的排序需求，按DRGS名称分组计数，降序排列取前10，选择水平条形图展示。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOweohv7LO9yHg4tN71SeNsibklaXYw4sozS0ghURVUNqAjezpmJ5kTCtSFU0JEHR2Zy8kSIUWjOvhLlWpfzu59xqvsOYZMJJk0/640?wx_fmt=png)

图3：Top 10 DRG分组分析结果

响应时间：约28秒

问题四：科室病种月份分析报告
--------------

自动将历次的图表组合成一份完整的报告，支持导出PDF：

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZM0tWGpy5ojEkuVK6xZ3o4jCxXJxyibxTXxzK868jYOK8dnNcMHm2cLNpSZzbMdnGiadgBfxzur7ianvMdMhonrDcueWhe5YpNhr0/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMg8kGn9f3Je1MiaptNugIg96usbJ0MZeagd1uoXkHon4FQW00FsFYzmTbSfIAEI48wUibcnHn6ACbDCuo3m1GUJLg0toIbS3Ljo/640?wx_fmt=png&from=appmsg)

五、测试结果总结
========

5.1 模型表现评分
----------

评估维度

得分

说明

准确性

★★★★

数据计算基本准确，未发现明显错误

可视化质量

★★★★

图表类型选择合理，标签清晰

响应速度

★★★★

平均响应时间约33秒

实用性

★★★★

分析结果具有实际管理参考价值

业务理解

★★★★

对DRG、医保等医疗概念理解准确

  

5.2 亮点发现
--------

*   自然语言理解能力强：模型能够正确解析"趋势对比"、"分布如何"、"找出最多"等自然语言表达
    
*   图表类型选择合理：自动选择了柱状图、折线图、箱线图、双轴图等合适的图表类型
    
*   数据分析完整：从分组聚合到排序筛选，完成了完整的数据分析链路
    
*   医疗业务理解准确：对DRG分组、医保类型、科室分类等医疗概念理解到位
    

5.3 改进空间
--------

*   对于复杂问题（如多维度交叉分析），响应时间略长（约40秒）
    
*   部分图表的标签显示可进一步优化
    
*   在数据量较大的场景下，图表渲染需要优化
    

六、部署经验分享
========

6.1 本地部署要点
----------

安装命令：pip install data\_formulator

启动命令：python -m data\_formulator --port 5567

配置方式：在.env文件中配置大模型API Key

6.2 国内大模型接入方式
-------------

模型

配置方式

MiniMax

MINIMAX\_ENABLED=true + API Key

DeepSeek

DEEPSEEK\_ENABLED=true + API Key

通义千问

QWEN\_ENABLED=true + API Key

智谱GLM

GLM\_ENABLED=true + API Key

本地模型

通过Ollama接入

  

6.3 数据安全
--------

*   所有数据存储在本地，支持纯内网部署
    
*   代码执行在本地沙箱中完成，确保数据安全
    
*   支持等保合规要求，适合医疗行业
    

七、结语
====

本次测试从环境搭建到完成7个问题的全流程分析，完整验证了Data Formulator + MiniMax在国内医疗数据场景下的可行性和实用性。

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言