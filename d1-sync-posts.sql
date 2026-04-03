-- Posts sync script
-- Generated on 2026-04-03T15:31:12.775Z
-- Total posts: 1182

-- To insert posts, use the following approach in your Worker or script:
-- First get the blog_id, then insert the post

-- Post 1: 太隐 - 人治的尽头
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '人治的尽头',
  'https://wangyurui.com/posts/ren-zhi-de-jin-tou-d04f7e1d',
  '一个人亡政息的故事。',
  '2026-04-02T14:00:47.000Z'
);
-- Post 2: 张洪 Heo - OpenClaw喧嚣过后，我最终选择了QClaw
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  'OpenClaw喧嚣过后，我最终选择了QClaw',
  'https://blog.zhheo.com/p/bublpdof.html',
  '这篇文章介绍了作者从早期探索到最终选择腾讯QClaw作为主力AI助手的心路历程。作者曾是Coze用户，因长任务和实体设备操作的局限性转而尝试各种OpenClaw方案，最终锁定QClaw。其核心推荐理由为：免费且Token充足、支持微信接入、安装便捷。最终促使作者下定决心的关键在于"UU远程"——可远程操控Mac且支持盒盖不休眠，让龙虾在后台稳定运行。文章后半部分总结了龙虾的核心应用场景：每日签到等琐碎任务自动化、超长信息收集任务（如整理某领域抖音博主表格）、跨平台搜索skill迁移等，并推荐"UU远程+QClaw"组合作为完整解决方案。',
  '2026-04-02T07:13:58.000Z'
);
-- Post 3: NoneData - 几何布朗运动下股票价格涨超/跌超50%概率计算步骤
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '几何布朗运动下股票价格涨超/跌超50%概率计算步骤',
  'https://www.nonedata.com/posts/GBM-stock.html',
  '1. 几何布朗运动（GBM）模型定义假设股票价格 {St}t≥0\\{S_t\\}_{t \\geq 0}{St​}t≥0​ 服从几何布...',
  '2026-03-31T00:00:00.000Z'
);
-- Post 4: 太隐 - 隐说 NO.17  曹雪芹之后
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.17  曹雪芹之后',
  'https://wangyurui.com/posts/yin-shuo-no-17-wei-shi-yao-xu-xie-ming-zhu-zhe-y-9cde2cd0',
  '',
  '2026-03-29T12:35:38.000Z'
);
-- Post 5: 张洪 Heo - 洪绘存图发布：保存浏览器图片为指定格式、提取网页所有图片、屏幕截图插件
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '洪绘存图发布：保存浏览器图片为指定格式、提取网页所有图片、屏幕截图插件',
  'https://blog.zhheo.com/p/drqm39ob.html',
  '这篇文章介绍了作者因常用图片保存插件被检测为恶意软件而卸载后，自行开发了一款名为《洪绘存图》的浏览器插件。该插件集成了存图、抓图、截图三大功能，成为三合一工具。作者展示了多张插件界面截图，展示了从初步开发到最终完善的过程。这个自研插件不仅解决了作者的存图需求，还通过不断迭代优化，将多个功能整合在一起，提供了一个安全可靠的图片保存解决方案。',
  '2026-03-29T06:41:52.000Z'
);
-- Post 6: LoveApple的主页 - hexo脚本：部署后自动刷新Cloudflare缓存
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'hexo脚本：部署后自动刷新Cloudflare缓存',
  'https://loveapple.icu/cloudflare-purge-cache/',
  '这篇博客介绍了如何通过编写Hexo脚本，在部署后自动调用Cloudflare API清除CDN缓存，从而解决因缓存导致新文章无法实时显示的问题，实现了自动化部署与缓存刷新的一体化流程。',
  '2026-03-27T09:06:24.000Z'
);
-- Post 7: LoveApple的主页 - 正点原子串口例程中开发板无法收信问题
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '正点原子串口例程中开发板无法收信问题',
  'https://loveapple.icu/STM32-USART-Alientek/',
  '本文记录了使用正点原子STM32F103开发板例程时，开发板无法接收串口消息的问题。通过分析代码发现，例程判断接收完成需要检测到回车符（0x0D），而串口调试助手默认不发送该字符。解决方案是在发送信息末尾添加换行符，即可正常通信。',
  '2026-03-27T08:35:38.000Z'
);
-- Post 8: LoveApple的主页 - 鱼论：穿越知识的坠落与诅咒，寻找锚点与未来
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '鱼论：穿越知识的坠落与诅咒，寻找锚点与未来',
  'https://loveapple.icu/view-2/',
  '观点：现在中国学生群体中的功利主义与优绩主义是通过对未来的虚假承诺引导学生无效/低效内卷的集体无意识陷阱，不利于长期主义学习能力的培养与人之为人的发展，',
  '2026-03-26T07:28:47.000Z'
);
-- Post 9: 太隐 - 心理学治不了时代的病
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '心理学治不了时代的病',
  'https://wangyurui.com/posts/xin-li-xue-zhi-bu-liao-shi-dai-de-bing-3c3e340a',
  '',
  '2026-03-25T14:16:02.000Z'
);
-- Post 10: 张洪 Heo - 洪绘星空发布：一个值得逛的博客友链朋友圈
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '洪绘星空发布：一个值得逛的博客友链朋友圈',
  'https://blog.zhheo.com/p/iu5f3hvj.html',
  '这篇文章介绍了博客在社交媒体和AI冲击下面临的衰落现状，以及作者对博客文化的坚守。文章指出，虽然写博客的人越来越少，但作者仍以记录生活和思考为目的坚持博客写作。为了解决博客互动不足的问题，作者重新开发了"洪绘星空"独立站，通过iframe方式展示友链文章，提供点赞、关注、推荐等功能，旨在为坚守博客的人创造更多交流机会。',
  '2026-03-20T02:12:20.000Z'
);
-- Post 11: 太隐 - 隐说 NO.16  “默认为假”的时代
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.16  “默认为假”的时代',
  'https://wangyurui.com/posts/yin-shuo-no-16-mo-ren-wei-jia-de-shi-dai-faaa0863',
  '',
  '2026-03-18T14:12:16.000Z'
);
-- Post 12: 张洪 Heo - 腾讯QClaw上手：打通微信很方便，但是性能上略有不足
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '腾讯QClaw上手：打通微信很方便，但是性能上略有不足',
  'https://blog.zhheo.com/p/bn8aror2.html',
  '这篇文章介绍了作者体验腾讯QClaw龙虾工具的详细测试过程和对比分析。文章从微信绑定的深度优势、安装配置、实际操作v2ex签到等多个维度展开测试，验证了QClaw确实具备操作电脑的能力。作者指出腾讯相比阿里JVSClaw在IM软件绑定上的天然优势，但同时也暴露了内存占用过高、移动端与桌面端无法同时对话、执行过程不透明等技术短板。最终作者认为QClaw的微信直连体验尚可，但反应速度较慢，交互体验仍需优化。',
  '2026-03-17T07:44:54.000Z'
);
-- Post 13: Dejavu's Blog - BuyVM VPS 块存储挂载教程
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'BuyVM VPS 块存储挂载教程',
  'https://blog.dejavu.moe/posts/buyvm-mount-block-storage-slab/',
  '在 Alpine Linux 下挂载 BuyVM 块存储教程。',
  '2026-03-17T07:30:53.000Z'
);
-- Post 14: Dejavu's Blog - Alpine Linux 服务器配置指南
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Alpine Linux 服务器配置指南',
  'https://blog.dejavu.moe/posts/alpine-linux-server-configuration-guide/',
  '本文记录使用 Alpine Linux 作为服务器操作系统后的一些基础配置和安全加固，旨在打造一个安全、稳定、纯净的服务运行环境。',
  '2026-03-17T03:40:55.000Z'
);
-- Post 15: 张洪 Heo - 阿里 JVS Claw 上手：都这么多天了，养虾的门槛被打下来了吗？
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '阿里 JVS Claw 上手：都这么多天了，养虾的门槛被打下来了吗？',
  'https://blog.zhheo.com/p/ey4573gn.html',
  '这篇文章介绍了阿里推出的JVS Claw内测产品，它同时支持云端和本地部署OpenClaw小龙虾。云端部署提供免费虚拟机（2核8G配置），具备完整的Linux操作界面和公网IP，可直接通过对话界面执行命令，无需配置API，支持文件拖拽传输和技能安装。本地部署极其便捷，5秒内完成配置，开箱即用且内存占用低。产品支持多设备客户端，移动端可控制云端龙虾。整体体验优秀，部署速度快、界面友好，但本地龙虾暂不支持远程控制。',
  '2026-03-16T07:36:30.000Z'
);
-- Post 16: 张洪 Heo - 洪绘图标助手更新：获取应用图标、将你的图标对mac进行适配
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '洪绘图标助手更新：获取应用图标、将你的图标对mac进行适配',
  'https://blog.zhheo.com/p/z9rm5p4p.html',
  '这篇文章介绍了"洪绘图标助手"这款全新应用图标工具,它基于之前的"应用图标库"重构升级,主要解决网页版应用在macOS上作为独立应用使用时的图标显示问题。该工具目前提供两个核心功能:应用图标搜索功能,用户输入应用名称即可获取并下载图标,适用于调研、制作PPT等场景;图标适配mac功能,专门解决使用Chrome或Edge创建网页应用时图标显示异常的问题,用户只需将图标图片导入,选择模式后通过"访访显示""显示简介""拖入图标"的方式,轻松为应用更换美观的macOS样式图标,有效提升了网页应用的视觉体验和使用舒适度。',
  '2026-03-16T02:17:56.000Z'
);
-- Post 17: Dejavu's Blog - Alpine Linux 安装 Cloudflared
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Alpine Linux 安装 Cloudflared',
  'https://blog.dejavu.moe/posts/install-cloudflared-on-alpine-linux/',
  '本文记录在 Alpine Linux 上安装与配置 Cloudflare Tunnel (cloudflared) 的基本步骤。',
  '2026-03-15T15:55:06.000Z'
);
-- Post 18: Anomie ZJU - 人生进度条更新：写在26年初春
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Anomie ZJU'),
  '人生进度条更新：写在26年初春',
  'https://dong2000.xyz/post/skipping-ahead/',
  '博客帖子已经荒废四个月有余。这似乎是每一个曾经立志于更新个人博客网站者的必经之路，原因大多是生活工作变动，亦或单纯的兴趣衰减。对我而言二者皆有。
