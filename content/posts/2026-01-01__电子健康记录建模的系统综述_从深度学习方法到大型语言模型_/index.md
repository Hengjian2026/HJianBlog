---
title: " 电子健康记录建模的系统综述 从深度学习方法到大型语言模型 "
date: 2026-01-01
draft: false
tags: [AI]
categories: ["医院运营"]
---
     《电子健康记录建模的系统综述：从深度学习方法到大型语言模型》 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

《电子健康记录建模的系统综述：从深度学习方法到大型语言模型》
==============================

原创 恒健知行 恒健知行 2025-07-29 20:44 安徽

> 原文地址: [https://mp.weixin.qq.com/s/yiiWJ7jqRGqykQoJOyOESg](https://mp.weixin.qq.com/s/yiiWJ7jqRGqykQoJOyOESg)

一、文章简介
======

文章介绍了电子健康记录（EHR）建模的背景、挑战、以及深度学习和大型语言模型（LLMs）在该领域的应用和进展。同时，文章通过一个统一的分类体系，系统地组织了EHR建模的最新进展，涵盖了从基础深度学习方法到基于LLMs的新兴范式。文章共计分为10个部分。

1.  **引言（Introduction）**
    
    ：介绍了电子健康记录（EHR）的重要性以及深度学习和大型语言模型（LLMs）在EHR建模中的应用背景。
    
2.  **初步知识（Preliminary）**
    
    ：定义了EHR的相关概念，并介绍了EHR数据的基本属性和基础神经架构。
    
3.  **数据驱动的方法（Data-Centric Approaches）**
    
    ：讨论了如何通过数据增强、样本选择、输入空间转换等方法来提高模型性能。
    
4.  **神经建模策略（Neural Modeling Strategies）**
    
    ：介绍了特征感知模块、结构感知架构设计和时间依赖性建模等神经架构设计方法。
    
5.  **基于学习的方法（Learning-focused Approaches）**
    
    ：涵盖了自监督学习、对比学习、预测性建模和聚类方法。
    
6.  **多模态学习（Multimodal Learning）**
    
    ：探讨了医学视觉语言模型的对齐策略、细粒度对齐方法以及数据高效的并行和未配对对齐方法。
    
7.  **基于大型语言模型的建模和系统（LLM-Based Modeling and Systems）**
    
    ：讨论了使用LLMs进行EHR建模的方法，包括提示工程、预训练和微调、检索增强生成以及LLM驱动的医疗代理。
    
8.  **临床应用（Clinical Applications）**
    
    ：介绍了EHR建模在临床文档理解、临床推理和决策支持、临床操作支持等方面的应用。
    
9.  **评估基准（Evaluation Benchmark）**
    
    ：总结了公开的EHR数据集和评估指标，以促进新研究者的可重复性和可访问性。
    
10.  **新兴趋势和开放性问题（Emerging Trends and Open Problems）**
     
     ：讨论了当前的新兴趋势，如基础模型、LLM驱动的临床代理和EHR到文本的翻译，以及当前面临的挑战，如基准测试、可解释性、临床对齐和泛化能力。
     

  

===

二、多模态学习
=======

多模态学习部分，文章介绍了如何将医学影像、临床文本和结构化EHR数据相结合，以实现更全面的患者建模和更准确的临床决策支持。这些方法通过全局对齐、细粒度对齐、从2D到3D的扩展、区域级建模、数据高效的并行和未配对对齐、时间建模以及外部知识整合，显著提高了多模态模型的性能和泛化能力。这些多模态学习策略为医学影像和临床文本的整合提供了强大的工具，支持从诊断支持到治疗规划的广泛应用。

三、大语音模型建模和系统
============

大型语言模型的建模和系统章节，文章阐述了如何**利用大型语言模型（LLMs）对电子健康记录（EHR）进行建模，包括了提示设计→模型适配→知识增强→智能体系统**四个层面，展示了如何将通用大模型落地到EHR场景。关键贡献包括：

*   **提示工程**
    
    解决零样本/少样本场景；
    
*   **预训练+微调**
    
    使LLM理解医学语义；
    
*   **RAG**
    
    把外部知识注入推理；
    
*   **智能体框架**
    
    模拟医生多步决策，支持**诊断、指南查询、患者管理**等全流程任务。
    

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSh8vdKP2XTRLFlsA0Mu6YymgkarMicADbypSibhU0oJUfdzicMQO2ZEjxPibOtyReoDicss5nCl36IjkQ/640?wx_fmt=png&from=appmsg)

四、临床应用

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibSh8vdKP2XTRLFlsA0Mu6YyZqS8ictfWzC3A1KbRL3aka5Net2MmrqIeoOfsZT5ryp7FBCROcnSBMA/640?wx_fmt=png&from=appmsg)

