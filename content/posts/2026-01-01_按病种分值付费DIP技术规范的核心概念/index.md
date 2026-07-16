---
title: "按病种分值付费（DIP）技术规范的核心概念"
date: 2026-01-01
draft: false
tags: [DRG, DIP, 医院运营, 数据分析]
categories: ["医院运营"]
---
     按病种分值付费（DIP）技术规范的核心概念 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

按病种分值付费（DIP）技术规范的核心概念
=====================

原创 Hi您好 恒健知行 2025-12-26 18:07 安徽

> 原文地址: [https://mp.weixin.qq.com/s/KgtauQtw8CC-jzt-8HRyxA](https://mp.weixin.qq.com/s/KgtauQtw8CC-jzt-8HRyxA)

1.DIP分组
=======

DRGs有全国分组规范，与DRGs不同，DIP是按病种分值付费的模式，它是利用大数据建立的医保支付方式，是基于“疾病诊断+治疗方式”对疾病分类，还是基于区域范围内“同病同治同价”，所以会发现每个地区发布的DIP病种分值、费率不同。参考《国家医疗保障按病种分值付费（DIP）技术规范》其分组方式是：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTEs25ibWZhk6Ky2qAgd9q7Wbhc4Zn1HtMlibloeWYjkENkibsLbAujC5AbL17JaCflJDJABRGFMjubQ/640?wx_fmt=png)

1.  基于一定区域内全部现有病例的首页数据，这个区域即各医疗机构所在地区所有的病例
    
2.  基于全部病例，然后穷举形成该地区DIP基础病种
    
3.  DIP基础病种分成核心/综合病组，综合病组还要根据其治疗方式再进行划分
    
4.  依次向上形成二级目录、一级目录（供检索查询统计使用）
    

2.DIP分值
=======

病种分值是依据每一个病种组合的资源消耗程度所赋予的权值，反映的是疾病的严重程度、治疗方式的复杂与疑难程度，也就是DRGs的RW。其计算过程：

（1） 计算每个病种组合的平均费用。一般而言，病种越严重、所采用的技术越先进，平均医药费用越高；

（2） 计算本地所有出院病例的平均费用；

（3） 计算病种分值，即某病种组合平均医药费用与所有出院病例平均医药费用的比值。具体计算公式为：

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTEs25ibWZhk6Ky2qAgd9q7WTwMiaDppMCgcPJAXxpZ8xz8zmlePia7wCfpTV1j7wXjaJicAze35gx1CA/640?wx_fmt=png)

M：全部病例平均住院费用；![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTEs25ibWZhk6Ky2qAgd9q7WABE8iaYgjaWoyJ6pFYnlrZMsqgOXicbP6q243Epq4loQtPMibafOfEgFQ/640?wx_fmt=png)：第i类病种组合内病例的平均住院费用

3.DIP分值点值
=========

DIP通过年度医保可支付基金额、医保支付比例及DIP病例总分值计算分值点值。DIP的分值点值根据数据来源和适用场景分为预算点值和结算点值。DIP预算点值在每年年初确定，基于该支付方式覆盖的住院总费用，建立医保资金的预估模型、支撑医保基金全面预算管理，是定点医疗机构落实医保过程控制的重要指标；DIP结算点值在每年年终或第二年年初确定，以医保总额预算为前提，用于计算支付标准，与定点医疗机构进行年度清算。

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTEs25ibWZhk6Ky2qAgd9q7WJXHSERXgibf8yVdwKaP3IQVXKeu0yYLlJtViacX4xmsThG2POs3mKickw/640?wx_fmt=png)

（1）预算分值点值均值计算

预算分值点值均值=加权平均年度住院总费用/Σ（DIP分值\*对应病种病例数量），其中年度住院总费用采用加权平均的方式计算，与DIP分值的计算过程相似，前3年住院总费用的权重仍为1:2:7。

（2）结算分值点值计算