过去的是一个多事的冬季，我离开从小生活的杭州，在瑞士重新建立起自己的生活。这里的环境还是挺不错的——有中世纪的古堡、文艺复兴的油画、缓坡上的草甸和葡萄庄园、日内瓦湖上的天鹅，还有一些新朋友和有趣的活动。不过挑战也不少，比如昂贵的物价、瑞士法语区的语言障碍、独在异乡的孤独感等等。经过一段时间的努力适应，我想自己应该可以开始欣赏这里的生活了。等素材积攒足够，可以写一写风景和趣事。
不过，通过博客表达自己的欲望也是实实在在地衰减了。我逐渐意识到，相比于对着电脑屏幕独自碎碎念，我似乎更需要的是人与人之间真实的倾听和理解。于是我开始和导师、同事交流，和朋友们聊天，报名参加一些俱乐部活动。这并不容易——当我没有足够的社交能量和精力的时候，只能丧丧地躲在自己的房间里；有时会遇到奇奇怪怪的陌生人；一些聚会的散场告别也会留下不小的后劲。但我觉得自己的灵魂因此逐渐丰沛（甚至从INTP变成了INFJ）。
25年的圣诞旅行也因此错过了更新在博客上的时机。我们从风城芝',
  '2026-03-15T15:07:10.000Z'
);
-- Post 19: 太隐 - 盛世的木偶
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '盛世的木偶',
  'https://wangyurui.com/posts/sheng-shi-de-mu-ou-417a1f8c',
  '',
  '2026-03-15T14:00:02.000Z'
);
-- Post 20: VicBlog - fork subgen实现纯本地AI视频字幕生成和翻译
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'VicBlog'),
  'fork subgen实现纯本地AI视频字幕生成和翻译',
  'https://ddadaal.me/articles/subgen-translate/cn',
  '<p>最近我想看一场时长 5 个多小时的日语演唱会录像，但这份录像没有可用字幕，我又不懂日语，没有字幕MC部分根本听不懂。</p>
<p>于是我想到可以用本地语音转录生成字幕。调研后我发现了 <a href="https://github.com/McCloudS/subgen">McCloudS/subgen</a> 这个项目，发现它已经把“本地自动转录”这件事做得很完整，并且可以用jellyfin集成实现视频加入和播放时自动生成字幕。</p>
<p>在实际体验中，我进一步希望它能覆盖“转录后翻译”的需求，于是决定在原项目基础上做一层轻量扩展，把翻译功能补齐到同一条工作流中。</p>
<p>因此，我在原仓库上创建了一个fork <a href="https://github.com/ddadaal/subgen-translate">https://github.com/ddadaal/subgen-translate</a> ，实现了：</p>
<ul>
<li>在不破坏原有 webhook / Bazarr 使用习惯的前提下，增加“转录后翻译”能力
<ul>
<li>使用 <a ',
  '2026-03-14T03:53:00.000Z'
);
-- Post 21: Dejavu's Blog - Docker 多容器共享中心数据库
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Docker 多容器共享中心数据库',
  'https://blog.dejavu.moe/posts/multiple-docker-containers-sharing-postgresql/',
  '通过共享 Postgres 容器和固定 Docker 子网络，使多个 Docker Compose 项目安全复用中心数据库，并附完整 YAML 示例和注意事项。',
  '2026-03-13T06:23:55.000Z'
);
-- Post 22: Kant - 《中美关系的“新正常化”：在毁灭边缘退后一步的最后机会》 王辑思
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '《中美关系的“新正常化”：在毁灭边缘退后一步的最后机会》 王辑思',
  'https://deathfugue.com/archives/94.html',
  '本文原载于： 《Foreign Affairs》（外交事务）2026年3/4月合刊原题： China and the United States on the Brink: A Last Cha...',
  '2026-03-12T13:38:07.000Z'
);
-- Post 23: Kant - 从萧红与女性主义 谈 丁玲的 《三八节有感》 
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '从萧红与女性主义 谈 丁玲的 《三八节有感》 ',
  'https://deathfugue.com/archives/93.html',
  '又是一年三八妇女节，和大家分享一下上世纪女作家丁玲写的一篇文章《三八节有感》，这篇文章虽然是一个近百年之前的文章，但是在今天看来也有非常多先进的思想与建议。 我个人注意到一个细节，这篇文章的写作...',
  '2026-03-12T07:38:40.000Z'
);
-- Post 24: 太隐 - 隐说 NO.15  官僚集团的运转逻辑
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.15  官僚集团的运转逻辑',
  'https://wangyurui.com/posts/yin-shuo-no-15-guan-liao-ji-tuan-de-yun-zhuan-lu-dff28a7c',
  '',
  '2026-03-11T14:14:19.000Z'
);
-- Post 25: 张洪 Heo - 超级制图上手：图片上的文字如何用AI修改？无痕改字一键出图
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '超级制图上手：图片上的文字如何用AI修改？无痕改字一键出图',
  'https://blog.zhheo.com/p/yynnxi2c.html',
  '这篇文章介绍了一款名为“超级制图”的AI图片编辑应用，特别适合设计师处理文字修改需求。该应用的核心功能“无痕改字”能够智能替换图片中的文字内容，以修改微信余额数字为例，用户只需框选文本区域并输入新内容，AI就能自动调整文字的位置、大小和粗细，实现较为自然的修改效果。虽然部分情况下效果仍需反复尝试，但作为免费功能已能满足日常改字需求，为处理图片文字修改提供了便捷的AI解决方案。',
  '2026-03-11T02:46:25.000Z'
);
-- Post 26: 张洪 Heo - 用虚拟机养龙虾，在Mac上通过Lume使用虚拟机的隔离环境安装OpenClaw
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '用虚拟机养龙虾，在Mac上通过Lume使用虚拟机的隔离环境安装OpenClaw',
  'https://blog.zhheo.com/p/h6k74j9o.html',
  '作者在主力机直接部署OpenClaw时因指令失误险些改全文件权限，遂弃用本地电脑，转而采用虚拟机在Mac上搭建安全环境，并详细给出安装Lume、部署OpenClaw及后台运行、接入QQ的完整步骤，提醒要在独立环境中“养”好AI。',
  '2026-03-10T03:30:41.000Z'
);
-- Post 27: 烫烫烫的记事本 - 当擦鞋童开始养龙虾——技术泡沫的百年收割术
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '当擦鞋童开始养龙虾——技术泡沫的百年收割术',
  'https://烫烫烫的锟斤拷.top/posts/when-a-shoeshine-boy-starts-to-cultivate-lobsters',
  '<h2>当擦鞋童开始谈论 OpenClaw：技术泡沫的百年收割术</h2>