临床应用部分，文章把 AI 在电子健康记录上的落地场景包括了诊前→ 诊中→诊后三阶段，也包括行政、运营、诊断、科研等角度的应用。按应用主题，临床应用包括：

### **1️⃣ 临床文档理解**

**任务**

**输入**

**输出**

**技术路线**

**文档摘要**

长病历 / 多份报告

简洁摘要

抽取式 vs 生成式；LLM 微调

**临床笔记生成**

影像 / 检验结果

结构化或叙事报告

多模态 VLM + Few-shot

**概念抽取**

自由文本

UMLS/ICD 标准化实体

规则 → 嵌入 → LLM+RAG

**影像-文本检索**

影像 + 文本库

相似案例列表

跨模态对齐

**ICD 自动编码**

出院小结

ICD-9/10 代码

图神经网络、弱监督、LLM

**临床计算**

表单数值

风险评分 / 剂量

LLM 调用外部计算器

### **2️⃣ 临床推理与决策支持**

**任务**

**场景**

**技术路线**

**示例**

**诊断预测**

慢性病、ICU 恶化

时间序列 Transformer、多模态融合

RETAIN, DiaLLMs

**鉴别诊断（DDx）**

罕见病、复杂病例

症状序列生成、多 Agent 会诊

Diaformer, MAC\[52\]

**风险/预后预测**

再入院、死亡、并发症

时序注意力、知识图谱、图神经网络

GRAM, GRASP, ChronoFormer

**队列发现 / 患者分层**

科研入组、精准治疗

无监督聚类、表型发现

COMET, Virchow, AFISP

### **3️⃣ 临床运营与工作流优化**

**任务**

**目标**

**技术路线**

**示例**

**分诊**

影像/检验资源排序

多任务风险模块 + LLM 评估

AI Smart Density（乳腺癌补 MRI）

**转诊推荐**

基层→专科

LLM 聊天机器人 + 指南对齐

DeepDR-LLM（糖网转诊）

**患者-试验匹配**

自动筛选受试者

LLM 解析入排标准

PRISM（OncoLLM 匹配肿瘤试验）

  

===

五、评估基准
======

文章为 EHR 建模与 LLM 医疗应用提供了“数据集 + 评估指标”的一站式参考，包括19 个数据集 × 6 类指标，确保研究可复现、可比较。**1️⃣ 公开 EHR 数据集**

数据集名称

规模

疾病范围

数据来源

典型任务

**MIMIC-III**

5.3 万 ICU 入院

综合重症监护

美国贝斯以色列女执事医疗中心（BIDMC）

通用表格数据（如死亡率预测、治疗效果评估）

**MIMIC-IV**

6.5 万 ICU 与急诊入院

综合重症/急诊

美国贝斯以色列女执事医疗中心（BIDMC）

通用表格数据（如死亡率预测、风险预测）

**eICU-CRD**

13.9 万 ICU 留观（多中心）

综合重症监护

美国 208 家医院

通用表格数据（如死亡率预测、风险预测）

**EHRSHOT**

7 千例

涵盖 ICU/急诊外的高度异质诊断

斯坦福 STARR-OMOP 数据库

通用表格数据，含 15 项预定义下游任务（如再入院预测、诊断预测）

**SymCat**

—

801 种基层常见疾病

合成数据

诊断预测

**MedAlign**

276 例

涵盖 ICU/急诊外的高度异质诊断

斯坦福 STARR-OMOP 数据库

表格 + QA 混合数据，含 5 项预定义任务（如临床笔记生成）

**MedQA**

6.1 万题

各国医学执照考试常见病

美国、中国大陆、中国台湾医学执照考试

综合临床决策支持（如诊断预测、治疗建议）

**Medbullets**

308 题

医学执照考试常见病

Medbullets 在线平台（USMLE Step 2/3 题型）

综合临床决策支持

**HEAD-QA**

6.7 千题

护理、药理、心理等多学科疾病

西班牙卫生专业考试题

综合临床决策支持

**Open-XDDx**

570 例

9 大类疾病（心血管、消化等）

医学教材 + MedQA USMLE 数据

鉴别诊断预测

**DDXPlus**

130 万例

多种模拟诊断

合成数据

鉴别诊断预测

**MEDEC**

4 千例

涵盖 5 大临床流程的多样疾病

标注 MedQA + 华盛顿大学三家医院系统

医疗错误检测

**MedCalc-Bench**

1 千题

心、脑、肾、肝、代谢、呼吸、血栓等疾病

MDCalc 临床公式

定量临床计算

**PubMedQA**

27.3 万题

PubMed 摘要中提到的多种疾病

PubMed 摘要（人工或自动标注 QA）

概念抽取、诊断预测

**MedHallu**

1 万题

PubMed 摘要中提到的多种疾病

基于 PubMedQA 生成

概念抽取、医疗幻觉检测

**MTSamples**

5 千例

覆盖 40 个医学专科的诊断

