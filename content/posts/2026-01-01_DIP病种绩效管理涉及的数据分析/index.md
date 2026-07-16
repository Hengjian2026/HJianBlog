---
title: "DIP病种绩效管理涉及的数据分析"
date: 2026-01-01
draft: false
tags: [DIP, 数据分析, AI, 绩效, 成本]
categories: ["医院运营"]
---
     DIP病种绩效管理涉及的数据分析 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

DIP病种绩效管理涉及的数据分析
================

原创 Hi您好 恒健知行 2026-03-18 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/1W7uedY3NJ3Gp85o8RYpfA](https://mp.weixin.qq.com/s/1W7uedY3NJ3Gp85o8RYpfA)

> **导读**：DIP（按病种分值付费）改革背景下，如何构建科学的病种绩效考核体系？本文以模拟数据为基础，**一步一步**展示从病种分组、成本核算、指标设计到绩效分配的完整数据加工与分析流程，共涉及 **9 张图表**、**多维数据表**。

* * *

一、总体建设框架
--------

DIP病种绩效考核体系建设可分为 **7 个核心步骤**：

步骤

名称

关键产出

数据需求

Step 1

病种分组与CMI分析

病种CMI值表

病案首页、DIP分组器

Step 2

科室盈亏核算

科室盈亏表

DIP结算清单、财务成本

Step 3

病种成本结构拆解

成本构成表

财务系统、HIS系统

Step 4

绩效指标体系设计

指标权重表

专家德尔菲法

Step 5

绩效得分计算

病种绩效得分分布

综合运算

Step 6

波士顿矩阵定位

病种战略分层图

CMI × 盈亏 × 量

Step 7

绩效薪酬挂钩

分配方案表

HR系统

* * *

二、Step 1：病种分组与CMI值分析
--------------------

### 2.1 数据来源与处理

**原始数据**：从医院HIS系统导出近一年的病案首页数据，包含主要诊断编码（ICD-10）、手术操作编码、住院天数、费用明细等字段。

**数据处理过程**：

1.  **数据清洗**：剔除住院天数≤0、费用异常值（>3σ）的病例
    
2.  **DIP分组**：将病案数据输入DIP分组器，按"诊断+操作"组合分组
    
3.  **CMI计算**：每个病种组的CMI = Σ(各病例RW值) / 病例数
    

### 2.2 模拟数据：主要病种组CMI值

病种分组

CMI值

病例数

平均费用(元)

平均住院日

白内障手术

0.52

260

6,800

2.5

急性阑尾炎

0.68

320

9,200

5.0

糖尿病

0.76

520

8,500

7.0

肺炎

0.85

450

11,200

8.0

胆囊切除

0.92

190

14,500

6.5

冠心病

1.08

380

18,600

7.5

脑梗死

1.42

280

28,000

12.0

骨折内固定

1.65

150

35,000

10.0

恶性肿瘤化疗

1.88

210

42,000

14.0

髋关节置换

2.15

85

52,000

11.0

### 2.3 可视化分析

  

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNClfibzYJGs7vVUBCtwulR7G2iac817rAPOAQxftE6K6XmF7vmVXeRaSbbOVEgib5MCmrgN5LLHn7RkbcBc37g2qFTbHGg5s4TP4/640?wx_fmt=png&from=appmsg)

主要病种组CMI值与病例数分布

**分析要点**：

*   CMI值越高，代表病种技术难度和资源消耗越大（如髋关节置换CMI=2.15）
    
*   病例量大的低CMI病种（如糖尿病520例，CMI=0.76）是医院"基本盘"
    
*   CMI高但病例少的病种（如髋关节置换85例）需要关注技术发展与成本优化
    

* * *

三、Step 2：科室DIP盈亏核算
------------------

### 3.1 数据加工流程

**输入数据**：

*   **DIP收入侧**：分组分值 × 点值 × 病例数
    
*   **成本侧**：科室全成本（含直接成本 + 分摊的间接成本）
    

**计算公式**：

`科室DIP收入 = Σ(各病种分值 × 点值 × 病例数)   科室实际成本 = 直接成本(药品+耗材+人力) + 间接成本分摊   盈亏 = DIP收入 - 实际成本   盈亏率 = 盈亏 / DIP收入 × 100%   `

### 3.2 模拟数据：各科室盈亏分析表

科室

DIP收入(万元)

实际成本(万元)

盈亏(万元)

盈亏率(%)