<h3><strong>引子：深圳腾讯楼下的橙色马甲 —— 当历史开始押韵</strong></h3>
<p>2026 年 3 月的一个普通工作日，深圳南山区腾讯总部楼下，</p>
<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/when-a-shoeshine-boy-starts-to-cultivate-lobsters" target="_blank">https://烫烫烫的锟斤拷.top/posts/when-a-shoeshine-boy-starts-to-cultivate-lobsters</a> 阅读全文。</p>',
  '2026-03-09T10:42:14.000Z'
);
-- Post 28: Dejavu's Blog - 安装 Komari 服务器监控工具
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '安装 Komari 服务器监控工具',
  'https://blog.dejavu.moe/posts/install-komari-monitor/',
  '在 Debian 和 Alpine 系统下使用二进制安装与配置 Komari 的过程记录。',
  '2026-03-07T12:53:39.000Z'
);
-- Post 29: 太隐 - 阿Q的死局
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '阿Q的死局',
  'https://wangyurui.com/posts/a-qde-si-ju-cba740f9',
  '',
  '2026-03-07T11:28:28.000Z'
);
-- Post 30: VicBlog - 把nanobot关进Docker后，如何同时保留浏览器可视化与自动化
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'VicBlog'),
  '把nanobot关进Docker后，如何同时保留浏览器可视化与自动化',
  'https://ddadaal.me/articles/vnc-browser-from-nanobot-in-docker/cn',
  '<p>实在不太放心把 nanobot 这类可以直接操作本地电脑的程序直接装在操作系统上，所以我选择把 nanobot 放在容器里运行。但是nanobot很多有意义的工作又需要和宿主机上的环境（例如浏览器）交互，而浏览器上很多网站需要我们先去登录才可以正常使用，这就需要一个既可以由 nanobot操作、也可以由我们自己的操作的浏览器</p>
<p>经过一番查找，终于找一个不影响 nanobot 本身的方法，操作是在部署 nanobot的 <code>docker-compose.yaml</code> 目录下再创建一个 <code>docker-compose.override.yaml</code>，内容如下：</p>
<figure data-rehype-pretty-code-figure=""><pre style="background-color:#282c34;color:#abb2bf" tabindex="0" data-language="yaml" data-theme="one-dark-pro"><code data-language="yaml" data-',
  '2026-03-06T10:50:00.000Z'
);
-- Post 31: Kant - 从伊朗战争 谈 马丁·布伯的 《我与你》
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '从伊朗战争 谈 马丁·布伯的 《我与你》',
  'https://deathfugue.com/archives/91.html',
  'https://www.bilibili.com/video/BV1FNP1zHEcA/?spm_id_from=333.1387.homepage.video_card.click&vd_so...',
  '2026-03-06T03:47:00.000Z'
);
-- Post 32: Dejavu's Blog - Scaleway VPS 安装 Debian 系统
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Scaleway VPS 安装 Debian 系统',
  'https://blog.dejavu.moe/posts/scaleway-ipv6-only-vps-install-debian/',
  '稳定运行、低至 €0.14/月的 Scaleway STARDUST1-S 型 VPS，手动进入救援模式安装最小 Debian 教程。',
  '2026-03-06T01:33:17.000Z'
);
-- Post 33: LoveApple的主页 - linuxqq在KDE Plasma下无法输入的问题。
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'linuxqq在KDE Plasma下无法输入的问题。',
  'https://loveapple.icu/linuxqq-fcitx5/',
  '这篇博客记录了在Arch Linux的KDE Plasma（Wayland）环境下，LinuxQQ无法输入中文（甚至无法粘贴）的问题及解决方案。作者提供了两种方法：直接修改启动脚本添加环境变量与参数，或利用qq-flags.conf配置文件持久化启动参数，后者可避免QQ更新后被覆盖。',
  '2026-03-03T23:57:38.000Z'
);
-- Post 34: 张洪 Heo - 如何创作AI歌曲？从生成歌词、歌曲创作、专辑封面到音乐发行
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '如何创作AI歌曲？从生成歌词、歌曲创作、专辑封面到音乐发行',
  'https://blog.zhheo.com/p/cpw1bogx.html',
  '这篇文章介绍了作者分享的AI音乐创作全流程，将AI音乐创作比作抽卡，分为歌词抽卡和作曲抽卡。作者使用扣子工具通过技能调用生成歌词，以华夏文明风格rap为例展示创作成果，还提供了调好的技能链接。作曲用suno工具，免费用户可同时创作4首，可选择声音性别，下载音乐后可通过抖音创作实验室AI作曲功能进行洗歌优化。最后通过抖音创作实验室AI编辑器混音，完成原创歌曲发布，审核需数小时。作者认为AI创作重在过程乐趣，不必过度追求商业收益。',
  '2026-03-03T02:22:12.000Z'
);
-- Post 35: 精灵王 - Markdown 语法全面测试指南
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '精灵王'),
  'Markdown 语法全面测试指南',
  'https://jingling.im/blog/markdown-syntax-guide',
  '这份综合指南涵盖了全新 MDX 静态博客系统支持的所有 Markdown 特性，并提供基础排版测试。',
  '2026-03-03T00:00:00.000Z'
);
-- Post 36: Domon - 2026年2月阅读书摘
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2026年2月阅读书摘',
  'https://www.domon.cn/2026-2yue-yue-du-shu-zhai/',
  '当旧的生活变得陈腐时，热情洋溢的生活能使人焕然一新。充满激情地生活，是热爱生活的唯一途径。 ',
  '2026-03-02T12:23:43.000Z'
);
-- Post 37: 龙场茶室 - 国内订阅 Google AI Pro，用上 Antigravity 真挺难
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '龙场茶室'),
  '国内订阅 Google AI Pro，用上 Antigravity 真挺难',
  'https://blog.peterchen97.cn/posts/38-%E5%A4%A7%E9%99%86%E8%AE%A2%E9%98%85-google-ai-pro/',
  '踩坑记录：账号地区、Antigravity、以及“网页端无法续费”的最终解法（Android + Play 美区）。',
  '2026-03-02T00:00:00.000Z'
);
-- Post 38: 太隐 - 隐说 NO.14 真理必须是前进的
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.14 真理必须是前进的',
  'https://wangyurui.com/posts/yin-shuo-no-14-cong-zheng-zhi-xue-jiao-du-du-li-8630e17e',
  '',
  '2026-02-28T11:26:55.000Z'
);
-- Post 39: Dejavu's Blog - Debian 13 下部署 AsmBB 论坛
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Debian 13 下部署 AsmBB 论坛',
  'https://blog.dejavu.moe/posts/deploy-asmbb-on-debian-13-with-nginx/',
  '本文介绍在 Debian 13 下部署基于汇编语言的自托管论坛 AsmBB 并通过 Nginx 访问。',
  '2026-02-26T10:00:43.000Z'
);
-- Post 40: ChrAlpha 的幻想乡 - AI Agent 病毒：从 OpenClaw 病毒式成功到成为病毒
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'ChrAlpha 的幻想乡'),
  'AI Agent 病毒：从 OpenClaw 病毒式成功到成为病毒',
  'https://blog.ichr.me/post/ai-agent-virus/',
  '2026 开年，OpenClaw（曾被称为 Clawdbot 及 Moltbot）作为一款在本地运行的开源 AI 代理框架，展现出了病毒般的影响力，而其获得更大能力的可能性的同时意味着更大的安全风险，或者难听点说成为潜在的计算机病毒。',
  '2026-02-25T14:53:40.000Z'
);
-- Post 41: 张洪 Heo - 洪绘历史记录发布！无限存储你的浏览器历史记录，防止历史记录被自动删除
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '洪绘历史记录发布！无限存储你的浏览器历史记录，防止历史记录被自动删除',
  'https://blog.zhheo.com/p/0tr5lmby.html',
  '这篇文章介绍了作者开发的浏览器插件“洪绘历史记录”。该插件旨在替代UI不佳、操作反人类且不支持中文的History Trends Unlimited插件，解决浏览器仅能保存三个月历史记录的痛点，方便用户查找更早的网页记录。插件加入了“简约”模式，可将相同网站的历史记录折叠显示，提升查找效率。同时，它支持导入History Trends Unlimited导出的历史记录，用户可在Google Chrome和Edge应用商店下载安装。',
  '2026-02-25T03:13:58.000Z'
);
-- Post 42: LoveApple的主页 - 家族琐记
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '家族琐记',
  'https://loveapple.icu/family-blood/',
  '这篇博客是作者关于自己福建莆田家族的一次私人梳理与记录。作为生在南京、很少回乡的“外人”，作者在过年期间厘清了从太爷爷到孙辈共四代人的庞大家族脉络，记录了本家与旁系亲属的职业、性格与轶事，也触及了长房之争等微妙关系。这不仅是一份家庭关系的整理，更是一场对自己根系的探寻与书写。',
  '2026-02-21T13:19:01.000Z'
);
-- Post 43: fengkx - 2025
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'fengkx'),
  '2025',
  'https://www.fengkx.top/post/year-2025/',
  '<p>往年都不写年度总结，今年可能是年过半半百了，也可能是过年太闲，就写一写。回顾一下2025，记录一下现在的一些想法。</p>
