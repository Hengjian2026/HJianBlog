---
title: "DIP病种数据分析模版"
date: 2026-01-01
draft: false
tags: [DIP, 数据分析, AI]
categories: ["医院运营"]
---
     DIP病种数据分析模版 \* { margin: 0; padding: 0; outline: 0; } body { font-family: "PingFang SC", system-ui, -apple-system, BlinkMacSystemFont, "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif; line-height: 1.6; } .\_\_page\_content\_\_ { max-width: 667px; margin: 0 auto; padding: 20px; text-size-adjust: 100%; color: rgba(0, 0, 0, 0.9); padding-bottom: 64px; } .title { user-select: text; font-size: 22px; line-height: 1.4; margin-bottom: 14px; font-weight: 500; } .\_\_meta\_\_ { color: rgba(0, 0, 0, 0.3); font-size: 15px; line-height: 20px; hyphens: auto; word-break: break-word; margin-bottom: 50px; } .\_\_meta\_\_ .nick\_name { color: #576B95; } .\_\_meta\_\_ .copyright { color: rgba(0, 0, 0, 0.3); background-color: rgba(0, 0, 0, 0.05); padding: 0 4px; margin: 0 10px 10px 0; } blockquote.source { padding: 10px; margin: 30px 0; border-left: 5px solid #ccc; color: #333; font-style: italic; word-wrap: break-word; } blockquote.source a { cursor: pointer; text-decoration: underline; } .item\_show\_type\_0 > section { margin-top: 0; margin-bottom: 24px; } a { color: #576B95; text-decoration: none; cursor: default; } .text\_content { margin-bottom: 50px; user-select: text; font-size: 17px; white-space: pre-wrap; word-wrap: break-word; line-height: 28px; hyphens: auto; } .picture\_content .picture\_item { margin-bottom: 30px; } .picture\_content .picture\_item .picture\_item\_label { text-align: center; } img { max-width: 100%; } .pay\_subscribe\_notice { margin: 30px 0; padding: 20px; background: #fffbe6; border: 1px solid #ffe58f; border-radius: 8px; } .pay\_subscribe\_badge { display: inline-block; padding: 4px 12px; background: #faad14; color: #fff; border-radius: 4px; font-size: 14px; font-weight: 500; margin-bottom: 12px; } .pay\_subscribe\_desc { font-size: 15px; line-height: 1.8; color: rgba(0, 0, 0, 0.7); margin-bottom: 12px; } .pay\_subscribe\_hint { font-size: 13px; color: rgba(0, 0, 0, 0.4); } .\_\_bottom-bar\_\_ { display: flex; justify-content: space-between; align-items: center; position: fixed; bottom: 0; left: 0; right: 0; height: 64px; padding: 8px 20px; background: white; box-sizing: border-box; border-top: 1px solid rgba(0, 0, 0, 0.2); } .\_\_bottom-bar\_\_ .left { display: flex; align-items: center; font-size: 15px; white-space: nowrap; } .\_\_bottom-bar\_\_ .right { display: flex; } .\_\_bottom-bar\_\_ .sns\_opr\_btn { display: flex; align-items: center; user-select: none; background: transparent; border: 0; color: rgba(0, 0, 0, 0.9); font-size: 14px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn:not(:last-child) { margin-right: 16px; } .\_\_bottom-bar\_\_ .sns\_opr\_btn > img { margin-right: 4px; }

DIP病种数据分析模版
===========

原创 Hi您好 恒健知行 2026-05-20 00:00 安徽

> 原文地址: [https://mp.weixin.qq.com/s/vuikrbJpzlyj5lCpIhbRTA](https://mp.weixin.qq.com/s/vuikrbJpzlyj5lCpIhbRTA)

继续AI做PPT，尝试过guizang、ppt-master，今天发现一个mckinsey-pptx开源skill。目前该skill关注度并不多，github上只有450+的star。它是制作麦肯锡分析报告形式的PPT，基本上每一页是一个图形+结论的形式，然后配色清新，排版特征鲜明的skill。对于经常做数据分析，有对数据进行展示汇报需求的情况下，该skill还是蛮适合的。另外，它生成的PPT是可以编辑的，标题、图表的标题、结论都是可以编辑的，所以它生成的不是一个完整版，对却适合编辑修改、二次加工。

关于mckinsey-pptx的使用，可以使用插件安装的模式：

    /plugin marketplace add seulee26/mckinsey-pptx

但如果是需要二次扩展可以下载文件，放在本地skills文件夹下。

使用该skill也很简单，假设你有一个Excel文件，该在文件夹下通过claude code等智能体调用该mckinsey-pptx skill，给出命令：

    处理“XXX.xlsx”，并生成麦肯锡风格 PPT 

下面是我用该skill制作的一个DIP数据分析汇报PPT材料，效果如下：

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZO3SlzVYpFib6ecHDtlyicybhq1om9emiclIdNT8woF3nF9r0eJg6nhoQfL6KQas7f8rAQDz0GRnpkKzxFhwAeyaJeeDIiaQVYejB4/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNxHMAbKr8Uxg7GtoIuibKaV4GP7NZRvKXyE4yTvPiaiayIFVukdjv01RAglwQlL0ZnI4SBMemEcjJFm4IEr5FSh0u7SX8ia47o23o/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOumxFMsm1aicXsfvRkktdh8wscb37icFnj9GZWecA64pibUbALLCRblEcicbuOnAO8E3uxj9cjVepLeKpNChv2z52xW754mIib2TgI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOmdqMD9Z1iaMu94uicz28qKicAGYBicReh6OUSpx8J4iaFF8C8ia7iad39Yz5OWwNs3Q6g8Gxvz8NUhpueeVFDzyIkn3icahRjJSmqABY/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPuvH0ZykoXLUzYWvzWluYYS3sMo8IiaTZYXbXwFrQRL6TU2RkJ9nyvq2KsMMJolrNMT7Jm5SiasGuXiaCCAD9rwunE9IT9e75198/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOK8Q2xuuPG9AEPOKraSJ2RNNStyKZtxfP2O2ict3JyAIFcwLA2pvqPp6dVN7bRxaueAJubQic9UYRLFlaszRZKhqFJt5B8GFDyY/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZP0ReGFkXXRbUOEwaglFx8icAD9ib2ydicibLWicPdrCEWnIzCFR2Wics9lbfhsVoh8LoB5wgTDwLZrrzE85gxHYPvzM9k3I7FfGVZ9M/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZM7ulsh1jzIYkI1RnFgsaGibkvoToflcdcr8RI1EYNpSjvRUN2nWkeZRUAECSXawtBTJlv7vmIzYF7pAGLjTibeSqXEQs1XFWex4/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOm1icqp8mtsiaFe2gMqwYkPDliajmyfP171cdfIdtdNtb3MUE6cLSWthrTKYb7iaicNUpicMy2PDP6G3oV7o4QFPb3Vu0RpYob2r1gI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZM0icibonMdd1XhS0pjKpubribRQ2IlQOibYGhQicdjUrjnvamWktntHz8SxdwzOksuFOr1WbrsdvFcsjCO9vibXCMGIs4RsXTlgaYvc/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNPSibjSl3YTzHZ2Ygc8lialziapIJoLzry8ar9M96vO5ic5lXWiay8w5UFefwSzC8O2biakqAdR8WzcEtQQxv8OggmVI0pBuia4iaUFXA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOu2LD5U2jUViaxWQhC8nw2RX4SQ9E6Efc9FJurB6Jo2wOjW3VxwBibrPNibvn6NnefZRviaShxUMv79F8p6svSCwv1TEScJM9jibnE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOVWJ6DoEnB4vZunukgajibQnzOAaFvjWnHa3rI07vLkkCU9icOhVHLJWA1IgRRzib2zZMZR1pYPZfrrLus9EtH0URyY9CQ2V59b0/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOSp1bwTjLdhlXhicGxibgRia7MTiaJc0Lunvxv5GDZxr7KlTNoSF35ibiaqRvGC57EkIMRGYz1dR4NA9W5yWbCribtNNdBicCSFPxafBs/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNxiaK7MskhaVnYB8VKc03ptDVu2kiaEDhgbuyWUYPbaWlt5EQPRlOJ2gQ6oWb52mbpttcrmaCWyQA6u8ZDptqHhKYN8jicLgn23U/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPPySlJx0gia5tYIYz0oW58NbluVAd3r6icz5zPVSHYHibDY66vsN9AGZiaYs3DmqtaCKDqAdQQEYrdZHIWXXxvd7ZkbNysl6sKP8Y/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZO2dqx8iassHPzsNGNicW65I3PXYKicjuTdslcu2ibbwVFqhND7HtIyB4rCHPLia348HTwKfAlkFbiaEAjyCYEEDaiblT4x0NibncBmSd8/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOeGd492liar9TRPib22Bp4DmO0zzaIyYNKRSr7IsO20M992z3y9s0icstzUUC9DdJts7QPG5hbcnHJlZR2tqthicH8tj4T5pJN7Is/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMzaWIBLboNUyAmPH5azkZib2YicJ8LqO7OXgaNpRj8TtWgQQHXQ40HbxzECmfb2r8Rrboqk1R8eYh3ichGBLdwbdEoneFFXAJYCA/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPBPQYccYafW2VfsY9T78psD3RoTefp11PLQfl1Dk7upVmlIpyOoDBkpS10LPYn997FUgMDSx5rVlbmnDb5ic3jynfQzgLLQdVY/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPyk6BX2icIACNxiaNf8mLlRQ6NGRocuTkwmfJEmAcfC9uplxoWGmia7HgyDxe1BhDjuogeGib0icjW6Mn74dEoAyOqaw6nVxG9ichEo/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOyoulbSTo0Hicp7B5c3Ua2hF6w3ltfZbOBU2xWOOggmYLrpQpKuItRRdgEXOcV0cO5qj98icKd0AzIVRxbcnqR0dsiaXtmvd87Kw/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNQwAoXTQKMD3NCnpDdHIJOcicOdXSlVo3e4XPmF1lZrVS6IDb3z1AkJwZf25C3pjR0k3icc9MCp99bhM1RN5IhJjE4kNCryxRAU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZO8cOoEkIxhnOdTKrGnGxxcnYmfziaFZYiaSV3b81ojlZwteibiaZUTSj5SWGnnXW8SDbfknNmzlc2U46vDVf9RmpiarAlAxoZQSDWk/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZP6hhic3PuCiblgHibGibqCxcfiagpCdG0xVROfR42b1BnS8qibriagSltbPxHP665I0hEEBlYwrPPB2jNCP9bW2jyUMQXkk9So09hRibc/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZMA3m1NmsyAbOUGjf2icbHL7libO1yNlppyVjt0yzumicfd0ib7DQONjlLJrHPp6YLctHicVoPI2xIbeB90L4LPca4t6ahicicLHkzTibM/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMmXU90zxSjDprDdnIsaaVhX2kBzyiaDp8ESHmYjet7JGL9M0PrPYx68Or1GaPVBq0Vkxufx1y1jEtrEbFMA5FPr2QsZuibCP2jc/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMsWc8dibNiatDSTSTicNDoWBZKNKsh3k5Tw8fvUTBYmhVfI3DrAunhuxKkgaCGDniaUgr8cicoDUVH5ok9vmKq3iba0gsdVdPY9cX2Y/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOvsMweaRfkoOolBWt0oKLk1NhYWFsDdmeR44GRIia7bHgkiccyz1Od75V2onV6xcVe9VHiaWf1ZiciaSc1iaPpW41p1KSydHkZILVE8/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZOhicMNZ9BkSGXZp8r3AEhoy6Bt6ZzCu0LpSJ3fWicCrNqmj8LbS7JFf9M4xk834Bibq3yJ59XKo1CpzicD7SRe8MZXHn6ibsOR8J6M/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOuAesydW94ibNr5rmFUTWBvzEcIchsInOF4f6bIspZicjZnbXcEgdgsZy2LARBhbqK6CH1OHdwyto5JJhZTUtjNOpBF5fQeHRjQ/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNHhwHKKibdxP1jGkhAlSNcDFFwodmYdlDNXaAibnEnpMpFyKN2xxvR5BE9mNpF3mC19u8Sval28KONwcx2wMjm8ZvyFjSW6hFO0/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPL6uG7TIf2w5svqO4W4QWnlbT17TPrdic1BGQ89xEHs36eINNQ368QUeSCbV2uVLxM4uWuznU0t6nWME74T5vYTRYM1ictFH2t0/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZNTuugkrGNYyUy2DLlRNlOx1zBl7nIA4ZGhlg4rmebIAbFdIaVHicibiadprekB5vOGDHyxYmtxib0zhKv7Zf6sHI0YOBaWYtKJmcU/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOr9M8w2JZ7Myd91JvXSAewSbdfCvfAyqNUIA7YUEU4JTzgGgXEDhGqYoicKWV5BSu2hBSkle9RVeTwIsLnwlBeuQN1ueF1MCvs/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZMy2UTM49tbw09HS0SydnHt4KJqkQJ4bAy2zcDhygxTibB6BJicgVY3P2jSuNtNIMJod2efkcPKvvsApA8q83tveAvHHljaCvXsQ/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZPpkVB7gqA99WWbzVQ0EKL3p4KHf5BcK1WbVzfticZ4kOpMBMWMtZcricO5OdK6KK6Yic7BcleEVhXJc2M633YhibLsLMLqmxBYpLE/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZOkNyWRMtM51EvWVHqqSUGFUWGvKngC75ISMLKmKqRCHEgEDgLsY0z36kkBicJJI8C8icSajtknArMHZhx9FeEJn4UUDxMStEO2s/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/sz_mmbiz_png/EYICCUeReZPImMRTGqMapcrYibHUTyJ7uWQyNpRn86pYFicUl3zLQs3FicXVnHwagma4y4r5haG430qBxxZLT5PxwBrU4bpS7VzokFC1Fo3fWI/640?wx_fmt=png&from=appmsg)

![](https://mmbiz.qpic.cn/mmbiz_png/EYICCUeReZNGcrw8QnzKGymd4hQVV79XsCib19qCmhVFxwkqOR7WWwe3X9gxetcMf0uR9C3al7895kmDMeojQ9B9b3GrgvQ4ePEaNuHjDKgw/640?wx_fmt=png&from=appmsg)

![](http://mmbiz.qpic.cn/mmbiz_png/IvumIlxgDibTtiaOBDDtRvOLtpWa5mU52vKrxlLYZ9RpBZUaJjBJw4FlptcN3MoNvVicvP3biaqAABRIGA1x2rvJUg/0?wx_fmt=png) 恒健知行

 ![](data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E%3C!-- Icon from Lucide by Lucide Contributors - https://github.com/lucide-icons/lucide/blob/main/LICENSE --%3E%3Cg fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2'%3E%3Cpath d='M2.062 12.348a1 1 0 0 1 0-.696a10.75 10.75 0 0 1 19.876 0a1 1 0 0 1 0 .696a10.75 10.75 0 0 1-19.876 0'/%3E%3Ccircle cx='12' cy='12' r='3'/%3E%3C/g%3E%3C/svg%3E) 阅读![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M16.154 6.797l-.177 2.758h4.009c1.346 0 2.359 1.385 2.155 2.763l-.026.148-1.429 6.743c-.212.993-1.02 1.713-1.977 1.783l-.152.006-13.707-.006c-.553 0-1-.448-1-1v-8.58a1 1 0 0 1 1-1h2.44l1.263-.03.417-.018.168-.015.028-.005c1.355-.315 2.39-2.406 2.58-4.276l.01-.16.022-.572.022-.276c.074-.707.3-1.54 1.08-1.883 2.054-.9 3.387 1.835 3.274 3.62zm-2.791-2.52c-.16.07-.282.294-.345.713l-.022.167-.019.224-.023.604-.014.204c-.253 2.486-1.615 4.885-3.502 5.324l-.097.018-.204.023-.181.012-.256.01v8.218l9.813.004.11-.003c.381-.028.72-.304.855-.709l.034-.125 1.422-6.708.02-.11c.099-.668-.354-1.308-.87-1.381l-.098-.007h-5.289l.26-4.033c.09-1.449-.864-2.766-1.594-2.446zM7.5 11.606l-.21.005-2.241-.001v8.181l2.45.001v-8.186z' fill='%23000'/%3E%3C/svg%3E) 赞 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cpath d='M0 0h24v24H0z'/%3E    %3Cpath fill='%23576B95' d='M13.707 3.288l7.171 7.103a1 1 0 0 1 .09 1.32l-.09.1-7.17 7.104a1 1 0 0 1-1.705-.71v-3.283c-2.338.188-5.752 1.57-7.527 5.9-.295.72-1.02.713-1.177-.22-1.246-7.38 2.952-12.387 8.704-13.294v-3.31a1 1 0 0 1 1.704-.71zm-.504 5.046l-1.013.16c-4.825.76-7.976 4.52-7.907 9.759l.007.287c1.594-2.613 4.268-4.45 7.332-4.787l1.581-.132v4.103l6.688-6.623-6.688-6.623v3.856z'/%3E  %3C/g%3E%3C/svg%3E) 分享 ![](data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='24' height='24' viewBox='0 0 24 24'%3E  %3Cdefs%3E    %3Cpath id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-a' d='M0 0h24v24H0z'/%3E  %3C/defs%3E  %3Cg fill='none' fill-rule='evenodd'%3E    %3Cmask id='a62bde5b-af55-42c8-87f2-e10e8a48baa0-b' fill='%23fff'%3E      %3Cuse xlink:href='%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-a'/%3E    %3C/mask%3E    %3Cg mask='url(%23a62bde5b-af55-42c8-87f2-e10e8a48baa0-b)'%3E      %3Cg transform='translate(0 -2.349)'%3E        %3Cpath d='M0 2.349h24v24H0z'/%3E        %3Cpath fill='%23576B95' d='M16.45 7.68c-.954 0-1.94.362-2.77 1.113l-1.676 1.676-1.853-1.838a3.787 3.787 0 0 0-2.63-.971 3.785 3.785 0 0 0-2.596 1.112 3.786 3.786 0 0 0-1.113 2.687c0 .97.368 1.938 1.105 2.679l7.082 6.527 7.226-6.678a3.787 3.787 0 0 0 .962-2.618 3.785 3.785 0 0 0-1.112-2.597A3.687 3.687 0 0 0 16.45 7.68zm3.473.243a4.985 4.985 0 0 1 1.464 3.418 4.98 4.98 0 0 1-1.29 3.47l-.017.02-7.47 6.903a.9.9 0 0 1-1.22 0l-7.305-6.73-.008-.01a4.986 4.986 0 0 1-1.465-3.535c0-1.279.488-2.56 1.465-3.536A4.985 4.985 0 0 1 7.494 6.46c1.24-.029 2.49.4 3.472 1.29l.01.01L12 8.774l.851-.85.01-.01c1.046-.951 2.322-1.434 3.59-1.434 1.273 0 2.52.49 3.472 1.442z'/%3E      %3C/g%3E    %3C/g%3E  %3C/g%3E%3C/svg%3E) 推荐 ![](data:image/svg+xml,%3Csvg width='25' height='24' viewBox='0 0 25 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M22.242 7a2.5 2.5 0 0 0-2.5-2.5h-14a2.5 2.5 0 0 0-2.5 2.5v8.5a2.5 2.5 0 0 0 2.5 2.5h2.5v1.59a1 1 0 0 0 1.707.7l1-1a.569.569 0 0 0 .034-.03l1.273-1.273a.6.6 0 0 0-.8-.892v-.006L9.441 19.1l.001-2.3h-3.7l-.133-.007A1.3 1.3 0 0 1 4.442 15.5V7l.007-.133A1.3 1.3 0 0 1 5.742 5.7h14l.133.007A1.3 1.3 0 0 1 21.042 7v4.887a.6.6 0 1 0 1.2 0V7z' fill='%23000' fill-opacity='.9'/%3E%3Crect x='14.625' y='16.686' width='7' height='1.2' rx='.6' fill='%23000' fill-opacity='.9'/%3E%3Crect x='18.725' y='13.786' width='7' height='1.2' rx='.6' transform='rotate(90 18.725 13.786)' fill='%23000' fill-opacity='.9'/%3E%3C/svg%3E) 留言