风险等级

肿瘤科

620

580

+40

+6.5

低风险

心内科

580

520

+60

+10.3

健康

骨科

480

410

+70

+14.6

健康

神经内科

420

460

\-40

\-9.5

⚠预警

普外科

390

420

\-30

\-7.7

⚠预警

呼吸科

350

380

\-30

\-8.6

⚠预警

妇产科

310

290

+20

+6.5

低风险

消化科

290

310

\-20

\-6.9

关注

内分泌科

260

280

\-20

\-7.7

关注

泌尿科

220

200

+20

+9.1

健康

儿科

180

170

+10

+5.6

低风险

眼科

150

140

+10

+6.7

健康

### 3.3 可视化分析

  

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZN9zj2DNNsFQiajO6vfABwSg3ZdLYqwkQIEXd5q0Y5uHwHyqNYVC6cP88cFT0qFb1MFhUKPXUibZ6Op3U2ib64RY04j3fAIZUq69M/640?wx_fmt=png&from=appmsg)

各科室DIP盈亏分析

**关键发现**：

*   **盈利科室**：骨科(+14.6%)、心内科(+10.3%)、泌尿科(+9.1%)，具有较强的病种管理能力
    
*   **亏损科室**：神经内科(-9.5%)、呼吸科(-8.6%)、普外科(-7.7%)，需要重点分析亏损原因
    
*   **总体盈余**：全院合计盈余约+70万元，但分化严重
    

* * *

四、Step 3：病种成本结构深度拆解
-------------------

### 4.1 成本拆解方法

按病种逐项拆解成本构成，识别"成本杠杆点"：

`总成本 = 药品费 + 耗材费 + 检查检验费 + 治疗操作费 + 床位护理费 + 其他费用   `

### 4.2 模拟数据：典型病种成本结构（占比%）

病种

药品费

耗材费

检查检验

治疗操作

床位护理

其他

合计

急性阑尾炎

35%

15%

20%

15%

10%

5%

100%

肺炎

42%

8%

22%

12%

12%

4%

100%

脑梗死

38%

5%

25%

18%

10%

4%

100%

髋关节置换

25%

35%

12%

18%

8%

2%

100%

冠心病

40%

12%

20%

15%

10%

3%

100%

恶性肿瘤化疗

55%

10%

18%

10%

5%

2%

100%

### 4.3 可视化分析

  

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOu8W1Q0ERiczxpEhl9pOntDFdL4jAIaZYvHCnfvB9Wsu41QHeIr8gymWuNiabRpsxmVOPtg7xvkTHzkLNBbeWIe5qdlkLg2B8CA/640?wx_fmt=png&from=appmsg)

典型病种成本结构分析

**成本优化策略**：

*   **药品费占比高的病种**（肺炎42%、肿瘤化疗55%）→ 重点管控药品使用，推进合理用药
    
*   **耗材费占比高的病种**（髋关节置换35%）→ 集中采购、国产替代
    
*   **检查检验占比高的病种**（脑梗死25%）→ 推进检查结果互认，避免重复检查
    

* * *

五、Step 4：绩效考核指标体系设计
-------------------

### 5.1 指标体系框架（6维度）

基于平衡计分卡（BSC）理念，设计 **6大维度、15项指标**：

维度

权重

核心指标

指标定义

计算公式

**CMI导向**

20%

CMI达成率

实际CMI与目标CMI比值

实际CMI/目标CMI×100%

  

  

病种结构优化率

高CMI病种占比变化

高CMI病例数/总病例数

**费用控制**

20%

费用消耗指数

实际费用/DIP标准费用

平均费用/DIP支付标准

  

  

药占比

药品费/总费用

药品费/住院总费用×100%

  

  

耗材占比

耗材费/总费用

耗材费/住院总费用×100%

**时间效率**

15%

平均住院日

所有病例平均住院天数

Σ住院天数/病例数

  

  

时间消耗指数

实际住院日/标准住院日

平均住院日/DIP标准天数

**质量安全**

20%

低风险组死亡率

低风险死亡病例/低风险总病例

死亡率

  

  

再入院率

30天内再入院比例

再入院病例/总病例×100%

  

  

并发症发生率

术后并发症病例占比

并发症病例/手术病例×100%

**患者体验**

15%

患者满意度

问卷调查得分

满意度评分均值

  

  

投诉率

投诉病例/总病例

投诉数/总病例×100%