<h2 id="工作">工作</h2>
<p>写代码层面上逃不开的就是LLM了。回想上一年的春节，GPT刚出thinking模式不久，deepseek',
  '2026-02-19T11:21:14.000Z'
);
-- Post 44: Sukka - 杀死那只鹦鹉 —— 「白话文」讲解一种探测 XTLS VLESS REALITY 的手段
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '杀死那只鹦鹉 —— 「白话文」讲解一种探测 XTLS VLESS REALITY 的手段',
  'https://blog.skk.moe/post/to-kill-a-parrot-detecting-xtls-vless-reality-server/',
  '让我们抛弃传统的「猫鼠游戏」对抗思维，不去费力寻找 VLESS 和 REALITY 协议在密码学上可能存在的深奥缺陷，而去关注一个更具决定性且无法逾越的变量：@RPRX 在代码工程实现层面所表现出的、近乎结构性的认知局限。通过针对性地审计 XTLS 的实现代码，我们可以在不触碰任何高深算法的前提下，实现对 XTLS VLESS REALITY 代理服务的手术刀式探测与精准识别。 ',
  '2026-02-16T04:00:00.000Z'
);
-- Post 45: NoneData - 两款软件助你方便调节 Windows 外接显示器亮度
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '两款软件助你方便调节 Windows 外接显示器亮度',
  'https://www.nonedata.com/posts/lightness-adjustment-for-windows.html',
  '调节显示器亮度一般通过显示器面板自带的按钮，很多时候随着时间变化之类需要调节亮度，手动调节实在繁琐。特别是拥有多个显示器的情况下，...',
  '2026-02-12T00:00:00.000Z'
);
-- Post 46: NoneData - iBasso DC07Pro 对比 EPZ TP55
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  'iBasso DC07Pro 对比 EPZ TP55',
  'https://www.nonedata.com/posts/music-connector.html',
  '之前我买过FiiO的Q5s，采用两篇AKM的4493解码，之前电池鼓包后虽然进行了更换，但其功能性、参数都已经有所落后，而且也不太...',
  '2026-02-10T09:08:39.000Z'
);
-- Post 47: LoveApple的主页 - 为云服务器配置clash-for-linux
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '为云服务器配置clash-for-linux',
  'https://loveapple.icu/clash-for-linux/',
  '本文针对云服务器无法直接访问外网的困境，提供了一种配置clash-for-linux的解决方案。通过从本地WSL下载源码并传输至服务器，解决了“先有鸡还是先有蛋”的问题。详细介绍了安装步骤、终端代理命令及通过SSH隧道访问控制面板的方法，为类似场景下的技术实践提供参考。',
  '2026-02-09T04:43:44.000Z'
);
-- Post 48: Domon - 2026年1月阅读书摘
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2026年1月阅读书摘',
  'https://www.domon.cn/2026-1yue-yue-du-shu-zhai/',
  '我的时间和身体可以支离破碎，但自我必须完整。 ',
  '2026-02-08T08:58:28.000Z'
);
-- Post 49: 太隐 - 棱镜通讯 No.117 安迪·鲁宾（Andy Rubin）
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '棱镜通讯 No.117 安迪·鲁宾（Andy Rubin）',
  'https://wangyurui.com/posts/leng-jing-tong-xun-no-117-4bcde289',
  '科技应无缝嵌入日常，而非作为孤立工具存在',
  '2026-02-08T03:46:02.000Z'
);
-- Post 50: NoneData - 从 Apple watch S4 升级到 S10 的使用体验
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '从 Apple watch S4 升级到 S10 的使用体验',
  'https://www.nonedata.com/posts/apple-watch-s10.html',
  '之前一直使用的是2019年购买的 Apple Watch S4，用到去年也有5年左右了，这一代当时大幅提升了处理器性能，也改变了屏...',
  '2026-02-08T00:00:00.000Z'
);
-- Post 51: 太隐 - “放不下”的李白
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '“放不下”的李白',
  'https://wangyurui.com/posts/fu-sheng-da-meng-60a9965f',
  '仲尼亡兮，谁为出涕？',
  '2026-02-07T09:56:12.000Z'
);
-- Post 52: LoveApple的主页 - 局域网下的家庭影音服务实践对比
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '局域网下的家庭影音服务实践对比',
  'https://loveapple.icu/home-video-services/',
  '本文记录了作者在家庭局域网内尝试三种影音共享方案的实践对比。由于电视系统限制，JellyFin客户端无法安装；SAMBA文件共享协议在播放时出现卡顿；最终通过DLNA流媒体协议成功实现流畅播放，并分析了协议差异对体验的影响。',
  '2026-02-06T13:58:50.000Z'
);
-- Post 53: LoveApple的主页 - N5105NAS：配置WebDav服务
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'N5105NAS：配置WebDav服务',
  'https://loveapple.icu/N5105-4/',
  '这篇博客简要介绍了如何在N5105家庭服务器上配置WebDav服务，实现简易的私人网盘功能。服务端通过iStoreOS应用商店便捷安装GoWebDav并进行基础设置；客户端则在Windows系统上通过修改注册表和支持HTTP连接，将服务端映射为网络驱动器。整个过程门槛较低，适合个人快速搭建内网文件共享服务。',
  '2026-02-05T16:11:41.000Z'
);
-- Post 54: 张洪 Heo - 红包封面：祝大家新的一年发大财啦！
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '红包封面：祝大家新的一年发大财啦！',
  'https://blog.zhheo.com/p/ulnwjohw.html',
  '这篇文章介绍了又到一年一度的Guli封面发放时刻，向大家表达过去支持的感谢，提前拜年祝大家新年发大财。还展示了红包封面样式，推出全新财神版本Guli，呼吁大家赶快到公众号领取。',
  '2026-02-04T04:06:54.000Z'
);
-- Post 55: VicBlog - 可划分显存 != 统一内存：AI Max+ 395 64G AI推理性能
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'VicBlog'),
  '可划分显存 != 统一内存：AI Max+ 395 64G AI推理性能',
  'https://ddadaal.me/articles/aimaxplus395-ai-inference/cn',
  '<h1>前言</h1>
<p>之前写过一篇<a href="/articles/aimaxplus395-experience">关于HP战99 Ultra（搭载AMD AI Max+ 395）的使用体验</a>，今天聊聊这台笔记本在AI推理场景下的表现。作为这台机器宣传的主要场景，AI推理的实际使用情况却优点一言难尽。</p>
<h1>硬件配置回顾</h1>

