结算分值点值均值=（当年医保基金可用于DIP付费总额/医保报销比例）/Σ（DIP分值\*对应病种病例数量）

![](https://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTEs25ibWZhk6Ky2qAgd9q7WAVEWXmiccGu6JgOq74FqUXxnR8gicxfw1oDtDWQnQg9mwiaXxTpTBjcGA/640?wx_fmt=png)

4.费用异常病例
========

疾病的不确定性是医疗服务市场有别于竞争型市场的要素之一，通常情况下，受不确定性因素影响的个案对大数据结果影响较小，但随着其在病例数量中体量的增加，会对医疗机构的费用造成较大影响，需要基于大数据寻找一般规律进行特殊处理。规则上已经对广泛人群造成影响的不确定性因素主要包括疾病严重程度、年龄特征等特异变化，需建立基于DIP辅助目录的应用体系，对受影响的疾病组合进行细化分型。

经过个体特异变化校正后，仍会有部分费用异常病例，需要建立基于大数据的费用异常病例筛选机制：

（1） 费用超低病例

将费用低于病种组合支付标准50%的病例作为费用超低病例，这部分病例将按照对应病种组合标准据实支付，其权重考虑如下：

费用极低病例病种分值点值系数=该病例医疗总费用/上一年度同级别定点医疗机构该病种次均医疗总费用

（2） 费用超高病例

将费用超过病种组合支付标准2倍以上的病例作为费用超高病例，其权重考虑如下：

费用超高病例病种分值点值系数=（该病例医疗总费用/上一年度同级别定点医疗机构该病种次均医疗总费用-2）+1

最后的极端情况：极端异常病例是经过个体特异变化校正后，费用超过病种组合支付标准5倍以上的病例，这些病例在费用、住院天数等具体指标上特异变化极端，超过了方法常态数值规律，需要建立筛选与医疗专家集体评审机制，对个体差异、疾病严重程度等偏差原因进行分析并予以支付。

  

相关系列文章：

[DRGS背景下重点专病运营数据分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488101&idx=1&sn=85b3420de67fdf96da83b788b2838504&scene=21#wechat_redirect)

[医院运营病种盈亏分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486840&idx=1&sn=aabeeaf3d59bd4251aa62e3f47058cac&scene=21#wechat_redirect)

[某医院DIP病种分析简报](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486799&idx=1&sn=8756d7d910bd83427faf565b4676a32a&scene=21#wechat_redirect)

[病种分析统计样表](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486353&idx=2&sn=fa6889dc1ba36a85579cc7f82a28ef3e&scene=21#wechat_redirect)

[医院运营管理病种与科室关联展示（组合图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486847&idx=1&sn=0c981e69f60b726660ac9897d2342cc2&scene=21#wechat_redirect)

[医院运营疾病谱分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486815&idx=1&sn=b94f41396d12c52f13400cde64958c91&scene=21#wechat_redirect)

[病种分布可视化（旭日图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486809&idx=1&sn=5423fe9b340baea81273c1a163ba31c3&scene=21#wechat_redirect)

[病种费用分布可视化（云雨图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486791&idx=1&sn=6428ead198c1ab91ea49131c525f196f&scene=21#wechat_redirect)

[科室运营分析之病种动态分析（动态条形图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486725&idx=1&sn=6ed61c865f257f2c0ddef4a20089469c&scene=21#wechat_redirect)

[病种运营分析之优势科室展示（三维气泡图](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486701&idx=1&sn=ac0e486ab83e6578abaf82be73e256d1&scene=21#wechat_redirect)[）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486701&idx=1&sn=ac0e486ab83e6578abaf82be73e256d1&scene=21#wechat_redirect)

[科室运营分析之优势病种挖掘（矩阵树图）](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247486700&idx=1&sn=52796a0574a3dde2e544ba789bd77522&scene=21#wechat_redirect)

  

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言