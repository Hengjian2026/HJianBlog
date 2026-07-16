---
title: "PPT方式总结病案首页数据背后的信息"
date: 2026-01-01
draft: false
tags: [医院运营, 数据分析, AI]
categories: ["医院运营"]
---
     PPT方式总结病案首页数据背后的信息 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

PPT方式总结病案首页数据背后的信息
==================

原创 恒健知行 恒健知行 2026-06-02 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/hSh0O1oIxKTz1\_wqxvi7QA](https://mp.weixin.qq.com/s/hSh0O1oIxKTz1_wqxvi7QA)

病案首页是医院最有价值的数据之一，其字段全面、且是归档属性的数据，所以基本是确定性的数据，能够全面反映医院的运营情况。

医院的病案统计室，通常会基于病案数据制作很多报表，但是报表的优点是信息全面，可以制作从明细到汇总的各类报表，但缺点也很明显，那就是我们从众多表格中挖掘有价值的信息是非常困难的。

当然，我们也可以从表格数据制作Word版的分析报告，仔细阅读分析报告固然可以获得有价值信息，但需要更多的时间仔细阅读。但对于汇报的场景可以选择PPT的方式。采用PPT的方式主要呈现重点信息，能够给出结论的信息，对于更加明细的数据还是需要Word或者Excel明细表格。它们互为补充，成为运营人员日常工作的3个必须技能。

关于PPT的制作可以参考：

[一句话实现从原始数据Excel到汇报展示PPTX](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508307&idx=1&sn=43ab414313fb5def939ba55739ba990a&scene=21#wechat_redirect)

[专为数据分析师打造：开源PPT神器 slides\_v3，比肩麦肯锡的第三种选择](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508430&idx=1&sn=121dbcffda7b2a8356538d2d55690372&scene=21#wechat_redirect)

[对比流行的PPT-skills工具，Slides\_v3也可以惊艳](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508453&idx=1&sn=bf481c918b24bcd5977789fb5c1fc048&scene=21#wechat_redirect)

[红色背景的医院月度分析报告呈现](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508496&idx=1&sn=454618d86747514938945c7b18050023&scene=21#wechat_redirect)

[医疗质量管理工作汇报报告](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508540&idx=1&sn=66c5b1d48454c8e265a53b2d50e45cba&scene=21#wechat_redirect)

[某院半年度运营分析可视化模版【 】](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247508232&idx=1&sn=6f832d358ecfb6d7215d7976ea632935&scene=21#wechat_redirect)

关于病案数据的情况，公众号写过相关文章，如：

[病案数据对医院运营管理中的价值](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487956&idx=1&sn=878e1d60439a04056ad4031a506cc0f9&scene=21#wechat_redirect)

[基于病案数据的多元视角统计分析与应用](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247487974&idx=1&sn=1d16d9a99d6d1775a773ca413a4b2948&scene=21#wechat_redirect)

[基于病案数据进行科室运营探索分析](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488047&idx=1&sn=2e54b5ee284ae2ca904a31a55a9a3971&scene=21#wechat_redirect)

[基于病案数据的运营数据分析系统](https://mp.weixin.qq.com/s?__biz=MzkzNjkyNjg1Ng==&mid=2247488006&idx=1&sn=674408f6984bcf60ba19a4e35ba11c45&scene=21#wechat_redirect)

病案数据可以挖掘分析的方向很多，但通过PPT的方式展示病案数据背后的信息和价值是个不错的方式，下面是从全院总体情况、费用结构分析、科室比较分析、专科（可以针对性的选择专科）分析，患者情况进行多维分析。解决麦肯锡分析思路，每一页PPT给出主要数据信息、及相关的数据结论，方便读者第一时间掌握医院运营情况。

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPASPHYEZoxAIibn286Bt68BRmV197WbC4mmopqlO1CeuicyrPw6vibCjPaGeNQPsUbg9T4cyZrcIibNbLicMA4ALrwQby6tX1d80gU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOwAcB7AMX5VQib76kL8mwqpkExibr6E5NNZHIaDJQVemUbo8E7DXicQ6IR414qhgAWsZ9iamNRjC0CPkAvum6uNgic8uCuaVwFgLoE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMHyPgVyG5ibmSFdem1xMg2OQwtKLEccJU2vtsE0yqGICsdHmO5y96WOtodwQzPiauVHTDticWuOlEtVdSiayt2SbZFcohLrWmianSE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOicdt63n93746aMpfGKicBXlrKvEDiafRYNDULDcc7zEqYibxlGqRJxfJYAqYTvwY1EVMCUy3bqaAS616qrlwOOFS47Zib3WNBZpaI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMtRp7Ck3kFkM4aLL505SrQSwaJLynib5KibwbMknG4F2DaicfV5otthlrpMtaRomnlxrRNiah1xj1MlMW7q23iaQqRFM70hickjj0L4/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMRJnliaormYjUxjLlibP5oZjGR3PHicIqZbs7dmuNORYRQJt9hWDhA2qwWJG9I28DXzheGtVjdZuveKzclqu3U4ibLyC9bFnkARNE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZP0XgEFibNxffMQsicZ25wcdDtiavU63oDpAUwf4hBA47qG7qHNtMkS057bppERLCMFQAAofDZUxgQ827FT0ooWkdTcWR9bxTXhug/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMsVtYhoN9B1xPCibh2G861A5cqs59VTH13WrY8uArmm80AeJM7UusIibmpdQlN4TicrCBicTz2kSe7SSN9VCibKc2y8998oNQA8Dhs/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOOVes92hvZrmRlibBKlC3CLiagKLWnBdjACU1P798iaFu5rib6CySdY5Bl2sjHRzIk7JPDIg0icMuDVjF7UovzwqVBhozShstBl97g/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOgAWXMXwAZ7iabQQ2Wk4iaFNEFaAUL1tRGQfBnHy0x8ELEEKuV0xlzN670142IAb85sR4XiblobuFIYrQGzVWyW5TbUWYHPR8Xew/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPorAynDNVFXaQA5ljFW4jZfuFeyI7DHuZkdr4PqdpRdkwFxmSt6EHibE89jAplPw1cJK66RG7WJCpIjWyIZ3UD1l0eewX7Sjmo/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNeJ7spItNoKElJFxc9mJQzuvsB3gfhwRPb3uoUl1FElsAPuhibW76ZQqBV9axFaUJOoCrg88PORXEj65HlpSlsY3ibNN5l2HiadI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNIWWAFOuVJjf3RwM0NibiaAC7ym3BQXjdpofwLphOOiaRYXHEXpqZT0SuicPtVcVtbyia8icKOaiaZ9VLsHSKNIMyLxKobibDfsnUolpQ/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMia358BsrfsYoibp4uj8HuibCVGBfj4xLfphaJNYtRf5AKw7gHj2brEowcoGU9BESS7UHTWjUy68rxial3QSmoDPuw0yuq6tPcvV8/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOatEV59KYQBqI7v7dibwfiakrhqMNyiaYhFDJWvdtdU8miaIXwnibwaOdL5WibPUr7yPeZicfY83ggPA4lkt6I78BBOicUiccicKkeXDzL8/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMzopAQ78e4ar6libT7rTiaSj8eYedkOLiaCms4848Ejzia4bicZ7YVSciaeOOnQ4yE8fEic7IPXSibBSOD8JSlfkGBJ1BSSwcLNEjAAxI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZODiajGCibeaNYQj8PibA3FXIC9FghOyjNYegw3XDia3R28tzcRTneTf5ULwGb1YQpwO5eoUAXeYJVk1oUVl8uZ51ficUMrG0yUG1Zw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNibvoeqDibQDhDYltakcg81L9FyMT2ukHrZeQZ8OqPXshJW2qOhLicQhVDibeSr0Xy10epIhGl4YZ4ric7tuw2g6IgSTaCkt9hw98s/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZM1Ljz4dfHPPIfsia0JXu6Vibfr8lCXhlrgc1f0yGDz4SKnwbiaLn9G7QkW89HRfCJUyOvPuber740IQmQibm4hRZhvxMZKQHZ2wvA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPlTqrM2mrWgbib4icn6MoHAfwfLkib5VE7xsHprBwAoQrwbdpqG8anOiaZicde7d9mP3riaibz1fTJxEwo0ThOYzFeoXW3ibqwBB3iaGsU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOWGDibMq48CQZLXEciceJChg4icmib29qicE4pibPsVxq0nfJCuibVrgDxIohSBX0xswiaG93EX7YAk6iaqt85VzDsCibM4Dt0ibdseE3wYA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOZwWT23dkP1FGz2QD6DNMRvysUTib7fVQzCVuxGMSxibJZpsuJr3ibhq1FNOAfElLGsMWiad3RQD8P9jGzjQnAqIlEEdtwxM9L6Fg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOsK9YUolbdek3j0yeOwNTwJqB3XeydPJQibOqjPiaL2tk6d74Sn97q85iafevFqf13RMhKEwqBZeicAia7MoMwRzFibPcU7CwhvQtAg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMRlMhgYLHc2pPuDvvyGlGnC8xpYkDCcibRrvPeCibTbX9gWwKdLhKricvtuQ1KXyeotj3J3WmUGmzxyG8SIXCYmg96VcLbpuLFwo/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOxaIuztbkMMmrn1Inta0anB56PggDyVUdI4uXhd9nA3wic9ZdG4faRnBxJoibSpm5DXiaavOquIV1k9kLMia4BeibhJHKHvzPL0RqA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMhPHrBDnzvjhTBaxaEK0wNkiazCIEE9G7QIakMzS7K8miapEtSVgZdyYyT8IZDOewHLoHlxKemj6ibfUz9wf3YRaGDmsQwfQobYI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPgp1w2NLDgBGMkCRobN9MrPibFkFfkMdqFF9NOovv5NcKXR0auoibRMs52FjQ5caYr95lHNj9cZ6TEzxhE2nNIA3IicqPjzIFEWU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMGdchanlUBUqKB1lowIj4fBRibFsQe9cs2j4GmubH5OhgMg2MkjJg60ndefmIMW7KgIdRy3jNDImlhxcZojenTTvY1jTl1ybgc/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZO33mRDBM4K4EVppYQ4aLibyoaxiaySR1F6JTWZ2iaofmUkmKh79BwfXu4Qt8GNic9RVPSKuT0CoRZ886Q6xA33DlsxJ5E64nL0KAc/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMgRDtzI29FS2q3gzib3tv944xWHez2VIVHGDNkIicOQMPQQ2melcBylRXKy6825QXnzjkae3FacKIuumvWRvha2ibibLEy3Wf27kE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPbWhzf7D0LxhqNcCMC2JPevSpbIqxI5wMnbjhzj0l3BkPW0XASt1ic9XzObQ20T2DTCExojCqjicKlP1BLnEzFt8GuhVH0ZLrAU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOBVs80lDveSKLCXICfdaTFdAZkCEjJY5skQP5KhwFF31Dp5AkI5m8msXh7d2vsW5V6jpuB2UFry0XzicwvDqScu95ghiauVec1A/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNmPvrMUBp7g1px2N0aNn832yKWicnbx4BaGxqmGrfrwfLLVia0rcZqB0calOJAAtJEWOYy2jABVrNsEA7gibhTrMhMguL0cGlWp0/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOBibFU1QUNeibHFBarLOfy6Bc0QevygnGnkCq1MKsJI8YmdnibvcLKCOwyghfd4CSRS5mOqR2IDqiaDBlPL8jesgicY2kVN67qH6gs/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNw6D95nbniaQzicYDoJQOkneF839IeeibsgWQgP8AIicRSDYgcLSibVibD7h65OcrNEX7rUMExk7309qoyUpyx6QOMbVKI8d3vjiaUfk/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMcPlknzacRILqlMScxVgXkgNWOs6tibqicoCBsTD112u57ROrCHXIdI5WgFXzrnhHRLibibsLlhcrYsxvVeicuGOGhCaUs0uic1LYNg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNhT9q98vd1diaK9eaBO4LficFtX2ibibGibBmXnXKy64Zoby1zWQZtEs1icJGpaG5N4I3Vhx3ccnkxFMOxjA8n0HD0mbjasFEo0nibR4/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMx6E8zZuz8czkyFr2J3ynYxEQMNPbGfp85JibibgEiaGh0oy0T7Zeybqic0gr1JDP9rpGwLjLaGov0cWxSQX1AVad33a2ah06vPJY/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOT2w1Yic1Den8c6AOmcZfSnFwulsiaX3pOIdVvDdAgtMs4NoUCS42E8IdSO0GjakKUG8qYI3FicoDFTJkYAj9zXBewrguVO50spA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMmgA4IiciaR9S0lagKDfQAKrAK3720BINXVOKrKKtrXyaKULHM5mCdianZ9icQGJNrCicX5cX0XzwrxYu3zKb3x4wcyRADcSf84e7E/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPwXFjOQP62I618uP1icclmLDEqqyUI4tCmT3INrzkypFKnOhqqb6gMRjtc65RZwb1hev1ffdF18dRyfChcqibAdHJwUCyWnicSTo/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPuoKn0PRSpUu74pAWLBOIDR1ibfEnPUGPe7EP44XQPk67G79Ipx3ic9aG1JaH0tnG1eDvjczfpVd6G9s9syJuyiczSP4ClDEIpUo/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMLAd4gCQBy76KyONhvyOBrNuNNVoM4YXGxoRWAHngKSM8BMZnJwLGBHBiaZqD7bdv6v2239WWYH5Fw25xGk911OgJpwVDmPSuM/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPaZf8KVOacO5fxPKlBLnQFCWL73eehsjcO0sD4IWSGB6VnMQvA8bATEY28licO2NSgc6IibEjs4QcwWAL9ict2e2ibic4RX6xUhCLg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPDzhic8PXN3cX2UIjZmM89fcRx3Fjl5lUEEMPXT0HI7mezf6xrBzvRj7QBGLn2ia4OyWicckicQP835ic2I4qkp9JDl6zPIgufFe1U/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNowaxOicyQ7j2TBFMrS0f3oG5vuaoLGziaSLDzuqEvJm8cVwNx6IAexicrphvoQQUFr8RamUlkdplpMCribC155gxMUibvx4MKLFzg/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOd3O5iaDKumicyuL8mX9ZJW44Qzg0KCNPR62gRcySPRfVsGVzh76D9ibAVHT0tHFDTqKLQfHrFpHNMxLRuFav9DmOR3vkR4zBJAM/640?wx_fmt=png&from=appmsg)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言