<table><thead><tr><th>配置</th><th>详情</th></tr></thead><tbody><tr><td>CPU</td><td>AMD Ryzen AI Max+ 395 16C32T Zen5</td></tr><tr><td>内存</td><td>64G LPDDR5 8000MT 4通道可划分显存</td></tr><tr><td>显卡</td><td>Radeon 8060S 40CU RDNA3.5</td></tr><tr><td>显存</td><td>可在BIOS里将几个固定挡位的内存分配给显存</td></tr></tbody></',
  '2026-02-02T12:34:00.000Z'
);
-- Post 56: Dejavu's Blog - 使用 Kopia 自动化备份服务器数据
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '使用 Kopia 自动化备份服务器数据',
  'https://blog.dejavu.moe/posts/backup-your-data-with-kopia/',
  '定时自动化、快照保留策略及灾难恢复，通过 Kopia 实现服务器数据异地增量备份。',
  '2026-02-01T11:56:43.000Z'
);
-- Post 57: Dejavu's Blog - 给 Docker 启用 IPv6 支持
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '给 Docker 启用 IPv6 支持',
  'https://blog.dejavu.moe/posts/enable-ipv6-in-docker/',
  '本文记录在 Debian 13 环境下通过 NAT ULA 方案，让容器获得简单易用的 IPv6 出网能力。',
  '2026-01-31T10:41:04.000Z'
);
-- Post 58: Dejavu's Blog - Netcup 服务器安装自定义 ISO 镜像
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Netcup 服务器安装自定义 ISO 镜像',
  'https://blog.dejavu.moe/posts/reinstall-netcup-server-using-custom-iso/',
  '以 Debian 13 为例，本文详细记录在 Netcup 服务器控制面板（SCP）中，上传并挂载自定义 ISO 镜像重装系统的操作步骤。',
  '2026-01-30T13:27:06.000Z'
);
-- Post 59: LoveApple的主页 - N5105服务器：如何从公网访问？
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'N5105服务器：如何从公网访问？',
  'https://loveapple.icu/N5105-3/',
  '这篇博客详细对比了三种实现内网服务器公网访问的方案：Zerotier直连、Zerotier配合云服务器中转以及Cloudflare Tunnel。作者基于iStoreOS系统搭建了多项服务，并从配置难度、带宽表现和适用场景等方面分析了每种方法的优缺点，并通过实测数据为读者提供了直观的参考，帮助你根据自身网络条件选择合适的内网穿透方案。',
  '2026-01-26T15:56:18.000Z'
);
-- Post 60: 猫鱼的小站 - 密码保护：感谢110
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '猫鱼的小站'),
  '密码保护：感谢110',
  'https://2cat.net/%e6%84%9f%e8%b0%a2110/',
  '无法提供摘要。这是一篇受保护的文章。',
  '2026-01-25T11:26:59.000Z'
);
-- Post 61: 张洪 Heo - 如何将 FinalcutPro的fcpxml文件转换为srt字幕？导出srt字幕方法
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '如何将 FinalcutPro的fcpxml文件转换为srt字幕？导出srt字幕方法',
  'https://blog.zhheo.com/p/obo78geq.html',
  '这篇文章提到作者有将 finalcutpro 字幕转换为 srt 格式的需求，发现市面上此类软件价格昂贵。作者经研究，把原本用脚本实现的功能做成转换网页，方便自用及后续使用。若存在 bug 欢迎反馈，使用地址为https://fcpxml.zhheo.com/ ，用户直接拖拽 fcpxml 文件到网页，即可下载 srt 字幕文件 。',
  '2026-01-22T04:19:17.000Z'
);
-- Post 62: 太隐 - 女相之死
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '女相之死',
  'https://wangyurui.com/posts/zhao-rong-chuan-0deff19f',
  '甫瞻松槁，静听坟茔。千年万岁，椒花颂声',
  '2026-01-18T11:27:20.000Z'
);
-- Post 63: LoveApple的主页 - N5105软路由：WiFi配置
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'N5105软路由：WiFi配置',
  'https://loveapple.icu/N5105-2/',
  '这篇博客详细介绍了在N5105软路由上配置WiFi的后续步骤。作者将ETH2接口桥接到LAN，连接小米AX3000E路由器并设置为AP模式。随后安装并配置openclash，解决了依赖冲突与文件传输问题，确保局域网内所有设备能便捷地科学上网。',
  '2026-01-18T05:11:32.000Z'
);
-- Post 64: Dejavu's Blog - 在 Debian 13 上自托管 Mox 邮局
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '在 Debian 13 上自托管 Mox 邮局',
  'https://blog.dejavu.moe/posts/hosting-mox-mail-server-on-debian-13/',
  '本文介绍在 Debian GNU/Linux 13 上部署运行 Mox 邮局服务，一款现代、安全的一体化电子邮件解决方案，提供无痛的托管体验。',
  '2026-01-17T22:45:24.000Z'
);
-- Post 65: LoveApple的主页 - 水煮鱼的济州岛旅行日记：Day4
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '水煮鱼的济州岛旅行日记：Day4',
  'https://loveapple.icu/Jeju-day-4/',
  '这篇博客是济州岛旅行的第四天日记。上午作者挑战攀登韩国最高峰汉拿山，虽因大风预警未能登顶，但分享了首次登山的装备体验与沿途雪景。下午独自在济州市区进行了一次充满发现的“City Walk”，探访了算命馆、理发店，品尝了本地拌面，并参观了LG品牌店，最终以微信运动四万步结束了充实的旅程。',
  '2026-01-17T11:00:24.000Z'
);
-- Post 66: LoveApple的主页 - 水煮鱼的济州岛旅行日记：Day3
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '水煮鱼的济州岛旅行日记：Day3',
  'https://loveapple.icu/Jeju-day-3/',
  '这篇博客记录了济州岛旅行的第三天行程。作者游览了以花卉和精致造景为主的山茶花之丘，欣赏了西海岸挟才海水浴场的白色沙滩与清澈海水，并在涯月邑的沿海咖啡街观赏日落、享受悠闲时光。最后以一顿辛辣鲜美的明太鱼汤饭结束一天，日记中充满了对自然景色与慢节奏旅行的惬意感受。',
  '2026-01-17T11:00:16.000Z'
);
-- Post 67: Dejavu's Blog - 使用 Stalwart 自托管邮局服务
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '使用 Stalwart 自托管邮局服务',
  'https://blog.dejavu.moe/posts/hosting-mail-and-collaboration-server-with-stalwart/',
  '一体化的邮件和协作服务器，资源占用极低，完全支持 IMAP、JMAP、SMTP、CalDAV、CardDAV、WebDAV 等协议。',
  '2026-01-17T00:12:41.000Z'
);
-- Post 68: NoneData - 自己动手给 FiiO Q5s Type-C 版本更换电池
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '自己动手给 FiiO Q5s Type-C 版本更换电池',
  'https://www.nonedata.com/posts/fiio-q5s.html',
  '2021年初，买了SONY Z7M2 以及 IER-M9，想着配个合适的前端，当时居无定所，因此想着以便携设备为主。在网上搜到了F...',
  '2026-01-15T00:00:00.000Z'
);
-- Post 69: Dejavu's Blog - 烽火 HG5582A 光猫开启桥接模式
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '烽火 HG5582A 光猫开启桥接模式',
  'https://blog.dejavu.moe/posts/fiberhome-hg5582a-optical-modem-bridge-mode/',
  '不知道超管密码，这样开启烽火 HG5582A 光猫桥接模式。',
  '2026-01-14T20:42:01.000Z'
);
-- Post 70: 张洪 Heo - 如何免水印下载豆包生成的图片？豆包AI图去水印，无水印下载
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '如何免水印下载豆包生成的图片？豆包AI图去水印，无水印下载',
  'https://blog.zhheo.com/p/tw9uwtki.html',
  '这篇文章介绍了因抠图需求激增，相比 PS，用豆包抠图更便捷，复制粘贴图片并指令 “抠图” 即可，但保存图片有水印。为去除水印，可使用 doubao - downloader 工具，它支持油猴插件和浏览器插件两种安装方式。文中给出项目及安装地址，还详细说明了不同网络环境下油猴脚本和浏览器插件的具体安装步骤。',
  '2026-01-14T05:31:42.000Z'
);
-- Post 71: LoveApple的主页 - 水煮鱼的济州岛旅行日记：Day2
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '水煮鱼的济州岛旅行日记：Day2',
  'https://loveapple.icu/Jeju-day-2/',
  '这篇博客记录了济州岛旅行的第二天行程。作者游览了西归浦市的柱状节理带地质奇观，徒步了风景优美的偶来小路路线7（包括海边栈道、Sammaebong峰及城市公园），并深入当地的每日偶来市场，品尝了炸菜卷、铁板鱿鱼和备受好评的黑猪肉泡菜卷等多种小吃，体验了自然风光与市井美食相结合的一天。',
  '2026-01-13T13:39:14.000Z'
);
-- Post 72: Dejavu's Blog - Docker 自托管 Shlink 短链服务
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Docker 自托管 Shlink 短链服务',
  'https://blog.dejavu.moe/posts/deploy-shlink-with-docker-and-nginx/',
  '使用 Docker 部署 Shlink 网址缩短服务的简易步骤',
  '2026-01-13T10:42:15.000Z'
);
-- Post 73: 太隐 - 隐说 NO.13  禅宗三重境
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.13  禅宗三重境',
  'https://wangyurui.com/posts/yin-shuo-no-13-shan-zong-san-zhong-jing-d3e84c7e',
  '',
  '2026-01-12T14:06:49.000Z'
);
-- Post 74: LoveApple的主页 - 水煮鱼的济州岛旅行日记：Day1
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '水煮鱼的济州岛旅行日记：Day1',
  'https://loveapple.icu/Jeju-day-1/',
  '这篇博客是作者济州岛旅行的首日游记，记录了紧凑的“特种兵”行程。一天内游玩了牛岛（骑电助力自行车环岛）、城山日出峰（徒步登顶）和涉地可支（海岸栈道）三个主要景点，并以一顿极具性价比的本地烤肉自助餐收尾。日记充满了对自然风光、人文体验和美食的生动描述，展现了充实而疲惫的第一天。',
  '2026-01-12T12:13:36.000Z'
);
-- Post 75: 张洪 Heo - Mac中罗技鼠标键盘近期失灵问题解决方法，Logi Options 打不开
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  'Mac中罗技鼠标键盘近期失灵问题解决方法，Logi Options 打不开',
  'https://blog.zhheo.com/p/9jbu7q9r.html',
  '这篇文章介绍了作者在用的logi master 3s鼠标前进和后退按钮失灵，驱动打不开，发现是罗技外设Mac用户普遍遇到的问题，因应用程序所需证书过期，且影响应用内更新程序。罗技官方提供解决方法，针对Options+、G HUB分别给出下载链接及操作步骤，macOS 12 Monterey用户还有专用补丁工具。作者发文旨在分享解决办法。',
  '2026-01-12T07:42:24.000Z'
);
-- Post 76: 张洪 Heo - Mac如何将纯图片PDF转换成嵌入文字的PDF？让纯图PDF支持选中复制
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  'Mac如何将纯图片PDF转换成嵌入文字的PDF？让纯图PDF支持选中复制',
  'https://blog.zhheo.com/p/9vtjebeo.html',
  '这篇文章介绍了纯图PDF操作困难，如发给AI读取耗时久。发现Mac预览app自带嵌入文字功能，利用`macOS Monterey`后空格预览图片可选中复制的特性实现。具体操作是用预览app打开PDF，选择文件 - 导出，勾选“嵌入文本”，存储后等待计算，大文件需耐心等待，完成后即可得到嵌入文本的PDF，方便选中文本。',
  '2026-01-12T04:26:04.000Z'
);
-- Post 77: 猫鱼的小站 - 我永远爱你，老公。
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '猫鱼的小站'),
  '我永远爱你，老公。',
  'https://2cat.net/%e6%88%91%e6%b0%b8%e8%bf%9c%e7%88%b1%e4%bd%a0%ef%bc%8c%e8%80%81%e5%85%ac%e3%80%82/',
  '哭哭啼啼，吵吵闹闹将近一个月，终于停战了。我们19年的感情因这场战役变得更深厚。 期望以后我们能继续互相珍惜，好好维护这份真挚的感情。我永远爱你，老公。',
  '2026-01-11T11:17:45.000Z'
);
-- Post 78: LoveApple的主页 - N5105小主机初配置
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'N5105小主机初配置',
  'https://loveapple.icu/N5105-1/',
  '这篇博客详细记录了在N5105小主机上安装并初步配置OpenWRT软路由的过程。作者从下载镜像、使用Ventoy启动盘写入系统开始，逐步完成了网络接口的划分（LAN/WAN）、DHCP设置，并通过校园网认证使设备成功联网。教程到此暂告段落，为后续接入AP等扩展功能做准备。',
  '2026-01-10T11:59:57.000Z'
);
-- Post 79: Sukka - 为 Microsoft 365 添加 1Password 等 Synced Passkey
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '为 Microsoft 365 添加 1Password 等 Synced Passkey',
  'https://blog.skk.moe/post/microsoft-365-1password-passkey/',
  ' 虽然 Microsoft 早早就为 Microsoft 个人账号提供了 Passkey 登录支持，但是对于 Microsoft 365 企业（含教育版），微软的硬件 Passkey 登录支持直到 2025 年年初才姗姗来迟，而可同步的 Synced Passkey（如 1Password、iCloud Keychain、Google Password Manager 等）的支持更是直到最近...',
  '2026-01-10T08:30:00.000Z'
);
-- Post 80: SpencerWoo - iMac M1 上的新 macOS 强调色（也不算新啦）
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SpencerWoo'),
  'iMac M1 上的新 macOS 强调色（也不算新啦）',
  'https://spencerwoo.com/blog/macos-custom-accent-color/',
  '<p><img alt="macOS Accent Colors" src="../images/macos-custom-accent-color/banner.png"></p><p>iMac M1 引入了多种机身配色，macOS 11.3.1+ 在系统中预留了对应的强调色选项，<strong>但默认隐藏。</strong>通过修改 macOS <code>defaults</code> 配置，可在任意 Mac 上启用这些强调色。</p><p>每次都需要去查一下具体配色的配置方法，今天这里简单记录一下。:smile:</p>',
  '2026-01-10T00:00:00.000Z'
);
-- Post 81: Dejavu's Blog - 部署 Obsidian LiveSync 实时同步服务指南
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '部署 Obsidian LiveSync 实时同步服务指南',
  'https://blog.dejavu.moe/posts/selfhosting-obsidian-livesync-service-guide/',
  '使用 Docker 自托管部署 Obsidian LiveSync 服务，获得端到端加密的多设备实时同步服务支持的详细指南。',
  '2026-01-05T09:56:59.000Z'
);
-- Post 82: 龙场茶室 - 2025 年度大赏
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '龙场茶室'),
  '2025 年度大赏',
  'https://blog.peterchen97.cn/posts/39-2025-%E5%B9%B4%E5%BA%A6%E5%A4%A7%E8%B5%8F/',
  '2025 年度大赏',
  '2026-01-05T00:00:00.000Z'
);
-- Post 83: Domon - 2025年12月阅读书摘
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2025年12月阅读书摘',
  'https://www.domon.cn/2025-12yue-yue-du-shu-zhai/',
  '懂得百点不如改变一点。真正的成长不在于自己懂得了多少道理，而在于自己改变了多少。 ',
  '2026-01-03T13:12:25.000Z'
);
-- Post 84: LoveApple的主页 - 鱼论：论王座风潮
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '鱼论：论王座风潮',
  'https://loveapple.icu/view-1/',
  '近日观互联网有感',
  '2026-01-02T10:24:41.000Z'
);
-- Post 85: 太隐 - 我的 2025 年：“没想到”就是人生
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '我的 2025 年：“没想到”就是人生',
  'https://wangyurui.com/posts/wo-de-2025-nian-mei-xiang-dao-jiu-shi-ren-sheng-155ea5bc',
  '生命的本身就是目的，不是手段',
  '2025-12-31T12:17:29.000Z'
);
-- Post 86: VicBlog - 2025年总结
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'VicBlog'),
  '2025年总结',
  'https://ddadaal.me/articles/summary-for-2025/cn',
  '<h1>主动选择改变</h1>