**成本效益**

10%

盈亏达成率

实际盈亏/目标盈亏

实际/目标×100%

  

  

成本收入比

总成本/DIP总收入

成本/收入×100%

### 5.2 权重确定方法

采用 **德尔菲法（Delphi Method）** 确定指标权重：

1.  遴选 15 名专家（院长、医务科、财务科、临床科主任）
    
2.  经过 3 轮匿名评分
    
3.  计算各指标权重的均值和变异系数（CV<0.25为共识达成）
    

### 5.3 科室绩效评估雷达图

  

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMpJbcP3MOFVNHGmOZJECzE74WAXGVmZeATLaHZuCLKdzctOibN07GSw4nhZ9BbDYpYdHF0oibNag5gYWcT3JkYxX4ltibZsniaUzk/640?wx_fmt=png&from=appmsg)

科室绩效考核多维评估雷达图

**图示说明**：

*   **心内科**（蓝色）：CMI导向和质量安全表现突出，但费用控制需要加强
    
*   **骨科**（红色）：成本效益和时间效率较优，质量安全还有提升空间
    
*   **普外科**（绿色）：费用控制和患者满意度较好，CMI值偏低
    

* * *

六、Step 5：绩效得分计算与分布分析
--------------------

### 6.1 计算公式

每个病种的绩效综合得分：

`综合得分 = Σ(各维度得分 × 权重) × 100      其中：     各维度得分 = 实际值 / 目标值（正向指标）     各维度得分 = 目标值 / 实际值（逆向指标，如费用、住院日）   `

### 6.2 模拟数据：典型病种绩效得分明细

病种

CMI导向(20%)

费用控制(20%)

时间效率(15%)

质量安全(20%)

患者体验(15%)

成本效益(10%)

**综合得分**

髋关节置换

95

72

85

92

88

78

**85.2**

急性阑尾炎

65

88

92

85

90

82

**83.6**

冠心病

78

75

78

90

85

70

**80.2**

脑梗死

88

68

70

82

80

65

**76.3**

肺炎

55

82

80

88

86

75

**77.1**

恶性肿瘤化疗

92

60

65

78

82

55

**73.8**

糖尿病

48

85

88

80

92

88

**78.6**

胆囊切除

62

90

95

92

88

90

**85.3**

骨折内固定

82

70

72

85

84

68

**77.9**

白内障手术

35

95

98

95

95

95

**83.2**

### 6.3 得分分布分析

  

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOMHCibYaltqFRIiaib7ibicicx2lf2icSVqo8Q5yiaYjt4jp5nFz2jJwmvIDTYHnRI3MhlaXPeFUmGah92dkFr7DLMfq95qjibR4g71JBs/640?wx_fmt=png&from=appmsg)

全院病种绩效考核得分分布

**分布统计**：

统计量

数值

均值

72.8分

中位数

74.5分

标准差

13.2分

优秀（≥80分）占比

33%

合格（60-79分）占比

52%

待改进（<60分）占比

15%

* * *

七、Step 6：波士顿矩阵——病种战略定位
----------------------

### 7.1 分析逻辑

将病种按 **相对市场份额**（横轴）和 **市场增长率**（纵轴）两个维度进行四象限分类：

象限

类型

特征

战略建议

右上

明星病种

高增长、高份额

加大投入，保持优势

左上

问题病种

高增长、低份额

增加资源，争取份额

右下

现金牛病种

低增长、高份额

维持现状，控制成本

左下

瘦狗病种

低增长、低份额

考虑缩减或退出

### 7.2 可视化分析

  

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNOnzUia4ib0Vc3jHWicS0OwHzo12MOsCJsWk2oEeDSwaZstbww9Sa8eUvaWMxz77CpXUH7gaFfudlakFx5faIsmK5nntdCticbaTU/640?wx_fmt=png&from=appmsg)

病种战略定位波士顿矩阵

### 7.3 战略分层结果

**明星病种（★ 重点维护）**：

*   恶性肿瘤化疗（CMI=1.88，增长率25%）
    
*   髋关节置换（CMI=2.15，增长率22%）
    
*   骨折内固定（CMI=1.65，增长率18%）
    

**现金牛病种（持续贡献）**：

*   白内障手术（份额高，增长率低→稳定收入源）
    
*   糖尿病（520例/年，份额高，增长平稳）
    
*   急性阑尾炎（320例/年，份额稳定）
    

**问题病种（重点突破）**：