MTSamples.com 用户贡献文本

概念抽取、治疗建议

**DischargeMe**

—

急诊入院、放射科病历

MIMIC-IV Note 模块

临床笔记自动生成

**ACI-Bench**

207 例

各种模拟诊断

人工标注合成数据

临床笔记自动生成

**MedicationQA**

674 问答

与用药相关的疾病（如药物过敏）

MedlinePlus 匿名用户提问

临床用药解读

**2️⃣ 评估指标大全**

**任务**

**维度**

**指标**

**公式**

**分类**

  

  

  

准确率

Accuracy

(TP + TN) / 总样本

精确率

Precision

TP / (TP + FP)

召回率

Recall

TP / (TP + FN)

F1 分数

F1-score

2 × Precision × Recall / (Precision + Recall)

**回归**

  

  

  

平均绝对误差

MAE

(1/n) Σ

均方误差

MSE

(1/n) Σ(y - ŷ)²

均方根误差

RMSE

√MSE

决定系数

R²

1 - Σ(y - ŷ)² / Σ(y - ȳ)²

**生存预测**

  

C-index

Concordant Pairs / Comparable Pairs

  

综合 Brier 分数

IBS

∫₀^τ BS(t) dt

**时间序列预测**

  

  

  

逐步 MAE

Step-wise MAE

每步平均绝对误差

逐步 RMSE

Step-wise RMSE

每步均方根误差

动态时间规整

DTW

min Σ d(x\_i, y\_j)

预测区间覆盖率

Prediction Interval Coverage

真实值落在预测区间内的比例

**排序/排名**

  

  

  

  

  

  

  

  

覆盖率误差

Coverage Error

平均最大排名差

排序损失

Ranking Loss

平均逆序对

One-Error

首位错误率

若首位不在真实集合则为 1

Recall@k

Recall@k

真实集合在前 k 中的比例

Precision@k

Precision@k

前 k 中真实集合的比例

Hit Rate@k

Hit Rate@k

只要前 k 命中即为 1

平均倒数排名

MRR

1 / rank\_first\_hit

平均精度

Average Precision

Σ(Precision\_i × ΔRecall\_i)

NDCG@k

NDCG@k

DCG@k / IDCG@k

**生成式建模**

  

动态时间规整

DTW

同上

最大均值差异

MMD

衡量生成分布与真实分布的距离

  

===

六、未来趋势和问题
=========

作者对未来3–5年进行了展望，给出 **EHR×LLM 接下来最可能出现的三大技术浪潮**，随后列出 **仍未跨越的四道鸿沟。作者任务**只有把 **数据规模、评估维度、模型架构、临床对齐** 四方面问题克服，面向电子健康记录的大语言模型才能真正从论文走进病房，成为医生可信赖、患者可受益的临床工具。内容可概括为：

* * *

### **一、新兴趋势（Emerging Trends）**

1.  **EHR 基础模型**
    
    把高度结构化的实验室值、诊断代码、用药记录等转成 LLM 能直接“阅读”的语义文本（如 DiaLLMs 的 CTR 机制），从而让大模型第一次真正“读懂”电子病历，而不仅仅是通用医学语料。
    
2.  **疾病专用多模态底座**
    
    不再追求“大一统”的医疗 VLM，而是针对肿瘤、眼科、心血管等具体疾病，把影像、EHR 时序、基因等多模态信息深度融合，兼顾分辨率差异与真实临床流程，实现更精准、更易解释的个体化决策。
    
3.  **临床智能体与具身 AI**
    
    用 LLM 驱动“感知-规划-执行-记忆”闭环，模拟医生多步推理：感知：读取 EHR、影像、实时监测数据；规划：调用外部指南、知识图谱；执行：生成代码、SQL、或直接操控手术机器人、ICU 床旁设备。代表系统：ColaCare、MedAgent-Pro、AgentClinic。
    

* * *

### **二、开放性问题（Open Problems）**

### **表格**复制

**问题维度**

**现状痛点**

**作者建议**

**数据**

公开集小、单中心、缺乏多样性；合成数据难保临床一致性

建立跨机构、跨人群、纵向随访的大规模基准

**评估**

过度依赖 AUC/F1，忽视公平、可解释、临床收益

推出多维评估框架：公平性、校准度、安全性、可用性

**架构**

Transformer 把 EHR 当“长文本”，未显式利用 visit-event-code 层级与不规则时间间隔

设计树-图-时序混合架构，显式编码层级与时间

**可解释与临床对齐**

单跳“症状→诊断”缺乏医生多轮问诊-检验-修正的闭环；输出可能违背指南

构建交互式诊断模拟器，引入规则约束解码，强制输出证据链+置信度，并通过医生可用性测试

* * *

###   

### 如需要《电子健康记录建模的系统综述：从深度学习方法到大型语言模型》（英文，59页），请关注私信留言。

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言