<p>对我来说，2025年的前半年和后半年是完全不同的。</p>
<p>主动告别了一个熟悉的工作，做出一个必定会做出的选择，期望能回到一个熟悉的工作状态，在一个全新的起点重新开始，却开始不停接受充满未知、充满了混乱的挑战。</p>
<h1>离职，一个一定会做出的选择</h1>
<p>不知道什么时候，我开始认为离开微软是一个艰难、遗憾、但是又一定会发生的事情。</p>
<p>一方面，在公司两年来，虽然绩效都是拉满，但是所做的、所参与的所有项目都胎死腹中，而新的被分配的AI有关的项目怎么看都很不靠谱，很难推动；年初，校招进微软，待了十余年的直接manager从公司离职；身边同事的升职空间和奖金肉眼可见的越来越小；而每个季度都能传出裁员的消息，和身边同事讨论的都是裁员、relocate、大礼包。</p>
<p>另一方面，可能是所有初进社会人的共同点，总是对现状不满，总是还有着自己的想法，想着换一个环境可能会更能实现自己的理想。</p>
<p>想着早晚会做，不如现在就做。于是我在我第一份工作的第23个月，在2025年正好过了一半的日子，我终于决定主动踏出这一步。',
  '2025-12-31T07:30:00.000Z'
);
-- Post 87: 烫烫烫的记事本 - 课堂启发下的蛋白质折叠过程性思考备忘录
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '课堂启发下的蛋白质折叠过程性思考备忘录',
  'https://烫烫烫的锟斤拷.top/posts/memo-protein-folding',
  '<p>本文档整理了一些在课堂讨论基础上形成的思考，主要围绕蛋白质结构预测中 β 折叠（β-sheet）预测准确率较低这一现象展开。这些内容并非对现有方法的系统总结，也不是一个成熟的模型或算法提案，但尝试从</p>