*   脑出血（高增长但份额低→需要技术突破）
    
*   前列腺手术（增长潜力大，需拓展病源）
    

**瘦狗病种（评估优化）**：

*   市场份额低且增长乏力的病种需要评估是否继续投入
    

* * *

八、Step 7：绩效薪酬挂钩方案
-----------------

### 8.1 薪酬结构设计

将科室绩效薪酬拆分为 **5 个组成部分**：

构成部分

占比

分配依据

基础绩效

40%

科室工作量（病例数×基础分值）

CMI奖励

20%

CMI值超过基准线部分的奖励

成本控制奖励

15%

盈亏率排名（前30%获奖励）

质量安全奖

15%

质量指标达标情况

效率提升奖

10%

住院日压缩、费用优化

### 8.2 模拟数据：各科室绩效薪酬分配

  

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMiaHg0ic3aLoxMqc2B5L2kw73URcQITiaKU5H9zSUDrQGhrkibmN1hW6JPUvDFYhyAeSzEuyVzib21t1wHLWMgpWYG5tXtalqupUqk/640?wx_fmt=png&from=appmsg)

各科室绩效薪酬分配模拟

### 8.3 个人层面分配

**科室二次分配公式**：

`个人绩效 = 科室绩效总额 × 个人贡献系数      个人贡献系数 = (工作量得分 × 0.3 + 质量得分 × 0.3 + 效率得分 × 0.2 + 教学科研 × 0.2) / 科室贡献系数总和   `

* * *

九、综合分析：病种盈亏象限
-------------

### 9.1 病种层面的盈亏分析

将每个病种的 **病例数量** 与 **盈亏率** 进行交叉分析，形成四象限分布：

  

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMf0HjcicX8N5ZMX48OibibSdaBTQrdfNLK3fLaCbuSxexzdGCa2T0lXtAWJlm7tCaiaicfl3HkyYEDCcINFANw5sPq89KGw12I5Dgw/640?wx_fmt=png&from=appmsg)

病种盈亏象限分析

象限

含义

管理策略

病种示例

高量盈利

规模大且赚钱

重点维护，扩大规模

阑尾炎、白内障

低量盈利

赚钱但量少

拓展病源，提升规模

泌尿结石、甲状腺手术

高量亏损

量大但亏损

成本优化，流程再造

肺炎、糖尿病

低量亏损

量少且亏损

评估必要性，考虑缩减

部分罕见病种

* * *

十、实施效果模拟（年度趋势）
--------------

### 10.1 关键指标年度变化

假设实施绩效考核12个月后的效果（模拟数据）：

  

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPMTI5Rianue4OMoV6rvszCxIgWPTFIfVibPYeuUIhzgUtRR2pNgLGYdZHczBIZxt87Jibxth4dTJVA0enBL8vZQcv11M9pBfwO6s/640?wx_fmt=png&from=appmsg)

DIP绩效考核实施效果年度趋势

### 10.2 量化效果汇总

指标

实施前(1月)

实施后(12月)

变化幅度

全院CMI值

1.02

1.20

**+17.6%**

成本收入比

98%

85%

**\-13.3个百分点**

质量安全评分

82分

91分

**+11.0%**

平均住院日

8.5天

6.7天

**\-21.2%**

亏损科室数

5个

2个

**减少3个**

人均绩效增幅

—

—

**+15-25%**

* * *

十一、总结
-----

DIP病种绩效考核体系建设是一个 **数据驱动、分步推进** 的系统工程。核心要点：

1.  **数据先行**：以病案首页和财务数据为基础，确保数据准确完整
    
2.  **分步推进**：从病种分组→盈亏核算→成本拆解→指标设计→得分计算→薪酬挂钩，层层递进
    
3.  **可视化呈现**：通过图表直观展示分析结果，便于管理层决策
    
4.  **持续迭代**：绩效体系不是一成不变的，需要根据实施效果动态优化
    

> **关键公式回顾**：`绩效得分 = f(CMI达成率, 费用控制, 时间效率, 质量安全, 患者体验, 成本效益)`

通过以上 7 步数据加工与分析流程，医院可以建立起科学、公平、可操作的 DIP 病种绩效考核体系，真正实现 **"以数据说话、以绩效激励、以质量为本"** 的管理目标。

* * *

_本文数据均为模拟数据，仅供方法论参考。实际应用需根据医院具体情况进行参数调整。_

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言