<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/memo-protein-folding" target="_blank">https://烫烫烫的锟斤拷.top/posts/memo-protein-folding</a> 阅读全文。</p>',
  '2025-12-31T02:03:33.000Z'
);
-- Post 88: SpencerWoo - Bag of Tricks for Claude Code：克劳德之踩坑记录
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SpencerWoo'),
  'Bag of Tricks for Claude Code：克劳德之踩坑记录',
  'https://spencerwoo.com/blog/bag-of-tricks-for-claude-code/',
  '<p>年终这篇就用贯穿 2025 年的 Agentic Coding 工具收尾了 —— Claude Code 🦀</p><p><img alt="Claude Code Bag of Tricks Banner" src="../images/bag-of-tricks-for-claude-code/banner.png"></p><p>Claude Code 是 Anthropic 官方推出的命令行 AI 编程助手。在上下文理解涌现出重要价值的今天，Claude Code 让 AI 自主的进行编程实现逐渐成为可能。</p><p>不过，Anthropic 对 🇨🇳 地区的访问限制已是人尽皆知。在国内的互联网环境下，使用起来确实需要一些功夫来配置。本文总结了我这几天的实践经验，将配置第三方 API、切换其他 LLM 模型、设置代理和状态栏等方面的策略 dump 如下，希望对读者有所帮助。</p>',
  '2025-12-30T00:00:00.000Z'
);
-- Post 89: 太隐 - 隐说 NO.12 鲁迅的书单
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.12 鲁迅的书单',
  'https://wangyurui.com/posts/yin-shuo-no-12-lu-xun-de-shu-dan-b9794e45',
  '',
  '2025-12-27T06:37:15.000Z'
);
-- Post 90: 张洪 Heo - 我在2026年推荐的Mac软件
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '我在2026年推荐的Mac软件',
  'https://blog.zhheo.com/p/vtyyrfd3.html',
  '这篇文章分享作者正在使用的Mac软件。AI对话选豆包与ChatGPT；即梦用于AI出图；Ice免费管理菜单栏；Folo做信息订阅；SyncTime同步重要文件；Keka解压缩；Upscayl无损放大图片；Bitwarden管理密码。还列举此前推荐且仍在用的如Pixpin截图等软件，文末给出历史Mac软件推荐文章链接。',
  '2025-12-25T10:39:00.000Z'
);
-- Post 91: 张洪 Heo - 在Mac上使用快捷指令解决：已损坏，无法打开。你应该将它移到废纸篓
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '在Mac上使用快捷指令解决：已损坏，无法打开。你应该将它移到废纸篓',
  'https://blog.zhheo.com/p/tsk1v2fy.html',
  '这篇文章介绍了在Mac上安装软件时，常遇“已损坏，无法打开，应移到废纸篓”的情况。通常需用 sudo xattr -r -d com.apple.quarantine 解决签名问题，但记忆或现场查找该命令较费劲。作者将其打包成快捷指令，右键单击选择执行即可，还提供了快捷指令地址。',
  '2025-12-24T02:41:58.000Z'
);
-- Post 92: 张洪 Heo - 如何移除Mac中访达多余的菜单项？还你一个清爽的访达右键菜单
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '如何移除Mac中访达多余的菜单项？还你一个清爽的访达右键菜单',
  'https://blog.zhheo.com/p/hiubxt8w.html',
  '这篇文章介绍了作者在 Mac 上因常使用右键菜单进行文件操作脚本，安装软件后右键菜单被添加许多多余菜单项，如豆包、百度网盘、WPS 等。文章提供两种清理方法：一是阻止访达扩展，进入系统偏好设置搜索扩展，关闭文件提供程序或访达扩展中不需要的软件；二是移除服务，在系统偏好设置搜索 “键盘快捷键”，取消服务里文件或文件夹中相关项的勾选。',
  '2025-12-23T09:35:43.000Z'
);
-- Post 93: 张洪 Heo - 提示 SMS Fee 无法登录怎么办，跳过 SMS Fee 方法
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '提示 SMS Fee 无法登录怎么办，跳过 SMS Fee 方法',
  'https://blog.zhheo.com/p/41n5tavc.html',
  '这篇文章介绍了作者更换到 17 设备时，某聊天软件登录遇坑，提示 SMS Fee 要求付费，国区号付不了，美区要一美元多。尝试第三方客户端可用其他设备验证码登录。还发现网络不好时官方客户端有通行密钥登录方式，建议大家绑定通行密钥。并分享在旧手机重置情况下，通过设备 code 登录第三方客户端，借助 Bitwarden 测试版客户端等一系列操作保留通行密钥实现登录的过程。',
  '2025-12-23T01:51:02.000Z'
);
-- Post 94: Dejavu's Blog - 我的 2025 年不完全回顾
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '我的 2025 年不完全回顾',
  'https://blog.dejavu.moe/posts/2025-year-summary/',
  '关于这一年的成长、变化和没来得及说完的故事。',
  '2025-12-22T10:32:03.000Z'
);
-- Post 95: 张洪 Heo - 从iPhone13Pro换到iPhone17，我的iPhone17上手体验
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '从iPhone13Pro换到iPhone17，我的iPhone17上手体验',
  'https://blog.zhheo.com/p/1rb05exh.html',
  '这篇文章介绍了作者因心仪已久且趁国补恢复，在京东冲动消费购买iPhone 17，2小时送达，入手价5499元。作者建议非淘宝、抖音官方旗舰店等购买者录制开箱视频，先激活手机完成国补，后恢复出厂设置重新激活以迁移旧手机数据。还分享了新手机直观体验，如滑动适应后不错、更轻、支持息屏显示等，以及相机控制、静音按键等功能设置，最后总结新手机体验超13 Pro，对旧手机调侃“吃掉” 。',
  '2025-12-22T02:36:59.000Z'
);
-- Post 96: NoneData - 2025年9月底，265K+5080装机历程及体验
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '2025年9月底，265K+5080装机历程及体验',
  'https://www.nonedata.com/posts/computer-with-265k-5080.html',
  '本文记录一下2025年9月底，我购买的265K+5080电脑的装机历程及使用体验。碎碎念03年那会儿家里就买了台式机，当时还有专门...',
  '2025-12-21T00:00:00.000Z'
);
-- Post 97: ChrAlpha 的幻想乡 - 写给非科班的 HPC 无痛上手：在超算节点上使用 VS Code
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'ChrAlpha 的幻想乡'),
  '写给非科班的 HPC 无痛上手：在超算节点上使用 VS Code',
  'https://blog.ichr.me/post/hpc-vscode/',
  '写给非科班科研人员的 HPC 避坑与上手指南。本文介绍通过 SSH ProxyJump 或 Code Tunnel 隧道技术，将 VS Code 安全直连计算节点。告别繁琐命令行，在合规前提下享受原生 IDE 的流畅开发体验。',
  '2025-12-18T15:01:12.000Z'
);
-- Post 98: 烫烫烫的记事本 - 大学之道
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '大学之道',
  'https://烫烫烫的锟斤拷.top/posts/the-way-of-university',
  '<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//mus<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/the-way-of-university" target="_blank">https://烫烫烫的锟斤拷.top/posts/the-way-of-university</a> 阅读全文。</p>',
  '2025-12-18T03:40:47.000Z'
);
-- Post 99: LoveApple的主页 - 在网页中插入icons
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '在网页中插入icons',
  'https://loveapple.icu/iconfont-inject/',
  '这篇博客详细介绍了如何在Hexo博客的Butterfly主题中集成自定义图标库。作者以阿里巴巴矢量图标库（iconfont）为例，讲解了从下载图标文件、配置CSS路径到在页面中插入并美化图标的完整步骤，帮助用户扩展Butterfly主题默认图标集之外的个性化选择。',
  '2025-12-18T03:18:56.000Z'
);
-- Post 100: Dejavu's Blog - 我的 2025 年度自托管服务报告
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '我的 2025 年度自托管服务报告',
  'https://blog.dejavu.moe/posts/my-2025-selfhosted-services-report/',
  '一份我在 2025 年持续运行的自托管服务清单，并进行了一些梳理和总结。',
  '2025-12-17T10:55:24.000Z'
);
-- Post 101: SkyWT - 那些「酷，但用不着」的 self-hosted 应用
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SkyWT'),
  '那些「酷，但用不着」的 self-hosted 应用',
  'https://skywt.cn/blog/those-cool-but-unnecessary-self-hosted-apps',
  '<p>Self-host 即「自部署」，指的是在自己的服务器上部署软件程序，从而替代 SaaS 应用。</p>
<p>前几年我有一种 self-hosted 狂热。没事就刷刷 <a href="http://awesome-selfhosted.net">awesome-selfhosted</a>，总想让服务器承载更多好玩的功能。得益于 Docker 和 Caddy，只需要写一个 compose.yml，一个新的应用就能立即上线并通过 skywt.cn 的子域名访问，部署体验方便快捷。</p>
<p>这些软件的开源的精神非常宝贵，也是这个世界所需要的。然而不得不承认，大多数开源产品的软件更注重功能而非设计，不少设计非常缺乏品味，这并不是我想要的。加上由于：1）自从工作以来，属于自己的折腾时间大大减少了，我不希望再花太多精力在这些服务的维护上；2）我已被绑定在 Apple 生态中，结合 iCloud 有很多产品都能找到 Apple 体系的替代品。</p>
<p>因此，现在我身上的这种 self-hosted 狂热有些退烧了。</p>
<p>最近，正值网站改造之际，我将服务器上不常用的 ',
  '2025-12-17T02:00:00.000Z'
);
-- Post 102: Kant - 韩大头的新闻报纸摘要 2025年12月16日周二
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '韩大头的新闻报纸摘要 2025年12月16日周二',
  'https://deathfugue.com/archives/90.html',
  '在工作日更新一些自己觉得可能会有帮助的指数与数据，分享一些自己日常看到的，可能会有帮助的新闻，希望能够以自己十年来每天看新闻的习惯，以及在新闻场长期浸泡的 “场感” ，为大家提高一些获取信息的效...',
  '2025-12-16T14:42:00.000Z'
);
-- Post 103: Dejavu's Blog - Linux 下 Intel 核显驱动配置与硬件加速
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Linux 下 Intel 核显驱动配置与硬件加速',
  'https://blog.dejavu.moe/posts/fedora-graphics-driver-with-hardware-acceleration/',
  '在 Fedora Workstation 43 下为 Intel Core Ultra 系列核显（Arc 140T）配置 Xe 驱动、启用 VA-API、OpenCL、Vaulkan、NPU、OpenGL 支持，以及在 Google Chrome 和 Firefox 浏览器中启用视频编解码硬件加速的详细指南',
  '2025-12-15T02:57:45.000Z'
);
-- Post 104: Dejavu's Blog - Fedora Linux 安装配置记录
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Fedora Linux 安装配置记录',
  'https://blog.dejavu.moe/posts/install-and-use-fedora-workstation/',
  '开始以 Fedora Workstation 43 作为日常主力系统，记录安装完成后进行的一些基本配置和优化步骤',
  '2025-12-14T07:08:07.000Z'
);
-- Post 105: LoveApple的主页 - F**k Bing Webmaster!
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'F**k Bing Webmaster!',
  'https://loveapple.icu/fk-bing-webmaster/',
  '这篇博客是作者对Bing搜索引擎的一篇情绪化抱怨。文章详细列举了其四个月来为促使Bing收录网站首页所做的各种努力，包括提交URL、站点地图、配置IndexNow等，但均告失败，仅收到官方模板化的拒绝回复。作者对此感到极度沮丧和愤怒，认为Bing的反馈机制缺乏具体指导，让人投诉无门。',
  '2025-12-13T14:16:21.000Z'
);
-- Post 106: LoveApple的主页 - Random Image API上线
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'Random Image API上线',
  'https://loveapple.icu/my-image-building/',
  '这篇博客记录了作者因依赖的随机图片API失效，从而自主搭建替代服务的过程。通过Python脚本从Pexels图库采集图片，并使用Flask框架快速部署，最终提供了一个可返回随机或指定图片的简易API，旨在为自己的博客及其他项目提供稳定的图片服务。',
  '2025-12-13T11:16:35.000Z'
);
-- Post 107: LoveApple的主页 - 龙歌三店横评：来自2025年12月的南京
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '龙歌三店横评：来自2025年12月的南京',
  'https://loveapple.icu/loonger-hotpot-Dec25/',
  '这篇2025年12月的博客横向对比了南京三家龙歌旋转小火锅分店（栖霞万达茂、马群招商花园城、新街口东方福莱德）。作者从饮料种类、招牌鸭血的供应稳定性以及近期新品（如麻薯鱼豆腐）的口感等方面，梳理了各家门店的异同与个人体验。',
  '2025-12-11T02:44:00.000Z'
);
-- Post 108: Dejavu's Blog - 2025 年优雅地自托管 RSS 服务
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '2025 年优雅地自托管 RSS 服务',
  'https://blog.dejavu.moe/posts/gracefully-selfhosted-rss-service/',
  '使用 Docker 自托管一体化 RSS 信息聚合服务，通过 Cloudflare Warp 提供安全代理、RSSHub 提供信息源路由，实现稳定、高效、隐私友好的内容订阅体验。',
  '2025-12-10T07:25:14.000Z'
);
-- Post 109: LoveApple的主页 - Hexo+Butterfly深入化自定义：以友链页面卡片宽度调整为例
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'Hexo+Butterfly深入化自定义：以友链页面卡片宽度调整为例',
  'https://loveapple.icu/link-card-width/',
  '这篇博客详细介绍了如何深度自定义Hexo的Butterfly主题，以解决友链页面卡片因宽度不足导致内容显示不全的问题。作者通过直接修改主题的styl文件，将每行显示三个卡片调整为两个，并取消了描述文字的单行限制，实现了更优雅的友链排版。',
  '2025-12-09T03:52:08.000Z'
);
-- Post 110: LoveApple的主页 - Hexo+Butterfly的dark mode开发
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'Hexo+Butterfly的dark mode开发',
  'https://loveapple.icu/dark-mode/',
  '一篇关于为Hexo博客Butterfly主题自定义页面开发黑暗模式适配的实战记录。文章以修复QSL页面在暗黑主题下显示异常为例，展示了如何通过添加CSS选择器快速实现样式切换，并简要剖析了Butterfly主题暗黑模式的实现原理，体现了典型的“Vibe Coding”解决问题风格。',
  '2025-12-08T04:54:26.000Z'
);
-- Post 111: Dejavu's Blog - 自托管部署 Pocket ID 与 Tinyauth 完全指南
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '自托管部署 Pocket ID 与 Tinyauth 完全指南',
  'https://blog.dejavu.moe/posts/build-passkeys-identity-system-with-pocketid-x-tinyauth/',
  '支持现代认证流程，让所有内部应用轻松获得安全访问控制。使用 Docker 部署 Pocket ID 和 Tinyauth，为你的自托管服务构建轻量级、统一的 Passkeys 无密码登录身份系统。',
  '2025-12-08T00:58:36.000Z'
);
-- Post 112: Dejavu's Blog - Woodpecker CI 和 Gitea 实现 Hugo 自动部署
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Woodpecker CI 和 Gitea 实现 Hugo 自动部署',
  'https://blog.dejavu.moe/posts/build-hugo-site-with-gitea-and-woodpecker-ci/',
  '在 Gitea 中集成 Woodpecker CI 自动化部署 Hugo 网站并刷新 Cloudflare CDN 缓存',
  '2025-12-03T15:00:03.000Z'
);
-- Post 113: Dejavu's Blog - Gitea/Forgejo 集成 Woodpecker CI/CD
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Gitea/Forgejo 集成 Woodpecker CI/CD',
  'https://blog.dejavu.moe/posts/selfhosted-gitea-ci-with-woodpecker/',
  '使用 Docker 部署 Woodpecker CI，并与自托管 Gitea 集成，实现自动化持续集成与交付。',
  '2025-12-02T04:53:42.000Z'
);
-- Post 114: Domon - 2025年11月阅读书摘
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2025年11月阅读书摘',
  'https://www.domon.cn/2025-11yue-yue-du-shu-zhai/',
  '小事听从你的脑，大事听从你的心。 ',
  '2025-12-02T01:36:00.000Z'
);
-- Post 115: Dejavu's Blog - 在 Blinko 中使用 Ollama 作为 AI 供应商
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '在 Blinko 中使用 Ollama 作为 AI 供应商',
  'https://blog.dejavu.moe/posts/blinko-with-ollama-ai-provider/',
  '本文介绍如何在 Blinko 自托管知识库中集成 Ollama 作为 AI 供应商，以使用 Embedding 模型为例',
  '2025-12-01T10:40:15.000Z'
);
-- Post 116: Kant - Ai 赋能 里德·霍夫曼
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  'Ai 赋能 里德·霍夫曼',
  'https://deathfugue.com/archives/87.html',
  '自测量表[album][/album]量表记分[album][/album]定向指引[album][/album]AI 赋能中提到的10 大原则1.Ai 焦虑时代，超级能动性让我们找回人生掌控权...',
  '2025-11-30T13:52:00.000Z'
);
-- Post 117: Dejavu's Blog - Docker 部署 Gitea/Forgejo
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Docker 部署 Gitea/Forgejo',
  'https://blog.dejavu.moe/posts/docker-install-gitea-with-nginx-and-cloudflared/',
  '零端口暴露，使用 Docker 部署 Gitea/Forgejo，通过 Nginx、Cloudflare Tunnel 实现安全访问。',
  '2025-11-30T12:41:52.000Z'
);
-- Post 118: Sukka - 用代码和 Git 管理 DNS 记录 —— DNSControl 和 GitHub Actions CI/CD 实践
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '用代码和 Git 管理 DNS 记录 —— DNSControl 和 GitHub Actions CI/CD 实践',
  'https://blog.skk.moe/post/dns-as-code-via-dnscontrol/',
  '作为互联网基础设施的基石之一，DNS 也是最脆弱的环节之一。在项目从上线、运营维护的整个生命周期中，DNS 记录的变更和管理是不可避免的。传统上，DNS 记录的管理往往依赖于域名注册商或 DNS 服务商提供的 控制平面，操作不直观、不可复现、容易出错、难以追溯、没有自动化。基础设施即代码（Infrastructure as Code, IaC）无疑为脆弱的 DNS 记录管理给出了一个方向。 ',
  '2025-11-30T07:30:00.000Z'
);
-- Post 119: LoveApple的主页 - 为Hexo博客+Butterfly主题启用Giscus评论系统：一些Bing上搜不到的技巧
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '为Hexo博客+Butterfly主题启用Giscus评论系统：一些Bing上搜不到的技巧',
  'https://loveapple.icu/giscis-intro/',
  '一篇关于在Hexo博客中使用Butterfly主题配置Giscus评论系统的实用指南。文章重点分享了如何解决一个官方文档未提及的进阶配置问题：通过正确使用option字段来实现评论框置顶等自定义功能。',
  '2025-11-29T08:02:51.000Z'
);
-- Post 120: Dejavu's Blog - Plausible CE 启用城市级地理位置识别
INSERT INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Plausible CE 启用城市级地理位置识别',
  'https://blog.dejavu.moe/posts/plausible-with-city-accuracy-geoip/',
  '解决 GeoIP 下载 HTTP 451 错误，使用 Shell 脚本自动下载和更新 GeoLite2 数据库',
  '2025-11-29T07:23:01.000Z'
);
