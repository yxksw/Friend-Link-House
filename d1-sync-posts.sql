-- Posts sync script
-- Generated on 2026-04-03T16:41:17.671Z
-- Total blogs: 87
-- Posts per blog: 5
-- Total posts to sync: 175

-- Post 1: 太隐 - 人治的尽头
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '人治的尽头',
  'https://wangyurui.com/posts/ren-zhi-de-jin-tou-d04f7e1d',
  '一个人亡政息的故事。',
  '2026-04-02T14:00:47.000Z'
);
-- Post 2: 张洪 Heo - OpenClaw喧嚣过后，我最终选择了QClaw
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  'OpenClaw喧嚣过后，我最终选择了QClaw',
  'https://blog.zhheo.com/p/bublpdof.html',
  '这篇文章介绍了作者从早期探索到最终选择腾讯QClaw作为主力AI助手的心路历程。作者曾是Coze用户，因长任务和实体设备操作的局限性转而尝试各种OpenClaw方案，最终锁定QClaw。其核心推荐理由为：免费且Token充足、支持微信接入、安装便捷。最终促使作者下定决心的关键在于"UU远程"——可远程操控Mac且支持盒盖不休眠，让龙虾在后台稳定运行。文章后半部分总结了龙虾的核心应用场景：每日签到等琐碎任务自动化、超长信息收集任务（如整理某领域抖音博主表格）、跨平台搜索skill迁移等，并推荐"UU远程+QClaw"组合作为完整解决方案。',
  '2026-04-02T07:13:58.000Z'
);
-- Post 3: NoneData - 几何布朗运动下股票价格涨超/跌超50%概率计算步骤
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '几何布朗运动下股票价格涨超/跌超50%概率计算步骤',
  'https://www.nonedata.com/posts/GBM-stock.html',
  '1. 几何布朗运动（GBM）模型定义假设股票价格 {St}t≥0\\{S_t\\}_{t \\geq 0}{St​}t≥0​ 服从几何布...',
  '2026-03-31T00:00:00.000Z'
);
-- Post 4: 太隐 - 隐说 NO.17  曹雪芹之后
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.17  曹雪芹之后',
  'https://wangyurui.com/posts/yin-shuo-no-17-wei-shi-yao-xu-xie-ming-zhu-zhe-y-9cde2cd0',
  '',
  '2026-03-29T12:35:38.000Z'
);
-- Post 5: 张洪 Heo - 洪绘存图发布：保存浏览器图片为指定格式、提取网页所有图片、屏幕截图插件
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '洪绘存图发布：保存浏览器图片为指定格式、提取网页所有图片、屏幕截图插件',
  'https://blog.zhheo.com/p/drqm39ob.html',
  '这篇文章介绍了作者因常用图片保存插件被检测为恶意软件而卸载后，自行开发了一款名为《洪绘存图》的浏览器插件。该插件集成了存图、抓图、截图三大功能，成为三合一工具。作者展示了多张插件界面截图，展示了从初步开发到最终完善的过程。这个自研插件不仅解决了作者的存图需求，还通过不断迭代优化，将多个功能整合在一起，提供了一个安全可靠的图片保存解决方案。',
  '2026-03-29T06:41:52.000Z'
);
-- Post 6: LoveApple的主页 - hexo脚本：部署后自动刷新Cloudflare缓存
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'hexo脚本：部署后自动刷新Cloudflare缓存',
  'https://loveapple.icu/cloudflare-purge-cache/',
  '这篇博客介绍了如何通过编写Hexo脚本，在部署后自动调用Cloudflare API清除CDN缓存，从而解决因缓存导致新文章无法实时显示的问题，实现了自动化部署与缓存刷新的一体化流程。',
  '2026-03-27T09:06:24.000Z'
);
-- Post 7: LoveApple的主页 - 正点原子串口例程中开发板无法收信问题
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '正点原子串口例程中开发板无法收信问题',
  'https://loveapple.icu/STM32-USART-Alientek/',
  '本文记录了使用正点原子STM32F103开发板例程时，开发板无法接收串口消息的问题。通过分析代码发现，例程判断接收完成需要检测到回车符（0x0D），而串口调试助手默认不发送该字符。解决方案是在发送信息末尾添加换行符，即可正常通信。',
  '2026-03-27T08:35:38.000Z'
);
-- Post 8: LoveApple的主页 - 鱼论：穿越知识的坠落与诅咒，寻找锚点与未来
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '鱼论：穿越知识的坠落与诅咒，寻找锚点与未来',
  'https://loveapple.icu/view-2/',
  '观点：现在中国学生群体中的功利主义与优绩主义是通过对未来的虚假承诺引导学生无效/低效内卷的集体无意识陷阱，不利于长期主义学习能力的培养与人之为人的发展，',
  '2026-03-26T07:28:47.000Z'
);
-- Post 9: 太隐 - 心理学治不了时代的病
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '心理学治不了时代的病',
  'https://wangyurui.com/posts/xin-li-xue-zhi-bu-liao-shi-dai-de-bing-3c3e340a',
  '',
  '2026-03-25T14:16:02.000Z'
);
-- Post 10: 张洪 Heo - 洪绘星空发布：一个值得逛的博客友链朋友圈
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '洪绘星空发布：一个值得逛的博客友链朋友圈',
  'https://blog.zhheo.com/p/iu5f3hvj.html',
  '这篇文章介绍了博客在社交媒体和AI冲击下面临的衰落现状，以及作者对博客文化的坚守。文章指出，虽然写博客的人越来越少，但作者仍以记录生活和思考为目的坚持博客写作。为了解决博客互动不足的问题，作者重新开发了"洪绘星空"独立站，通过iframe方式展示友链文章，提供点赞、关注、推荐等功能，旨在为坚守博客的人创造更多交流机会。',
  '2026-03-20T02:12:20.000Z'
);
-- Post 11: 太隐 - 隐说 NO.16  “默认为假”的时代
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '隐说 NO.16  “默认为假”的时代',
  'https://wangyurui.com/posts/yin-shuo-no-16-mo-ren-wei-jia-de-shi-dai-faaa0863',
  '',
  '2026-03-18T14:12:16.000Z'
);
-- Post 12: 张洪 Heo - 腾讯QClaw上手：打通微信很方便，但是性能上略有不足
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '腾讯QClaw上手：打通微信很方便，但是性能上略有不足',
  'https://blog.zhheo.com/p/bn8aror2.html',
  '这篇文章介绍了作者体验腾讯QClaw龙虾工具的详细测试过程和对比分析。文章从微信绑定的深度优势、安装配置、实际操作v2ex签到等多个维度展开测试，验证了QClaw确实具备操作电脑的能力。作者指出腾讯相比阿里JVSClaw在IM软件绑定上的天然优势，但同时也暴露了内存占用过高、移动端与桌面端无法同时对话、执行过程不透明等技术短板。最终作者认为QClaw的微信直连体验尚可，但反应速度较慢，交互体验仍需优化。',
  '2026-03-17T07:44:54.000Z'
);
-- Post 13: Dejavu's Blog - BuyVM VPS 块存储挂载教程
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'BuyVM VPS 块存储挂载教程',
  'https://blog.dejavu.moe/posts/buyvm-mount-block-storage-slab/',
  '在 Alpine Linux 下挂载 BuyVM 块存储教程。',
  '2026-03-17T07:30:53.000Z'
);
-- Post 14: Dejavu's Blog - Alpine Linux 服务器配置指南
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Alpine Linux 服务器配置指南',
  'https://blog.dejavu.moe/posts/alpine-linux-server-configuration-guide/',
  '本文记录使用 Alpine Linux 作为服务器操作系统后的一些基础配置和安全加固，旨在打造一个安全、稳定、纯净的服务运行环境。',
  '2026-03-17T03:40:55.000Z'
);
-- Post 15: 张洪 Heo - 阿里 JVS Claw 上手：都这么多天了，养虾的门槛被打下来了吗？
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪 Heo'),
  '阿里 JVS Claw 上手：都这么多天了，养虾的门槛被打下来了吗？',
  'https://blog.zhheo.com/p/ey4573gn.html',
  '这篇文章介绍了阿里推出的JVS Claw内测产品，它同时支持云端和本地部署OpenClaw小龙虾。云端部署提供免费虚拟机（2核8G配置），具备完整的Linux操作界面和公网IP，可直接通过对话界面执行命令，无需配置API，支持文件拖拽传输和技能安装。本地部署极其便捷，5秒内完成配置，开箱即用且内存占用低。产品支持多设备客户端，移动端可控制云端龙虾。整体体验优秀，部署速度快、界面友好，但本地龙虾暂不支持远程控制。',
  '2026-03-16T07:36:30.000Z'
);
-- Post 16: Dejavu's Blog - Alpine Linux 安装 Cloudflared
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Alpine Linux 安装 Cloudflared',
  'https://blog.dejavu.moe/posts/install-cloudflared-on-alpine-linux/',
  '本文记录在 Alpine Linux 上安装与配置 Cloudflare Tunnel (cloudflared) 的基本步骤。',
  '2026-03-15T15:55:06.000Z'
);
-- Post 17: Anomie ZJU - 人生进度条更新：写在26年初春
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Anomie ZJU'),
  '人生进度条更新：写在26年初春',
  'https://dong2000.xyz/post/skipping-ahead/',
  '博客帖子已经荒废四个月有余。这似乎是每一个曾经立志于更新个人博客网站者的必经之路，原因大多是生活工作变动，亦或单纯的兴趣衰减。对我而言二者皆有。
过去的是一个多事的冬季，我离开从小生活的杭州，在瑞士重新建立起自己的生活。这里的环境还是挺不错的——有中世纪的古堡、文艺复兴的油画、缓坡上的草甸和葡萄庄园、日内瓦湖上的天鹅，还有一些新朋友和有趣的活动。不过挑战也不少，比如昂贵的物价、瑞士法语区的语言障碍、独在异乡的孤独感等等。经过一段时间的努力适应，我想自己应该可以开始欣赏这里的生活了。等素材积攒足够，可以写一写风景和趣事。
不过，通过博客表达自己的欲望也是实实在在地衰减了。我逐渐意识到，相比于对着电脑屏幕独自碎碎念，我似乎更需要的是人与人之间真实的倾听和理解。于是我开始和导师、同事交流，和朋友们聊天，报名参加一些俱乐部活动。这并不容易——当我没有足够的社交能量和精力的时候，只能丧丧地躲在自己的房间里；有时会遇到奇奇怪怪的陌生人；一些聚会的散场告别也会留下不小的后劲。但我觉得自己的灵魂因此逐渐丰沛（甚至从INTP变成了INFJ）。
25年的圣诞旅行也因此错过了更新在博客上的时机。我们从风城芝',
  '2026-03-15T15:07:10.000Z'
);
-- Post 18: 太隐 - 盛世的木偶
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '太隐'),
  '盛世的木偶',
  'https://wangyurui.com/posts/sheng-shi-de-mu-ou-417a1f8c',
  '',
  '2026-03-15T14:00:02.000Z'
);
-- Post 19: VicBlog - fork subgen实现纯本地AI视频字幕生成和翻译
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
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
-- Post 20: Dejavu's Blog - Docker 多容器共享中心数据库
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  'Docker 多容器共享中心数据库',
  'https://blog.dejavu.moe/posts/multiple-docker-containers-sharing-postgresql/',
  '通过共享 Postgres 容器和固定 Docker 子网络，使多个 Docker Compose 项目安全复用中心数据库，并附完整 YAML 示例和注意事项。',
  '2026-03-13T06:23:55.000Z'
);
-- Post 21: Kant - 《中美关系的“新正常化”：在毁灭边缘退后一步的最后机会》 王辑思
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '《中美关系的“新正常化”：在毁灭边缘退后一步的最后机会》 王辑思',
  'https://deathfugue.com/archives/94.html',
  '本文原载于： 《Foreign Affairs》（外交事务）2026年3/4月合刊原题： China and the United States on the Brink: A Last Cha...',
  '2026-03-12T13:38:07.000Z'
);
-- Post 22: Kant - 从萧红与女性主义 谈 丁玲的 《三八节有感》 
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '从萧红与女性主义 谈 丁玲的 《三八节有感》 ',
  'https://deathfugue.com/archives/93.html',
  '又是一年三八妇女节，和大家分享一下上世纪女作家丁玲写的一篇文章《三八节有感》，这篇文章虽然是一个近百年之前的文章，但是在今天看来也有非常多先进的思想与建议。 我个人注意到一个细节，这篇文章的写作...',
  '2026-03-12T07:38:40.000Z'
);
-- Post 23: 烫烫烫的记事本 - 当擦鞋童开始养龙虾——技术泡沫的百年收割术
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '当擦鞋童开始养龙虾——技术泡沫的百年收割术',
  'https://烫烫烫的锟斤拷.top/posts/when-a-shoeshine-boy-starts-to-cultivate-lobsters',
  '<h2>当擦鞋童开始谈论 OpenClaw：技术泡沫的百年收割术</h2>
<h3><strong>引子：深圳腾讯楼下的橙色马甲 —— 当历史开始押韵</strong></h3>
<p>2026 年 3 月的一个普通工作日，深圳南山区腾讯总部楼下，</p>
<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/when-a-shoeshine-boy-starts-to-cultivate-lobsters" target="_blank">https://烫烫烫的锟斤拷.top/posts/when-a-shoeshine-boy-starts-to-cultivate-lobsters</a> 阅读全文。</p>',
  '2026-03-09T10:42:14.000Z'
);
-- Post 24: Dejavu's Blog - 安装 Komari 服务器监控工具
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Dejavu''s Blog'),
  '安装 Komari 服务器监控工具',
  'https://blog.dejavu.moe/posts/install-komari-monitor/',
  '在 Debian 和 Alpine 系统下使用二进制安装与配置 Komari 的过程记录。',
  '2026-03-07T12:53:39.000Z'
);
-- Post 25: VicBlog - 把nanobot关进Docker后，如何同时保留浏览器可视化与自动化
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'VicBlog'),
  '把nanobot关进Docker后，如何同时保留浏览器可视化与自动化',
  'https://ddadaal.me/articles/vnc-browser-from-nanobot-in-docker/cn',
  '<p>实在不太放心把 nanobot 这类可以直接操作本地电脑的程序直接装在操作系统上，所以我选择把 nanobot 放在容器里运行。但是nanobot很多有意义的工作又需要和宿主机上的环境（例如浏览器）交互，而浏览器上很多网站需要我们先去登录才可以正常使用，这就需要一个既可以由 nanobot操作、也可以由我们自己的操作的浏览器</p>
<p>经过一番查找，终于找一个不影响 nanobot 本身的方法，操作是在部署 nanobot的 <code>docker-compose.yaml</code> 目录下再创建一个 <code>docker-compose.override.yaml</code>，内容如下：</p>
<figure data-rehype-pretty-code-figure=""><pre style="background-color:#282c34;color:#abb2bf" tabindex="0" data-language="yaml" data-theme="one-dark-pro"><code data-language="yaml" data-',
  '2026-03-06T10:50:00.000Z'
);
-- Post 26: Kant - 从伊朗战争 谈 马丁·布伯的 《我与你》
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '从伊朗战争 谈 马丁·布伯的 《我与你》',
  'https://deathfugue.com/archives/91.html',
  'https://www.bilibili.com/video/BV1FNP1zHEcA/?spm_id_from=333.1387.homepage.video_card.click&vd_so...',
  '2026-03-06T03:47:00.000Z'
);
-- Post 27: LoveApple的主页 - linuxqq在KDE Plasma下无法输入的问题。
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  'linuxqq在KDE Plasma下无法输入的问题。',
  'https://loveapple.icu/linuxqq-fcitx5/',
  '这篇博客记录了在Arch Linux的KDE Plasma（Wayland）环境下，LinuxQQ无法输入中文（甚至无法粘贴）的问题及解决方案。作者提供了两种方法：直接修改启动脚本添加环境变量与参数，或利用qq-flags.conf配置文件持久化启动参数，后者可避免QQ更新后被覆盖。',
  '2026-03-03T23:57:38.000Z'
);
-- Post 28: 精灵王 - Markdown 语法全面测试指南
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '精灵王'),
  'Markdown 语法全面测试指南',
  'https://jingling.im/blog/markdown-syntax-guide',
  '这份综合指南涵盖了全新 MDX 静态博客系统支持的所有 Markdown 特性，并提供基础排版测试。',
  '2026-03-03T00:00:00.000Z'
);
-- Post 29: Domon - 2026年2月阅读书摘
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2026年2月阅读书摘',
  'https://www.domon.cn/2026-2yue-yue-du-shu-zhai/',
  '当旧的生活变得陈腐时，热情洋溢的生活能使人焕然一新。充满激情地生活，是热爱生活的唯一途径。 ',
  '2026-03-02T12:23:43.000Z'
);
-- Post 30: ChrAlpha 的幻想乡 - AI Agent 病毒：从 OpenClaw 病毒式成功到成为病毒
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'ChrAlpha 的幻想乡'),
  'AI Agent 病毒：从 OpenClaw 病毒式成功到成为病毒',
  'https://blog.ichr.me/post/ai-agent-virus/',
  '2026 开年，OpenClaw（曾被称为 Clawdbot 及 Moltbot）作为一款在本地运行的开源 AI 代理框架，展现出了病毒般的影响力，而其获得更大能力的可能性的同时意味着更大的安全风险，或者难听点说成为潜在的计算机病毒。',
  '2026-02-25T14:53:40.000Z'
);
-- Post 31: LoveApple的主页 - 家族琐记
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LoveApple的主页'),
  '家族琐记',
  'https://loveapple.icu/family-blood/',
  '这篇博客是作者关于自己福建莆田家族的一次私人梳理与记录。作为生在南京、很少回乡的“外人”，作者在过年期间厘清了从太爷爷到孙辈共四代人的庞大家族脉络，记录了本家与旁系亲属的职业、性格与轶事，也触及了长房之争等微妙关系。这不仅是一份家庭关系的整理，更是一场对自己根系的探寻与书写。',
  '2026-02-21T13:19:01.000Z'
);
-- Post 32: fengkx - 2025
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'fengkx'),
  '2025',
  'https://www.fengkx.top/post/year-2025/',
  '<p>往年都不写年度总结，今年可能是年过半半百了，也可能是过年太闲，就写一写。回顾一下2025，记录一下现在的一些想法。</p>
<h2 id="工作">工作</h2>
<p>写代码层面上逃不开的就是LLM了。回想上一年的春节，GPT刚出thinking模式不久，deepseek',
  '2026-02-19T11:21:14.000Z'
);
-- Post 33: Sukka - 杀死那只鹦鹉 —— 「白话文」讲解一种探测 XTLS VLESS REALITY 的手段
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '杀死那只鹦鹉 —— 「白话文」讲解一种探测 XTLS VLESS REALITY 的手段',
  'https://blog.skk.moe/post/to-kill-a-parrot-detecting-xtls-vless-reality-server/',
  '让我们抛弃传统的「猫鼠游戏」对抗思维，不去费力寻找 VLESS 和 REALITY 协议在密码学上可能存在的深奥缺陷，而去关注一个更具决定性且无法逾越的变量：@RPRX 在代码工程实现层面所表现出的、近乎结构性的认知局限。通过针对性地审计 XTLS 的实现代码，我们可以在不触碰任何高深算法的前提下，实现对 XTLS VLESS REALITY 代理服务的手术刀式探测与精准识别。 ',
  '2026-02-16T04:00:00.000Z'
);
-- Post 34: NoneData - 两款软件助你方便调节 Windows 外接显示器亮度
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '两款软件助你方便调节 Windows 外接显示器亮度',
  'https://www.nonedata.com/posts/lightness-adjustment-for-windows.html',
  '调节显示器亮度一般通过显示器面板自带的按钮，很多时候随着时间变化之类需要调节亮度，手动调节实在繁琐。特别是拥有多个显示器的情况下，...',
  '2026-02-12T00:00:00.000Z'
);
-- Post 35: NoneData - iBasso DC07Pro 对比 EPZ TP55
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  'iBasso DC07Pro 对比 EPZ TP55',
  'https://www.nonedata.com/posts/music-connector.html',
  '之前我买过FiiO的Q5s，采用两篇AKM的4493解码，之前电池鼓包后虽然进行了更换，但其功能性、参数都已经有所落后，而且也不太...',
  '2026-02-10T09:08:39.000Z'
);
-- Post 36: Domon - 2026年1月阅读书摘
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2026年1月阅读书摘',
  'https://www.domon.cn/2026-1yue-yue-du-shu-zhai/',
  '我的时间和身体可以支离破碎，但自我必须完整。 ',
  '2026-02-08T08:58:28.000Z'
);
-- Post 37: NoneData - 从 Apple watch S4 升级到 S10 的使用体验
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '从 Apple watch S4 升级到 S10 的使用体验',
  'https://www.nonedata.com/posts/apple-watch-s10.html',
  '之前一直使用的是2019年购买的 Apple Watch S4，用到去年也有5年左右了，这一代当时大幅提升了处理器性能，也改变了屏...',
  '2026-02-08T00:00:00.000Z'
);
-- Post 38: VicBlog - 可划分显存 != 统一内存：AI Max+ 395 64G AI推理性能
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'VicBlog'),
  '可划分显存 != 统一内存：AI Max+ 395 64G AI推理性能',
  'https://ddadaal.me/articles/aimaxplus395-ai-inference/cn',
  '<h1>前言</h1>
<p>之前写过一篇<a href="/articles/aimaxplus395-experience">关于HP战99 Ultra（搭载AMD AI Max+ 395）的使用体验</a>，今天聊聊这台笔记本在AI推理场景下的表现。作为这台机器宣传的主要场景，AI推理的实际使用情况却优点一言难尽。</p>
<h1>硬件配置回顾</h1>

























<table><thead><tr><th>配置</th><th>详情</th></tr></thead><tbody><tr><td>CPU</td><td>AMD Ryzen AI Max+ 395 16C32T Zen5</td></tr><tr><td>内存</td><td>64G LPDDR5 8000MT 4通道可划分显存</td></tr><tr><td>显卡</td><td>Radeon 8060S 40CU RDNA3.5</td></tr><tr><td>显存</td><td>可在BIOS里将几个固定挡位的内存分配给显存</td></tr></tbody></',
  '2026-02-02T12:34:00.000Z'
);
-- Post 39: 猫鱼的小站 - 密码保护：感谢110
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '猫鱼的小站'),
  '密码保护：感谢110',
  'https://2cat.net/%e6%84%9f%e8%b0%a2110/',
  '无法提供摘要。这是一篇受保护的文章。',
  '2026-01-25T11:26:59.000Z'
);
-- Post 40: NoneData - 自己动手给 FiiO Q5s Type-C 版本更换电池
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'NoneData'),
  '自己动手给 FiiO Q5s Type-C 版本更换电池',
  'https://www.nonedata.com/posts/fiio-q5s.html',
  '2021年初，买了SONY Z7M2 以及 IER-M9，想着配个合适的前端，当时居无定所，因此想着以便携设备为主。在网上搜到了F...',
  '2026-01-15T00:00:00.000Z'
);
-- Post 41: 猫鱼的小站 - 我永远爱你，老公。
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '猫鱼的小站'),
  '我永远爱你，老公。',
  'https://2cat.net/%e6%88%91%e6%b0%b8%e8%bf%9c%e7%88%b1%e4%bd%a0%ef%bc%8c%e8%80%81%e5%85%ac%e3%80%82/',
  '哭哭啼啼，吵吵闹闹将近一个月，终于停战了。我们19年的感情因这场战役变得更深厚。 期望以后我们能继续互相珍惜，好好维护这份真挚的感情。我永远爱你，老公。',
  '2026-01-11T11:17:45.000Z'
);
-- Post 42: Sukka - 为 Microsoft 365 添加 1Password 等 Synced Passkey
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '为 Microsoft 365 添加 1Password 等 Synced Passkey',
  'https://blog.skk.moe/post/microsoft-365-1password-passkey/',
  ' 虽然 Microsoft 早早就为 Microsoft 个人账号提供了 Passkey 登录支持，但是对于 Microsoft 365 企业（含教育版），微软的硬件 Passkey 登录支持直到 2025 年年初才姗姗来迟，而可同步的 Synced Passkey（如 1Password、iCloud Keychain、Google Password Manager 等）的支持更是直到最近...',
  '2026-01-10T08:30:00.000Z'
);
-- Post 43: SpencerWoo - iMac M1 上的新 macOS 强调色（也不算新啦）
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SpencerWoo'),
  'iMac M1 上的新 macOS 强调色（也不算新啦）',
  'https://spencerwoo.com/blog/macos-custom-accent-color/',
  '<p><img alt="macOS Accent Colors" src="../images/macos-custom-accent-color/banner.png"></p><p>iMac M1 引入了多种机身配色，macOS 11.3.1+ 在系统中预留了对应的强调色选项，<strong>但默认隐藏。</strong>通过修改 macOS <code>defaults</code> 配置，可在任意 Mac 上启用这些强调色。</p><p>每次都需要去查一下具体配色的配置方法，今天这里简单记录一下。:smile:</p>',
  '2026-01-10T00:00:00.000Z'
);
-- Post 44: Domon - 2025年12月阅读书摘
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2025年12月阅读书摘',
  'https://www.domon.cn/2025-12yue-yue-du-shu-zhai/',
  '懂得百点不如改变一点。真正的成长不在于自己懂得了多少道理，而在于自己改变了多少。 ',
  '2026-01-03T13:12:25.000Z'
);
-- Post 45: VicBlog - 2025年总结
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
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
-- Post 46: 烫烫烫的记事本 - 课堂启发下的蛋白质折叠过程性思考备忘录
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '课堂启发下的蛋白质折叠过程性思考备忘录',
  'https://烫烫烫的锟斤拷.top/posts/memo-protein-folding',
  '<p>本文档整理了一些在课堂讨论基础上形成的思考，主要围绕蛋白质结构预测中 β 折叠（β-sheet）预测准确率较低这一现象展开。这些内容并非对现有方法的系统总结，也不是一个成熟的模型或算法提案，但尝试从</p>
<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/memo-protein-folding" target="_blank">https://烫烫烫的锟斤拷.top/posts/memo-protein-folding</a> 阅读全文。</p>',
  '2025-12-31T02:03:33.000Z'
);
-- Post 47: SpencerWoo - Bag of Tricks for Claude Code：克劳德之踩坑记录
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SpencerWoo'),
  'Bag of Tricks for Claude Code：克劳德之踩坑记录',
  'https://spencerwoo.com/blog/bag-of-tricks-for-claude-code/',
  '<p>年终这篇就用贯穿 2025 年的 Agentic Coding 工具收尾了 —— Claude Code 🦀</p><p><img alt="Claude Code Bag of Tricks Banner" src="../images/bag-of-tricks-for-claude-code/banner.png"></p><p>Claude Code 是 Anthropic 官方推出的命令行 AI 编程助手。在上下文理解涌现出重要价值的今天，Claude Code 让 AI 自主的进行编程实现逐渐成为可能。</p><p>不过，Anthropic 对 🇨🇳 地区的访问限制已是人尽皆知。在国内的互联网环境下，使用起来确实需要一些功夫来配置。本文总结了我这几天的实践经验，将配置第三方 API、切换其他 LLM 模型、设置代理和状态栏等方面的策略 dump 如下，希望对读者有所帮助。</p>',
  '2025-12-30T00:00:00.000Z'
);
-- Post 48: ChrAlpha 的幻想乡 - 写给非科班的 HPC 无痛上手：在超算节点上使用 VS Code
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'ChrAlpha 的幻想乡'),
  '写给非科班的 HPC 无痛上手：在超算节点上使用 VS Code',
  'https://blog.ichr.me/post/hpc-vscode/',
  '写给非科班科研人员的 HPC 避坑与上手指南。本文介绍通过 SSH ProxyJump 或 Code Tunnel 隧道技术，将 VS Code 安全直连计算节点。告别繁琐命令行，在合规前提下享受原生 IDE 的流畅开发体验。',
  '2025-12-18T15:01:12.000Z'
);
-- Post 49: 烫烫烫的记事本 - 大学之道
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '大学之道',
  'https://烫烫烫的锟斤拷.top/posts/the-way-of-university',
  '<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//mus<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/the-way-of-university" target="_blank">https://烫烫烫的锟斤拷.top/posts/the-way-of-university</a> 阅读全文。</p>',
  '2025-12-18T03:40:47.000Z'
);
-- Post 50: SkyWT - 那些「酷，但用不着」的 self-hosted 应用
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
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
-- Post 51: Kant - 韩大头的新闻报纸摘要 2025年12月16日周二
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  '韩大头的新闻报纸摘要 2025年12月16日周二',
  'https://deathfugue.com/archives/90.html',
  '在工作日更新一些自己觉得可能会有帮助的指数与数据，分享一些自己日常看到的，可能会有帮助的新闻，希望能够以自己十年来每天看新闻的习惯，以及在新闻场长期浸泡的 “场感” ，为大家提高一些获取信息的效...',
  '2025-12-16T14:42:00.000Z'
);
-- Post 52: Cysime Moflu - 从Disqus迁移到Waline的踩坑笔记
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cysime Moflu'),
  '从Disqus迁移到Waline的踩坑笔记',
  'https://blog.cysi.me/2025/12/migrate-from-disqus-to-waline/',
  '<img src="https://blog.cysi.me/2025/12/migrate-from-disqus-to-waline/comments.jpg" alt="Featured image of post 从Disqus迁移到Waline的踩坑笔记" /><p>我的博客是2022年从Wordpress换成Hugo的，受制于Hugo这种纯静态框架的限制，必须要额外再配备评论系统。当时Waline等产品只能使用Leancloud作为数据库，所以<a class="link" href="https://blog.cysi.me/2022/05/migrate-to-hugo/#%E8%AF%84%E8%AE%BA%E8%BF%81%E7%A7%BB%E5%92%8C%E4%BD%BF%E7%94%A8" target="_blank" rel="noopener"
>为了省事直接用的Disqus</a>，后者是可以直接接入Wordpress的，因此可以非常简单地转移到Hugo，并且使用DisqusJS这样的项目并配合反向代理的话体验还不错。但到了现在，即便使用了Vercel',
  '2025-12-03T01:05:29.000Z'
);
-- Post 53: Domon - 2025年11月阅读书摘
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2025年11月阅读书摘',
  'https://www.domon.cn/2025-11yue-yue-du-shu-zhai/',
  '小事听从你的脑，大事听从你的心。 ',
  '2025-12-02T01:36:00.000Z'
);
-- Post 54: Kant - Ai 赋能 里德·霍夫曼
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Kant'),
  'Ai 赋能 里德·霍夫曼',
  'https://deathfugue.com/archives/87.html',
  '自测量表[album][/album]量表记分[album][/album]定向指引[album][/album]AI 赋能中提到的10 大原则1.Ai 焦虑时代，超级能动性让我们找回人生掌控权...',
  '2025-11-30T13:52:00.000Z'
);
-- Post 55: Sukka - 用代码和 Git 管理 DNS 记录 —— DNSControl 和 GitHub Actions CI/CD 实践
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '用代码和 Git 管理 DNS 记录 —— DNSControl 和 GitHub Actions CI/CD 实践',
  'https://blog.skk.moe/post/dns-as-code-via-dnscontrol/',
  '作为互联网基础设施的基石之一，DNS 也是最脆弱的环节之一。在项目从上线、运营维护的整个生命周期中，DNS 记录的变更和管理是不可避免的。传统上，DNS 记录的管理往往依赖于域名注册商或 DNS 服务商提供的 控制平面，操作不直观、不可复现、容易出错、难以追溯、没有自动化。基础设施即代码（Infrastructure as Code, IaC）无疑为脆弱的 DNS 记录管理给出了一个方向。 ',
  '2025-11-30T07:30:00.000Z'
);
-- Post 56: Cysime Moflu - 天使吉米/Tanchjim Force双动圈耳塞个人听感报告
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cysime Moflu'),
  '天使吉米/Tanchjim Force双动圈耳塞个人听感报告',
  'https://blog.cysi.me/2025/11/tanchjim-force/',
  '<img src="https://blog.cysi.me/2025/11/tanchjim-force/ea-force-main.jpg" alt="Featured image of post 天使吉米/Tanchjim Force双动圈耳塞个人听感报告" /><p>Force是一款比较有意思的耳机，双动圈并做了开放式架构，在当前国产耳塞里，尤其是各种动圈、动铁乃至平板、静电多单元如同叠Buff一样并大行其道的环境下，应该不算多见，我愿称之为“比较克制地单元叠加”。</p>
<p>在一次试听之后我觉得它还不错，且我对手上已经用了多年的耳塞，尤其是达音科DK3001Pro已经不甚满意（毕竟这已经是2019年的耳塞了，连原线都已经被磨破了的那种），换耳塞的日程便提了上来。卖掉手里的3001Pro和水月雨的Kato后，趁京东24期免息加折扣直接拿下Tanchjim Force。</p>
<h2 id="外观">外观
</h2><p>外观一直以来都是Tanchjim产品值得称道的一点，家族化风格较为统一的设计语言、非常克制且简约又简单的外观，相较于国内一些喜欢在单元外观上搞点花里胡哨东',
  '2025-11-26T06:00:37.000Z'
);
-- Post 57: Domon - 2025年10月阅读书摘
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Domon'),
  '2025年10月阅读书摘',
  'https://www.domon.cn/2025-10yue-yue-du-shu-zhai/',
  '他常说，政府还会拆掉我们周围更多的房子，只是时间早晚的问题，不过他从不操心将来。在“拆那儿”住了四十多年，他早已明白，凡事没有永远。 ',
  '2025-11-05T13:46:08.000Z'
);
-- Post 58: Anomie ZJU - 关仲卿的理想和痛苦
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Anomie ZJU'),
  '关仲卿的理想和痛苦',
  'https://dong2000.xyz/post/on_quagmire/',
  '<p>“迷失在黑夜中时，不妨抬头看看星空；如果不知道应该相信什么，人应当面对自己的良知。”</p>',
  '2025-10-28T16:12:49.000Z'
);
-- Post 59: Sukka - 是什么，为什么，怎么做 —— 谈谈 DNS 泄漏、CDN 访问优化与 Fake IP
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '是什么，为什么，怎么做 —— 谈谈 DNS 泄漏、CDN 访问优化与 Fake IP',
  'https://blog.skk.moe/post/lets-talk-about-dns-cdn-fake-ip/',
  '2001 年 4 月 IETF 通过的 RFC3089 中所描述的 Fake IP，是四层代理分流场景下 性能相对最佳、体验相对最好、实现相对最简单的「最佳实践」。相比之下，Real IP 模式下为了尽可能接近 Fake IP 的性能、体验，需要大量额外配置、付出更多的代价。 ',
  '2025-10-16T06:00:00.000Z'
);
-- Post 60: f2h2h1's blog - 计算机网络基础知识
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'f2h2h1''s blog'),
  '计算机网络基础知识',
  'https://f2h2h1.github.io/article/计算机网络基础知识.html',
  '计算机网络基础知识',
  '2025-10-15T10:29:37.000Z'
);
-- Post 61: 猫鱼的小站 - 简餐唔多岩我
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '猫鱼的小站'),
  '简餐唔多岩我',
  'https://2cat.net/%e7%ae%80%e9%a4%90%e5%94%94%e5%a4%9a%e5%b2%a9%e6%88%91/',
  '今日整头坐咗一个下午，到食晚饭果阵，个脑袋有点短路，点了两个简餐（煎牛排能量碗和白汁鸡肉螺丝粉）。唔知点评价好，淡茂茂，好似食饲料甘。 饭后诳杂货店偶遇巴鲁坦星人，好鬼趣致。',
  '2025-10-10T13:52:48.000Z'
);
-- Post 62: 猫鱼的小站 - 秋冬新版
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '猫鱼的小站'),
  '秋冬新版',
  'https://2cat.net/%e7%a7%8b%e5%86%ac%e6%96%b0%e7%89%88/',
  '最近钟意上Gorden Flanders的哥顿花园。repeat又repeat咁听，好有灵感，所以提前做了个秋冬版，以森林动物为主题。 昨天浏览了些网上邻居的站子，看完香水后，想开多个碎碎念栏目。有时 <a href="https://2cat.net/%e7%a7%8b%e5%86%ac%e6%96%b0%e7%89%88/" class="more-link">Read more</a>',
  '2025-10-08T10:01:15.000Z'
);
-- Post 63: 猫鱼的小站 - 2025广州CICF漫展
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '猫鱼的小站'),
  '2025广州CICF漫展',
  'https://2cat.net/2025%e5%b9%bf%e5%b7%9ecicf%e6%bc%ab%e5%b1%95/',
  '旅游回来，赶在漫展最后一天打卡。 鸣潮的舞台好有氛围感。虽然没玩过这个游戏，不过听着有史诗感的BGM欣赏这两位美艳的精灵好享受。 高达GQuuuuuuX，今年人气最高动漫之一，EVA班底制作，浓浓EV <a href="https://2cat.net/2025%e5%b9%bf%e5%b7%9ecicf%e6%bc%ab%e5%b1%95/" class="more-link">Read more</a>',
  '2025-10-05T14:12:47.000Z'
);
-- Post 64: Anomie ZJU - 快速上手科学工程计算集群
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Anomie ZJU'),
  '快速上手科学工程计算集群',
  'https://dong2000.xyz/post/secc_quick_guide/',
  '<p>与科学工程计算集群进行交互需要在校园网中，或者开启<a href="https://vpn.westlake.edu.cn/">西湖大学VPN客户端</a>。</p>',
  '2025-09-29T12:10:08.000Z'
);
-- Post 65: f2h2h1's blog - 在magento2中使用persisted-query
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'f2h2h1''s blog'),
  '在magento2中使用persisted-query',
  'https://f2h2h1.github.io/article/在magento2中使用persisted-query.html',
  '在magento2中使用persisted-query',
  '2025-09-29T10:34:26.000Z'
);
-- Post 66: f2h2h1's blog - socket编程
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'f2h2h1''s blog'),
  'socket编程',
  'https://f2h2h1.github.io/article/socket编程.html',
  'socket编程',
  '2025-09-15T11:03:15.000Z'
);
-- Post 67: gq's Blog - 基于 LLM 整理 Web 全栈工程师的能力模型与学习 Roadmap
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'gq''s Blog'),
  '基于 LLM 整理 Web 全栈工程师的能力模型与学习 Roadmap',
  'https://zgq.me/posts/llm-roadmap/',
  '---
title: "基于 LLM 整理 Web 全栈工程师的能力模型与学习 Roadmap"
date: 2025-09-14T14:05:00+08:00
tags:
  - 学习

---

毕业至今，不知不觉已经当了 6 年的职业码农，自学生时代的懵懵懂懂开始，在 Web 开发这个领域也算有了十几年的接触。之前我也写了不少在 Web App、GUI 应用、React 等方面的 [思考](https://zgq.me/posts/react-app-dev/)，但主要还是在知识层面，对于工作价值以及自己的职业定位方面，好像还是会有一些迷茫感觉。身边人来人往，带着裁员的焦虑感，外加 Web 知识体系的庞杂和 AI 高速发展对软件开发领域的降维冲击，日常也是思考人生居多。

这样的思考大概集中在一个话题，关于“有限”和“无限”如何找到一个平衡点。我们知道个人的能力边界是无限的，但个人无论身体机能、精力管理、家庭的关系等等方面，能作的输出其实是有限的。

但无论在什么职场，从以赚钱为导向的老板角色、一个纯粹理性的商人角度而言，只要可能性存在，那对于 ROI 的追求以及贪欲一定是无止尽',
  '2025-09-14T06:05:00.000Z'
);
-- Post 68: SpencerWoo - Helpful matplotlib snippets 📈
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SpencerWoo'),
  'Helpful matplotlib snippets 📈',
  'https://spencerwoo.com/blog/matplotlib-snippets/',
  '<p><code>matplotlib</code> -- the de-facto library of plotting in Python.</p><p><code>seaborn</code> -- the golden tool for statistical data visualization. Also comes with <strong>nice style defaults</strong>.</p><p>I have found myself using both libraries frequently with some style preferences that I usually adopt when creating plots. For the sake of reproducibility and convenience, I have collected some of these snippets here.</p>',
  '2025-09-09T00:00:00.000Z'
);
-- Post 69: f2h2h1's blog - 一段CSDN文章主要内容的油猴脚本
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'f2h2h1''s blog'),
  '一段CSDN文章主要内容的油猴脚本',
  'https://f2h2h1.github.io/article/一段CSDN文章主要内容的油猴脚本.html',
  '一段CSDN文章主要内容的油猴脚本',
  '2025-09-08T10:17:14.000Z'
);
-- Post 70: Anomie ZJU - Context dependence 是一句万金油吗 (文献分享)
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Anomie ZJU'),
  'Context dependence 是一句万金油吗 (文献分享)',
  'https://dong2000.xyz/post/addressing_context_dependence_in_ecology/',
  '今年五月份去昆明参加了第三届国际农业生物多样性大会，虽然没有作报告，但是难得有机会向世界各地的学者们提问请教。我发现 context dependence (情景依赖性) 是一个被人们反复提及的字眼。某个因素的效应是正向的还是负向的？视具体情景而定。某个生态保护策略值得被推广应用吗？视具体情景而定……我常常感到这样的回答有如隔靴搔痒，好像什么都说了，又好像什么都没说。
诚然，社会-经济-自然复合生态系统中充斥着各种非线性关系，很难像经典物理学那样抽象出极其具有普适性的规律。在试图观察某个对象时，我们必须要时刻注意到其所处情景以及观测方法的复杂性和特殊性，并对此保持谦卑谨慎。但是，粗暴地滥用context dependence几乎等同于承认我们对研究结论的普适程度一无所知，也就几乎等同于承认我们对世界探索的失败。这不免令人心生沮丧。
虽然我们无法彻底抛弃这一概念，但至少可以对context dependence进行定义和分类。Catford et al. (2022) 的文章 Addressing context dependence in ecology: Trends in Ecol',
  '2025-09-08T10:16:47.000Z'
);
-- Post 71: f2h2h1's blog - 电子邮件的不完整总结
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'f2h2h1''s blog'),
  '电子邮件的不完整总结',
  'https://f2h2h1.github.io/article/电子邮件的不完整总结.html',
  '电子邮件的不完整总结',
  '2025-09-01T10:03:58.000Z'
);
-- Post 72: SkyWT - 我眼中的 AdventureX 2025  
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SkyWT'),
  '我眼中的 AdventureX 2025  ',
  'https://skywt.cn/blog/advx-2025-in-my-pov',
  '<p>去年首届举办的 AdventureX 2024 是我第一次参加黑客松。这场活动曾经给我带来了极大的震撼，深刻改变了我的一些观念，也让我结识了许多好朋友。正因如此，当 AdventureX 2025 开放报名时，我毫不犹豫地提交了申请。然而，今年的这一活动不仅引发了巨大争议，并且整体活动体验也完全没有达到我的预期。</p>
<h2>从 AdventureX 2024 说起</h2>
<p>参加完去年的 AdvX 24 后，我最核心的 take-away 是：</p>
<p><strong>世界上最优秀而野心勃勃的那些人，大多不在大公司里，而是在初创公司</strong>。</p>
<p>如果说《黑客与画家》指出了我理想的职业路径，AdvX 24 则让我在现实生活中看到了这种路径。各种 workshop 让我对创业、VC 等有了具体概念。认识的许多雄心勃勃的朋友让我相信：我们现在就有创造和改变这个世界的力量。（在大学这种死气沉沉的氛围中待久了，人似乎会慢慢不相信这一点）</p>
<p>在 AdvX 24，我也认识了许多好朋友。和他们交谈的过程中，他们的生活经历、世界观都极大拓宽了我的',
  '2025-08-14T01:15:16.000Z'
);
-- Post 73: VicBlog - 14寸16核32线程：搭载AMD AI Max+ 395的HP战99 Ultra使用感受
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'VicBlog'),
  '14寸16核32线程：搭载AMD AI Max+ 395的HP战99 Ultra使用感受',
  'https://ddadaal.me/articles/aimaxplus395-experience/cn',
  '<h1>为什么选这一台？</h1>
<p>最近有一次换笔记本的机会，因为之后需要频繁旅行，于是选择了14寸的笔记本作为主力机；考虑到平时开发经常需要占用大量内存，32G的内存不够用，需要64G。而现在轻薄本里提供64G选项的，主流的选择只有可以自己加内存的ThinkPad T14p，但是T14p的CPU和GPU性能都在轻薄本中中规中矩，且被11代酷睿折磨了5年的我，现在已经变成了十足的I黑😅。而AMD只有Max+系列的设备有搭载64G及以上内存的产品，且当前只有华硕幻X和战99Ultra（在国外称ZBook Ultra G1a）这两款。前者平板形态虽然非常帅，但是在非桌面场景下使用体验较差，所以最终选择了后者。主要配置如下：</p>





































<table><thead><tr><th>配置</th><th>配置</th></tr></thead><tbody><tr><td>CPU</td><td>AMD Ryzen AI Max+ 395 16C32T Zen5</td></tr><tr><td>内存</td><td',
  '2025-07-26T01:14:00.000Z'
);
-- Post 74: 烫烫烫的记事本 - 《旅光》创作手记
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '《旅光》创作手记',
  'https://烫烫烫的锟斤拷.top/posts/travel-lights',
  '<p>这是一首关于旅行、成长与陪伴的歌。</p>
<iframe src="//player.bilibili.com/player.html?isOutside=true&aid=11487564477571<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/travel-lights" target="_blank">https://烫烫烫的锟斤拷.top/posts/travel-lights</a> 阅读全文。</p>',
  '2025-07-18T16:37:33.000Z'
);
-- Post 75: SkyWT - Weekly 停更公告与博客后续计划
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SkyWT'),
  'Weekly 停更公告与博客后续计划',
  'https://skywt.cn/blog/weekly-suspension-and-blog-plans',
  '<h2>Weekly 停止更新</h2>
<p>很遗憾，虽然在本年初确立了「写一年的 Weekly 周记」的目标，但现在经过仔细的考虑，我不得不取消这一目标，无限期停止 Weekly 系列博客文章的更新。</p>
<p>主要基于以下原因：</p>
<ol>
<li>我希望将博客建设为一个发布「长文」和「有一定深度文章」的平台。较短的、灵光一现的想法，目前都集中发布在 Twitter（未来或许会同步到其他社交媒体）。每周的 Weekly 其实只是将这些想法聚合并整理，本质上仍然是零散想法的集合，这没有太大的必要。对于较短的简单想法，Twitter 这类社交平台确实是更好的去处，能够获得即时快速的反馈。</li>
<li>高频率的 Weekly 系列文章，让博客内容变得更加零散，缺乏明确的主题，降低了博客整体的平均内容质量。最重要的是，降低了博客内容的「有效信息密度」，让直接访问我的博客的人很难获取较大的价值。</li>
</ol>
<p>综合以上原因，我决定无限期停止更新 Weekly 系列博客。之后我希望我的单篇文章能够针对某一话题进行深度的讨论。写作对我而言，依然是一种和自己对话的最',
  '2025-07-02T04:20:15.000Z'
);
-- Post 76: 精灵王 - Spring AI 1.0 正式发布，属于 Java 开发者的 AI 框架
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '精灵王'),
  'Spring AI 1.0 正式发布，属于 Java 开发者的 AI 框架',
  'https://jingling.im/blog/spring-ai-1-0-release-java-ai-framework',
  'Spring AI 1.0 正式发布，为Java开发者带来AI工程化解决方案，支持多种模型提供商和向量数据库，基于Spring生态系统设计原则，让AI应用开发更简单',
  '2025-05-21T22:38:28.000Z'
);
-- Post 77: 云游君的小站 - 开源项目的「死与新生」
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '云游君的小站'),
  '开源项目的「死与新生」',
  'https://www.yunyoujun.cn/posts/death-and-rebirth-of-open-source-projects',
  '<p>::: tip 背景</p>
<p>这是几个月前受司内开源办公室邀请所撰写的一篇关于开源的文章。</p>
<p>近来也收到了一些咨询开源的邮件，特在此发出，也希望能为大家参与社区/公司开源提供一些帮助。</p>
<p>其中包含了一些个人观点，可按需参考。如有谬误，欢迎指正。</p>
<p>:::</p>
<h2>导语</h2>
<p>「<strong>生存还是毁灭？</strong>」这对开源项目来说也是个问题。</p>
<blockquote>
<p>「我曾见过那些你们人类不会置信的事。我曾目睹战舰在猎户座的边缘燃起烈火，我看过 C 射线在唐怀瑟之门边际的黑暗中明灭闪耀。所有这些瞬间，都会消逝在时间之中，一如眼泪消失在雨中。正是死期。」</p>
</blockquote>
<p>许多开发者早期带着一腔热血，加入到开源社区，无私地贡献代码。<br>
只是随着时间的流逝，政治、人员变更、技术迭代等种种因素接踵而至，许多开源项目最终逃脱不了的命运便是死亡。而我们所能做的便是尽可能地延缓它的死期。</p>
<p>本文主要从作者自身视野出发，总结了一些关于项目开始与维护过程中，尽可能延长',
  '2025-05-20T00:00:00.000Z'
);
-- Post 78: 烫烫烫的记事本 - 记抓取小程序用户 Token
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '烫烫烫的记事本'),
  '记抓取小程序用户 Token',
  'https://烫烫烫的锟斤拷.top/posts/wechat-miniapp-token',
  '<h2>前言</h2>
<p>之前看到一个项目 SEU_exercise，通过使用 Cheat Engine 搜索内存来获取跑操小程序的 token 来完成自动化跑操。但那是个闭源项目，最开始上传的是使用 Pyar</p>
<br/><p>访问 <a href="https://烫烫烫的锟斤拷.top/posts/wechat-miniapp-token" target="_blank">https://烫烫烫的锟斤拷.top/posts/wechat-miniapp-token</a> 阅读全文。</p>',
  '2025-05-15T02:02:11.000Z'
);
-- Post 79: Anomie ZJU - 路过乐园
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Anomie ZJU'),
  '路过乐园',
  'https://dong2000.xyz/post/leyuanshudian/',
  '<p>偶然在小红书上刷到一家独立书店即将闭店的消息，决定在五四青年节那晚去逛一逛。</p>',
  '2025-05-08T13:43:12.000Z'
);
-- Post 80: gq's Blog - 信任的锚点与链条：从“证书信任”到“人际协作”
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'gq''s Blog'),
  '信任的锚点与链条：从“证书信任”到“人际协作”',
  'https://zgq.me/posts/chain-of-trust/',
  '---
title: "信任的锚点与链条：从“证书信任”到“人际协作”"
date: 2025-05-05T16:05:00+08:00
tags:
  - 杂谈
---

近年来感觉我自身在知识体系方面的积累正逐步走向健壮，但到“信任与价值传递”的视角，面对信息的真真假假、社会的复杂，总感觉好像少了一些判断原则。我惯常的做法是习惯了单打独斗，避免和外界有过多的直接接触，但其实这里会有一些拧巴之处，人毕竟精力有限，我们是无法避免要把一部分的事务托付给他人代以完成。

但就是说，哪些是可以托付的、哪些不能托付，其实会有很多迷茫所在。这样的迷茫具体来说有很多，可以探讨到一些偏向于哲学、社会学的话题。尤其是到了这自媒体泛滥、信息爆炸的时代，形形色色的博主，甚至许多内容直接由 AI 生成而未作确认，混入了更多的不确定性，让人很难判断哪些信息是可信的。

也比如说我捣鼓多年的 [0xFFFF 社区](https://0xffff.one/)、总结过许多我自身的经验，在学校时有段时间和身边朋友们尽力地去推广，仍然还是不温不火，后来慢慢地也接纳了这只是一个小众圈子；再比如说，你在工作中 leader',
  '2025-05-05T08:05:00.000Z'
);
-- Post 81: 精灵王 - Java使用iText 7将HTML转PDF示例详解
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '精灵王'),
  'Java使用iText 7将HTML转PDF示例详解',
  'https://jingling.im/blog/java-itext7-html-to-pdf-guide',
  '使用Java和iText 7库实现HTML到PDF的转换，详细介绍核心组件、转换流程、高级功能与常见问题解决方案',
  '2025-05-02T17:38:28.000Z'
);
-- Post 82: SkyWT - Weekly #34：22 岁，我要成为有趣的大人
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SkyWT'),
  'Weekly #34：22 岁，我要成为有趣的大人',
  'https://skywt.cn/blog/weekly-34',
  '<p>本期延迟了好几周，因为这几周被迫回学校做了一件很没有意义的事情。结合最近的一些体会，我现在认为填志愿时选择 HNU 是我人生的重大错误决策之一。高考完填志愿时决策根据是「学校 &gt; 专业 &gt; 城市」，如果让我重新选择，我会按照「城市 &gt; 学校 &gt; 专业」的标准。</p>
<p>关于此，已经写了一篇文章，得等这件事结束之后再发布。</p>
<p>其实我也在思考博客周记 Weekly 的组织模式：</p>
<ul>
<li>以时间为标尺，每周固定发一篇（目前的期望模式）：必然存在一些还未完全成熟的想法和文字「赶鸭子上架」的情况，文章内容质量可能不及预期。这可能会导致博客整体文章质量降低。这种文章组织形式也可能会使文章泛泛而谈、缺乏主题和深度。</li>
<li>以内容为标尺，攒够内容再发一篇：容易带来压力和拖延，无法保证定时发布，甚至有可能陷入无限期停更。</li>
</ul>
<p>目前开始对 Weekly 的暂行调整是：不期望严格每周发布，如遇特别事件可能 gap 一周。期望全年 gap 不超过 5 周。</p>
<h2>🎈 22 岁，我要成为有趣的大人<',
  '2025-04-15T01:54:40.000Z'
);
-- Post 83: 山茶花舍 - 熟悉的四月与一些事
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '山茶花舍'),
  '熟悉的四月与一些事',
  'https://irithys.com/2025-04/',
  '因为更换服务器的原因重新打开了博客，写了一些更换服务器的经历，或许能为朋友们做一些迁移服务器时的简单参考？还有没有更新博客时的一些简单日常。总之，吕楪回来啦🎉！',
  '2025-04-12T13:12:15.000Z'
);
-- Post 84: 南雍随笔 - 尼康：影像，从心
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '南雍随笔'),
  '尼康：影像，从心',
  'https://ydjsir.com.cn/2025/04/12/cameras/',
  '<h1 id="（目前在用的相机只有尼康）"><a href="#（目前在用的相机只有尼康）" class="headerlink" title="（目前在用的相机只有尼康）"></a>（目前在用的相机只有尼康）</h1><p>YDJSIR的<strong>尼康单反</stron',
  '2025-04-12T07:13:31.000Z'
);
-- Post 85: ChrAlpha 的幻想乡 - Tailscale 配合 Mihomo(Clash.Meta) TUN/Quantumult X VPN 共存使用技巧
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'ChrAlpha 的幻想乡'),
  'Tailscale 配合 Mihomo(Clash.Meta) TUN/Quantumult X VPN 共存使用技巧',
  'https://blog.ichr.me/post/tailscale-mihomo-quantumult-x/',
  '记录 Tailscale 与 Mihomo(Clash.Meta) TUN/Quantumult X 共存使用的一些技巧，包括最小化 Tailscale 作为 Socks5 节点，以及完整 Tailscale 与代理工具共存的配置方法。',
  '2025-03-22T16:22:00.000Z'
);
-- Post 86: SkyWT - Weekly #33：我们每小时的价值
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SkyWT'),
  'Weekly #33：我们每小时的价值',
  'https://skywt.cn/blog/weekly-33',
  '<h2>🕙 我们每小时的价值</h2>
<p>我们每小时的价值都是可以计算的，但我们经常意识不到这一点。</p>
<p>根据我们在公司的薪资，能够算出公司发放给我们的「时薪」；而我们每小时真正能够产生的价值，肯定大于这个时薪，这样公司才不会亏本。这样，能够大致估算我们每小时的价值。</p>
<p>对于时间管理，这是一个截然不同的视角。如果我们能定好每小时的价值，就能决定哪些事情我们值得去做。</p>
<p>写到这里，仔细回想了一下，虽然近期才体会到这个道理，但其实这个观点在很早以前看的《纳瓦尔宝典》里就出现过了，只是当时还在学校，没能自己创造价值。果然，看过的书都是埋在心里的一颗种子，很神奇。</p>
<blockquote>
<p>给自己的时间设定价格，用时薪计算时间价值。如果用花钱的方式节省的时间价值更高，那就花钱，不要犹豫。要想真的赚到钱，先要相信你自己很值钱。</p>
<p>没有人会比你更看重自己。你要做的就是给自己设定一个极高的时薪，并坚持执行。即使在我年轻的时候，我也认为自己的时间比市场的定价更值钱，并一直遵循这个思路。</p>
<p>在做决策时，你要把时间作为一个考虑因',
  '2025-03-19T01:12:27.000Z'
);
-- Post 87: Zero - MacBook M1 Pro 双屏方案
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Zero'),
  'MacBook M1 Pro 双屏方案',
  'https://mikuac.com/macos-hp-g2/',
  '<h2 id="0x01"><a href="#0x01" class="headerlink" title="0x01"></a>0x01</h2><blockquote>
<p>Apple Silicon M1 M2 由于硬件本身限制，不适用于以下方案。可以考虑 Displa',
  '2025-03-17T01:00:00.000Z'
);
-- Post 88: 辣椒の酱 - MongoDB 索引创建方式与技巧
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '辣椒の酱'),
  'MongoDB 索引创建方式与技巧',
  'https://removeif.github.io/database/MongoDB-%E7%B4%A2%E5%BC%95%E5%88%9B%E5%BB%BA%E6%96%B9%E5%BC%8F%E4%B8%8E%E6%8A%80%E5%B7%A7.html',
  '<blockquote>
<p>摘要<br>在 MongoDB 中，索引是提高查询性能的关键工具。通过合理地创建索引，可以显著减少查询的响应时间，尤其是在处理大量数据时。<br>本文将介绍 MongoDB 中创建索引的几种方式，并分享一些索引优化的技巧。</p>
</blockquote>',
  '2025-03-09T09:05:12.000Z'
);
-- Post 89: 辣椒の酱 - MongoDB 查询优化指南：提升查询性能的实用技巧
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '辣椒の酱'),
  'MongoDB 查询优化指南：提升查询性能的实用技巧',
  'https://removeif.github.io/database/MongoDB-%E6%9F%A5%E8%AF%A2%E4%BC%98%E5%8C%96%E6%8C%87%E5%8D%97-%E6%8F%90%E5%8D%87%E6%9F%A5%E8%AF%A2%E6%80%A7%E8%83%BD%E7%9A%84%E5%AE%9E%E7%94%A8%E6%8A%80%E5%B7%A7.html',
  '<blockquote>
<p>摘要<br>MongoDB 是一个强大的 NoSQL 数据库，广泛应用于现代应用程序中。然而，随着数据量的增长和查询复杂度的提升，查询性能可能会成为瓶颈。为了确保 MongoDB 能够高效地处理查询请求，查询优化是必不可少的。本文将介绍一些常见的 MongoDB 查询优化技巧，帮助你提升查询性能。</p>
</blockquote>',
  '2025-03-02T16:05:12.000Z'
);
-- Post 90: Sukka - 为 Proxmox VE 定制 Debian Cloud 系统镜像与创建虚拟机模板
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Sukka'),
  '为 Proxmox VE 定制 Debian Cloud 系统镜像与创建虚拟机模板',
  'https://blog.skk.moe/post/proxmox-ve-customize-debian-cloud-image/',
  '最近在「家里云」里搞了个 Proxmox VE 8.3，打算在上面跑几个 VM 玩玩。而作为一名忠实的 Debian 系用户 我才不会告诉你我日用的 Linux 系统是搭载 GNOME 的 Fedora 的，所有的 VM 自然要用 Debian 了。借着制作自己的定制化 Debian Cloud Image 的机会，顺便写一篇文章出来和大家分享一下，并纠正、辟谣一下网上现有的有关教程的一些错误。 ',
  '2025-02-22T13:21:00.000Z'
);
-- Post 91: 南雍随笔 - 最常用的智能终端
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '南雍随笔'),
  '最常用的智能终端',
  'https://ydjsir.com.cn/2025/02/16/cellphone/',
  '<h1 id="智能手机！"><a href="#智能手机！" class="headerlink" title="智能手机！"></a>智能手机！</h1><p>自21世纪10年代以来，智能手机已经成为了智能生活最主要的入口。YDJSIR在此罗列并展示YDJSIR曾经或现在拥有',
  '2025-02-16T13:00:24.426Z'
);
-- Post 92: gq's Blog - 2024
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'gq''s Blog'),
  '2024',
  'https://zgq.me/posts/2024-summary/',
  '---
title: "2024"
date: 2025-02-16T14:05:00+08:00
tags:
  - 总结

---

转眼一年又过去，又到了一个回顾自我的时间，过年假期各种事情都暂放一段落时，感触也是最深。

总的来看，这一年做了不少尝试与突破，不过主线上没大的变化，总的来说处于一个稳中求进的状态，也算收获不少。

和往年一样，试着分几个主题，整理一下一年来的尝试与心得吧。

## 自我

24年的关键字大概是“收敛”，希望自身的有限能量能进一步聚焦于当下行动上。和 [@Muyun](https://muyun.work/) 聊起这个话题，他提到了“找到自己的时区”，或许也可以说，怎么样让自己的“时区”变得明确和清晰一些，在与外界的互动中避免被过多地带着跑。

比较重要的是自身价值体系方面的收敛，在去年已有一些初步的想法，今年更侧重于执行层面。面对一些事情，我需要有更明确和坚定的选择和决策，而非刻意为了外界认同，去看轻自己、迎合对方而导致内耗。相较于内耗，取而代之的是坚定自我立场、与他人的观念的互相博弈与平衡。这也要求我自身的价值体系需要足够的健壮，包括不限于对待知',
  '2025-02-16T06:05:00.000Z'
);
-- Post 93: Cysime Moflu - 影像记录：2024年我拍的毛毛（兽装）
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cysime Moflu'),
  '影像记录：2024年我拍的毛毛（兽装）',
  'https://blog.cysi.me/2025/01/furry-cons-2024/',
  '<img src="https://blog.cysi.me/2025/01/furry-cons-2024/PYKR4941.jpg" alt="Featured image of post 影像记录：2024年我拍的毛毛（兽装）" /><p>23 年下半年我在广州找了个工作，再加上 24 年开始越来越多的（商业）兽聚开始将门票提到了接近 400 元，但内容不能说很丰富吧，也只能说几乎没有。除非有朋友会去，否则我更情愿宅家打电动或者出去抽象街拍。</p>
<p>总之，24 年一整年我只去了 2 个展子，五一期间在佛山希尔顿（下次绝不去了）的 Hi Furry；以及七月底在科学城希尔顿的兽界（纯属临时起意，主要是住的近）。</p>
<h2 id="hi-furry">Hi Furry
</h2><p>Hi Furry 这几届的场地都定在佛山而不是广州，且彼时我还住在增城，从广州最东边跑到最西边属实是比较抽象和折磨。</p>
<p>这回也有朋友从成都远到而来，除了展子之前一起去城里逛了圈外，顺便把我 S5 祖传的 50mm 镜头给他了，省下来的钱当然是拿去买松下原厂 35mm（后来发现我',
  '2025-01-15T14:40:58.000Z'
);
-- Post 94: 辣椒の酱 - springboot websocket server服务端代码demo
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '辣椒の酱'),
  'springboot websocket server服务端代码demo',
  'https://removeif.github.io/java/frame/springboot-websocket-server%E4%BB%A3%E7%A0%81demo%E7%A4%BA%E4%BE%8B.html',
  '<p>后端java springboot 项目</p>
<p>简单websocket server 端代码</p>',
  '2025-01-04T18:28:26.000Z'
);
-- Post 95: Aengus Blog - 2024 年终总结
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Aengus Blog'),
  '2024 年终总结',
  'https://www.aengus.top/archives/2024-year-end-summary',
  '<img src="https://www.aengus.top/plugins/feed/assets/telemetry.gif?title=2024%20%E5%B9%B4%E7%BB%88%E6%80%BB%E7%BB%93&amp;url=/archives/2024-year-end-summary" width="1" height="1" alt="" style="opacity:0;">变化最大的一年',
  '2024-12-28T15:26:56.000Z'
);
-- Post 96: 辣椒の酱 - Github-Action自动部署Hexo博客
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '辣椒の酱'),
  'Github-Action自动部署Hexo博客',
  'https://removeif.github.io/theme/Github-Action%E8%87%AA%E5%8A%A8%E9%83%A8%E7%BD%B2Hexo%E5%8D%9A%E5%AE%A2.html',
  '<p>写好文件，提交到GitHub<br>将会自动部署Hexo 博客</p>',
  '2024-12-22T08:46:08.000Z'
);
-- Post 97: Aengus Blog - 探索 Kotlin Multiplatform 全貌：原理、现状与未来
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Aengus Blog'),
  '探索 Kotlin Multiplatform 全貌：原理、现状与未来',
  'https://www.aengus.top/archives/exploring-kotlin-multiplatform',
  '<img src="https://www.aengus.top/plugins/feed/assets/telemetry.gif?title=%E6%8E%A2%E7%B4%A2%20Kotlin%20Multiplatform%20%E5%85%A8%E8%B2%8C%EF%BC%9A%E5%8E%9F%E7%90%86%E3%80%81%E7%8E%B0%E7%8A%B6%E4%B8%8E%E6%9C%AA%E6%9D%A5&amp;url=/archives/exploring-kotlin-multiplatform" width="1" height="1" alt="" style="opacity:0;">在公司内的分享，概括介绍一下 KMP',
  '2024-11-29T10:55:56.000Z'
);
-- Post 98: ChrAlpha 的幻想乡 - 用 Conda 管理 R 环境并配合 VS Code 优化数据分析代码体验
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'ChrAlpha 的幻想乡'),
  '用 Conda 管理 R 环境并配合 VS Code 优化数据分析代码体验',
  'https://blog.ichr.me/post/conda-r-vscode/',
  '通过 Conda 管理 R 环境，并在 VS Code 中手动设置 PATH 以实现类似「Python: Select Interpreter」选择特定的 Conda 环境并激活对应位置的 R 环境。',
  '2024-11-24T18:27:04.000Z'
);
-- Post 99: ChrAlpha 的幻想乡 - Pixel SIM 里外配合实践：大陆 SIM + 外地 eSIM WiFi Calling
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'ChrAlpha 的幻想乡'),
  'Pixel SIM 里外配合实践：大陆 SIM + 外地 eSIM WiFi Calling',
  'https://blog.ichr.me/post/pixel-sim-practice/',
  '或许 Pixel 的 eSIM、WiFi Calling 等功能是除了外版 iPhone 外支持最好的设备之一。但是Pixel 的设置逻辑和功能细节有着不小的差异，甚至还夹杂了一些反直觉的操作。本文结合个人实践与经验，解析了 Pixel 在这些功能上的实现设置，无论是在国内的特殊情况，还是在跨地区使用相关。',
  '2024-11-15T20:10:25.000Z'
);
-- Post 100: fengkx - 第一次去日本旅游
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'fengkx'),
  '第一次去日本旅游',
  'https://www.fengkx.top/post/first-japan-travel/',
  '<h2 id="随口up">随口up</h2>
<p>10月去了日本旅游，团建4天假加上额外请的一天年假和周末玩了9天。上次出国还是已经是18年去的亚庇。这也是第一次去发达国家，体验非常好，要问有多好，那一句话总结就是：已经开始计划下次啥时候去了。这次坂进京出玩了大阪、京都、东京',
  '2024-11-05T11:39:37.000Z'
);
-- Post 101: gq's Blog - 同理心：跨过理工科与人文社科艺术的桥梁
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'gq''s Blog'),
  '同理心：跨过理工科与人文社科艺术的桥梁',
  'https://zgq.me/posts/empathy-bridging/',
  '---
title: "同理心：跨过理工科与人文社科艺术的桥梁"
date: 2024-11-01T19:30:20+08:00
tags:
  - 日记
---

近期在继续尝试整理一些在我过去的成长经历中给我带来启发的事物，某种意义上也是一种自我观察的状态。当然这个视角比较私人，更适合放在博客上，估计未来的博文也会是类似的方向。关于同理心与理工科、人文社科的关系，是其中的一个比较重要的认知基础。

过去的我属于是纯纯理工男，对于技术之外的事情不甚关心。也许是跨越多个圈层的成长经历使然，外加高敏感容易共情的性格，让我无法回避很多问题，也因此陷入很长时间的撕裂与内耗状态。

内耗的同时，伴随的是数年的阅读与探索，内心人文与理工的隔阂逐渐打通，回头看有种一步步走向柳暗花明的感觉。前几天刷到小红书网友的帖子，想起这个话题，顺带评论提了一嘴，再看也许可以继续展开整理一下。

一切的开始是 [Roger Antonsen](https://rantonse.org/) 老师的演讲 [《数学是理解万物之源》](https://www.bilibili.com/video/av71061834/)',
  '2024-11-01T11:30:20.000Z'
);
-- Post 102: gq's Blog - 关于 React App 业务逻辑的组织
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'gq''s Blog'),
  '关于 React App 业务逻辑的组织',
  'https://zgq.me/posts/react-app-dev/',
  '---
title: "关于 React App 业务逻辑的组织"
date: 2024-10-26T18:35:15+08:00
tags:
  - 技术
---

[上篇文章](/posts/gui-dev/) 聊到了 GUI 应用开发的一些参考原则，接下来打算结合我这几年的 React App 开发经验，总结一些在 React 生态下，一些比较好的实践经验和方法论。

一切的原则在于用尽可能少的代码及其潜在的沟通成本去实现业务，让各个模块向高内聚低耦合状态靠近；在维护者的精力分配上，可以更多聚焦于业务逻辑以及对计算机本身的思考，减少不必要的沟通摩擦。

相较于 UI 实现，本文更侧重于业务逻辑的组织上，主要讨论几个点：

1. 渲染逻辑的拆分
2. 代码文件的组织
3. 业务 Flow 的表达
4. 业务状态的划分策略

## 渲染逻辑的拆分

在 React App 的开发中，随着组件要渲染的 UI 元素的增多，写代码时很容易不自觉会延续过往写 class 组件的习惯，写一些 render function 拆分渲染逻辑。这种做法看似简洁，实则会因各个拆分后的 render f',
  '2024-10-26T10:35:15.000Z'
);
-- Post 103: SpencerWoo - Hooks in PyTorch 🪝
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SpencerWoo'),
  'Hooks in PyTorch 🪝',
  'https://spencerwoo.com/blog/hooks-in-pytorch/',
  '<p>To quote myself in a most recently yet-to-be-published paper:</p><blockquote><p>💪 The ability of deep neural networks (DNNs) come from extracting and interpreting features from the data provided.</p></blockquote><p>What we call, <em>deep features</em>, are the abstract, latent representations that are naturally derived from the training data fed into the DNN. They reflect a consistent activation or response of a layer/node within the model hierarchy to an input.</p><figure markdown> ![](../i',
  '2024-09-30T00:00:00.000Z'
);
-- Post 104: 精灵王 - Supabase 本地直连（Docker部署）
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '精灵王'),
  'Supabase 本地直连（Docker部署）',
  'https://jingling.im/blog/supabase-local-deployment-docker',
  '详细介绍如何在本地使用 Docker 部署 Supabase 服务。',
  '2024-08-17T17:33:39.000Z'
);
-- Post 105: 山茶花舍 - 我的第一辆摩托车 - 春风450CLC
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '山茶花舍'),
  '我的第一辆摩托车 - 春风450CLC',
  'https://irithys.com/me-moto-1/',
  '<p>&#x606D;&#x559C;&#xFF0C;&#x6211;&#x62E5;&#x6709;&#x4E86;&#x4EBA;&#x751F;&#x4E2D;&#x7684;&#x7B2C;&#x4E00;&#x8F86;&#x6469;&#x6258;&#x8F66;&#x2014;&#x2014;&#x1F3CD;&#xFE0F;<strong>&#x6625;&#x98CE;450CLC</strong>&#x1F60A;&#xFF01;</p><h2 id="%E7%BC%98%E7%94%B1">&#x7F18;&#x7531;</h2><p>&#x524D;&#x5E74;&#x901B;B&#x7AD9;&#xFF0C;&#x8EAB;&#x4E3A;&#x4E00;&#x4E2A;&#x4ECE;&#x6765;&#x4E0D;&#x63A5;&#x89E6;&#x6469;&#x6258;&#x8F66;&#x7684;&#x4EBA;&#x5F88;&#x5076;</p>',
  '2024-08-15T13:18:57.000Z'
);
-- Post 106: Zero - 上海电信SDN更换7015TV
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Zero'),
  '上海电信SDN更换7015TV',
  'https://mikuac.com/sh-ct-sdn/',
  '<h2 id="背景"><a href="#背景" class="headerlink" title="背景"></a>背景</h2><p>我一直在使用上海电信 1G 下行、100M 上行的的宽带。但是上海电信新装宽带给的都是 SDN 了，所有的配置都从局端下发，没有普通光猫的那',
  '2024-08-12T05:30:00.000Z'
);
-- Post 107: Zero - CNAME与MX记录冲突小记
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Zero'),
  'CNAME与MX记录冲突小记',
  'https://mikuac.com/cname-mx-conflict/',
  '<h2 id="缘起"><a href="#缘起" class="headerlink" title="缘起"></a>缘起</h2><p>花了两天时间将博客从 Typecho 迁移至 Hexo， 既然是 Hexo 那不白嫖都不行了对吧。遂将博客部署至 Github Pages，',
  '2024-08-09T10:00:00.000Z'
);
-- Post 108: 山茶花舍 - 我的一些日常 - 半年记
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '山茶花舍'),
  '我的一些日常 - 半年记',
  'https://irithys.com/2024-half/',
  '<p>&#x554A;&#xFF0C;&#x6551;&#x547D;&#xFF01;&#x6B7B;&#x53BB;&#x7684;&#x56DE;&#x5FC6;&#x5F00;&#x59CB;&#x653B;&#x51FB;&#x6211;&#x1F62D;&#xFF01;&#x6211;&#x597D;&#x50CF;&#x770B;&#x5230;&#x4E86;&#x670B;&#x53CB;&#x4EEC;&#x53D1;&#x7684;&#x90AE;&#x4EF6;&#x548C;&#x7559;&#x8A00;&#xFF0C;&#x54A6;&#xFF0C;&#x597D;&#x50CF;...&#x4F3C;&#x4E4E;...&#x6211;&#x8FD8;&#x6709;&#x4E2A;&#x535A;&#x5BA2;&#x597D;&#x4E45;&#x6CA1;&#x5199;</p>',
  '2024-08-08T12:55:29.000Z'
);
-- Post 109: 精灵王 - 设计模式系列目录
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '精灵王'),
  '设计模式系列目录',
  'https://jingling.im/blog/design-pattern-learning-directory',
  '本文提供了一个关于设计模式的系列目录，涵盖了创建型、结构型和行为型三种主要的设计模式类别。帮助大家快速理解并定位这些模式的基本概念和应用场景，以提升代码的灵活性、可维护性和降低系统耦合度。',
  '2024-08-03T11:27:33.000Z'
);
-- Post 110: Cyris - M2 MacBook Pro FF14 游戏体验
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cyris'),
  'M2 MacBook Pro FF14 游戏体验',
  'https://sound.cyris.moe/posts/ff14-on-m2-mac/',
  '<p>是谁在 Mac 上玩游戏？</p>',
  '2024-03-21T08:51:16.000Z'
);
-- Post 111: 南雍随笔 - 移动工作站体验
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '南雍随笔'),
  '移动工作站体验',
  'https://ydjsir.com.cn/2024/03/19/mobileWorkstations/',
  '<h1 id="沉稳，商务，安静，强大"><a href="#沉稳，商务，安静，强大" class="headerlink" title="沉稳，商务，安静，强大"></a>沉稳，商务，安静，强大</h1><p>出于收集和体验的癖好，YDJSIR收购了一些二手移动工作站。毕竟新机',
  '2024-03-18T16:58:32.000Z'
);
-- Post 112: 云游君的小站 - 没有红包封面，但是 AI 春联……
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '云游君的小站'),
  '没有红包封面，但是 AI 春联……',
  'https://www.yunyoujun.cn/posts/ai-sfc',
  '<h2>AI 春联</h2>
<p>开门见山，今年的整活是「AI 春联」～</p>
<ul>
<li>站点：<a href="https://ai-sfc.yunyoujun.cn/">https://ai-sfc.yunyoujun.cn/</a></li>
</ul>
<blockquote>
<p>根据你的提示词，自由地定制属于你的春联!</p>
</blockquote>
<pre><code class="language-txt">　　　　好运迎门

旧 　　　　　　　　　 新
岁 　　　　口　　　　 年
辞 　　　口　口　　　 喜
别 　　口　乐　口　　 迎
成 　　　口　口　　　 福
绩 　　　　口　　　　 气
斐 　　　　　　　　　 多
</code></pre>
<br/><p>访问 <a href="https://www.yunyoujun.cn/posts/ai-sfc" target="_blank">https://www.yunyoujun.cn/posts/ai-sfc</a> 阅读全文。</p>',
  '2024-02-09T23:35:00.000Z'
);
-- Post 113: Aengus Blog - 2023 年终总结
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Aengus Blog'),
  '2023 年终总结',
  'https://www.aengus.top/archives/2023-year-end-summary',
  '<img src="https://www.aengus.top/plugins/feed/assets/telemetry.gif?title=2023%20%E5%B9%B4%E7%BB%88%E6%80%BB%E7%BB%93&amp;url=/archives/2023-year-end-summary" width="1" height="1" alt="" style="opacity:0;">农历年终总结（bushi）',
  '2024-02-03T09:09:00.000Z'
);
-- Post 114: Good Morning - Daily Trend [01-08]
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Good Morning'),
  'Daily Trend [01-08]',
  'http://y-ichen.github.io/2024/01/08/2024-01-08%20[Daily%20Trend]%2015e37de0064e4bb78fb79debedb40727/',
  '<h1 id="【1】VideoPoet-A-Large-Language-Model-for-Zero-Shot-Video-Generation"><a',
  '2024-01-07T16:16:29.000Z'
);
-- Post 115: 山茶花舍 - 从 Hugo 迁移至 Ghost 后我都做了什么
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '山茶花舍'),
  '从 Hugo 迁移至 Ghost 后我都做了什么',
  'https://irithys.com/hugo-migrate-ghost/',
  '从Hugo迁移至Ghost后大家可能一头雾水😵‍💫？很多选项看起来真的太头痛了喂！那么不妨看看我都修改了什么🥳：Ghost中的语言、元数据、更改博客的图标、开启搜索、公告栏、订阅、邮件相关（设置事务邮件与时事通讯）、代码注入、更改Waline评论系统、新链接页面打开、修改路由与重定向等“海量”内容哦！',
  '2024-01-03T12:08:26.000Z'
);
-- Post 116: 青空之蓝 - [青空之蓝-2023] - 色彩
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '青空之蓝'),
  '[青空之蓝-2023] - 色彩',
  'https://blog.ixk.me/post/my-2023-year-end-summary',
  '🗒️前言 又到了写年终总结的时候，时间过得有点快呢，仿佛 2022 就在昨天，博客也迎来的第七个冬天，很久没有往自己的博客里发文章了，也许是工作完了只想躺床上睡觉，也许是没有以前的热情，总之我的博客也和很多友邻一样很久不曾打理了。😶‍🌫️ 按照惯例，每年会有一个主题，202...',
  '2023-12-31T23:59:00.000Z'
);
-- Post 117: MiaoTony's 小窝 - CTF | 2023 强网杯 S7 线上赛 WriteUp
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'MiaoTony''s 小窝'),
  'CTF | 2023 强网杯 S7 线上赛 WriteUp',
  'https://miaotony.xyz/2023/12/30/CTF_2023qiangwang/',
  '大概是喵喵的最后一届强网杯，今年继续和校队的师傅们一起打了下，感觉这比赛越来越卷了，而且py过于严重最后还是只能水个强网先锋，摸了。',
  '2023-12-30T15:33:33.000Z'
);
-- Post 118: 山茶花舍 - Obsidian 使用 Railway 的免费同步方案或自建部署
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '山茶花舍'),
  'Obsidian 使用 Railway 的免费同步方案或自建部署',
  'https://irithys.com/obsidian-livesync-2/',
  'Obsidian免费同步的部署方案，主要方法为通过Railway或自建的形式建立一个CouchDB数据库，并使用SyncLive插件连接数据库的方式实现。',
  '2023-12-28T10:58:41.000Z'
);
-- Post 119: Good Morning - Daily Trend [12-15]
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Good Morning'),
  'Daily Trend [12-15]',
  'http://y-ichen.github.io/2023/12/15/2023-12-15%20[Daily%20Trend]%20746e872198ac4e9986732ca946ee6a5d/',
  '<h1 id="【1】MVDream-Multi-view-Diffusion-for-3D-Generation"><a href="#【1】MVDream-Multi-view-Diffusion-for-3D-Generation" class="headerlink"',
  '2023-12-14T16:18:35.000Z'
);
-- Post 120: Good Morning - Daily Trend [12-12]
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Good Morning'),
  'Daily Trend [12-12]',
  'http://y-ichen.github.io/2023/12/12/2023-12-12%20[Daily%20Trend]%208188c6b976a9495daa564f385dfc6026/',
  '<h1 id="【1】Sequential-Modeling-Enables-Scalable-Learning-for-Large-Vision-Models"><a',
  '2023-12-11T16:18:37.000Z'
);
-- Post 121: Good Morning - Daily Trend [12-04]
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Good Morning'),
  'Daily Trend [12-04]',
  'http://y-ichen.github.io/2023/12/04/2023-12-04%20[Daily%20Trend]%206955e249abe745aa9dc053890151d4e3/',
  '<h2 id="【1】Think-before-you-speak-Training-Language-Models-With-Pause-Tokens"><a',
  '2023-12-03T16:11:28.000Z'
);
-- Post 122: Good Morning - Daily Trend [11-29]
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Good Morning'),
  'Daily Trend [11-29]',
  'http://y-ichen.github.io/2023/11/29/2023-11-29%20[Daily%20Trend]%20744dda0cdf6743a39763020f8766e5c9/',
  '<h2 id="【1】Stable-Video-Diffusion-Scaling-Latent-Video-Diffusion-Models-to-Large-Datasets"><a',
  '2023-11-28T16:15:09.000Z'
);
-- Post 123: MiaoTony's 小窝 - HomeLab | 4 GPU 硬解新境界：LXC 环境下玩转 JellyFin 核显硬解转码
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'MiaoTony''s 小窝'),
  'HomeLab | 4 GPU 硬解新境界：LXC 环境下玩转 JellyFin 核显硬解转码',
  'https://miaotony.xyz/2023/11/26/Server_HomeLab_4_GPUtranscoding/',
  '在PVE里基于LXC安装JellyFin，并利用GPU核显实现硬解加速转码。本文具体介绍了相关配置步骤，大大提升了homelab观影性能和体验感。',
  '2023-11-26T12:30:00.000Z'
);
-- Post 124: 南雍随笔 - YDJSIR的便携式计算机们
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '南雍随笔'),
  'YDJSIR的便携式计算机们',
  'https://ydjsir.com.cn/2023/11/22/spareMobileDevices/',
  '<h1 id="那些备用的-Laptop-Tablet-Pad-们"><a href="#那些备用的-Laptop-Tablet-Pad-们" class="headerlink" title="那些备用的 Laptop &#x2F; Tablet &#x2F; Pad 们~">',
  '2023-11-22T12:21:08.000Z'
);
-- Post 125: LadderOperator - 乱码不“乱”：以 WSxM 为例浅谈国外科研软件中常见的乱码问题
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LadderOperator'),
  '乱码不“乱”：以 WSxM 为例浅谈国外科研软件中常见的乱码问题',
  'https://ladderoperator.top/post/wired_character_wsxm/',
  '一、问题背景 不久前，某个群里有人问到这个问题，大概是在WSxM之类的软件里，标尺出现了一个奇怪单位： 对自己的数据比较熟悉',
  '2023-11-17T00:00:00.000Z'
);
-- Post 126: MiaoTony's 小窝 - CTF | 2023 USTC Hackergame WriteUp
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'MiaoTony''s 小窝'),
  'CTF | 2023 USTC Hackergame WriteUp',
  'https://miaotony.xyz/2023/11/05/CTF_2023Hackergame/',
  '又是一年Hackergame，今年题目难度整体偏基础好入门，给这周增添了点娱乐气息，和往年一样比赛中也学到了许多。',
  '2023-11-05T12:40:00.000Z'
);
-- Post 127: 南雍随笔 - CodeGeeX2本地部署记录
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '南雍随笔'),
  'CodeGeeX2本地部署记录',
  'https://ydjsir.com.cn/2023/10/26/CodeGeex/',
  '<h1 id="自己动手本地部署LLM！"><a href="#自己动手本地部署LLM！" class="headerlink" title="自己动手本地部署LLM！"></a>自己动手本地部署LLM！</h1><blockquote>
<p>本文所述方法很可能受时效性影响。<',
  '2023-10-26T03:09:25.000Z'
);
-- Post 128: Cysime Moflu - 逃离非洲
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cysime Moflu'),
  '逃离非洲',
  'https://blog.cysi.me/2023/09/out-of-africa/',
  '<img src="https://blog.cysi.me/2023/09/out-of-africa/jay-eshie-bPYdEoOPo2o-unsplash.jpg" alt="Featured image of post 逃离非洲" /><p>2018年8月3日，刚毕业的我还有其他几位同为应届生的同事，一同从成都辗转飞往了位于非洲南部的内陆小国马拉维。接近五年的、远在地球另一端的工作生活就此开始。</p>
<h2 id="起始">起始
</h2><p>第一年时我在马拉维的一个世界银行投资的援建项目工作。这是全世界最贫困的国家之一。项目所在地因海拔极低所以常年炎热，一到雨季又会被洪水蹂躏，但大多数人的家都只是土墙草顶，几片硬纸当作窗户；当然了，大多数家庭也没有通电，更没有自来水；来自中国的二手衣物在这里以极低的价格销售，但实际上当地人大多甚至连鞋都穿不起。即便是偏僻到如此程度的地方，这些几乎没有受过多少教育的当地人却非常精通侮辱中国人的动作（拉眼皮）和词汇（Ching-Chong）。</p>
<p>很快，我和我的其他应届生同事的新鲜感、希望对非洲发展做一点贡献的心态全都消散殆',
  '2023-09-03T15:30:00.000Z'
);
-- Post 129: MiaoTony's 小窝 - HomeLab | 3 下载观影一条龙：NASTool/JellyFin/qBittorrent 半自动化家庭影院搭建指北
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'MiaoTony''s 小窝'),
  'HomeLab | 3 下载观影一条龙：NASTool/JellyFin/qBittorrent 半自动化家庭影院搭建指北',
  'https://miaotony.xyz/2023/08/08/Server_HomeLab_3_nastools/',
  '探索如何使用NASTool、JellyFin和qBittorrent等工具搭建一个高效的半自动化家庭影院系统，实现从下载到播放的无缝体验。',
  '2023-08-08T13:30:00.000Z'
);
-- Post 130: Cysime Moflu - 影像记录：美长小猫⌈毛毛⌋
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cysime Moflu'),
  '影像记录：美长小猫⌈毛毛⌋',
  'https://blog.cysi.me/2023/06/cats-maomao-2023-06/',
  '<img src="https://blog.cysi.me/2023/06/cats-maomao-2023-06/PYUK1673.jpg" alt="Featured image of post 影像记录：美长小猫⌈毛毛⌋" /><p>毛毛是一只美短，但是是长毛。不管是人类还是AI都经常把它当成缅因或者西森。它很乖，是相机在家里最好的模特儿。</p>
<p><img src="https://blog.cysi.me/2023/06/cats-maomao-2023-06/P1000433.jpg"
width="1837"
height="1847"
srcset="https://blog.cysi.me/2023/06/cats-maomao-2023-06/P1000433_hu_3a8fa26fa48f899e.jpg 480w, https://blog.cysi.me/2023/06/cats-maomao-2023-06/P1000433_hu_f78696de2c9e0a14.jpg 1024w"
loading="lazy"
alt="逗猫棒~"
class=',
  '2023-06-24T04:06:00.000Z'
);
-- Post 131: fengkx - 在 TypeScript 中获取 constructor 类型
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'fengkx'),
  '在 TypeScript 中获取 constructor 类型',
  'https://www.fengkx.top/post/get-constructor-type-from-class-in-typescript/',
  '<h2 id="TL-DR">TL;DR</h2>
<pre class="shiki github-light" style="background-color:#fff;color:#24292e" tabindex="0"><code class="language-typ',
  '2023-06-16T23:43:18.000Z'
);
-- Post 132: MiaoTony's 小窝 - HomeLab | 2 OpenMediaVault 安装 & 硬盘直通 & 相关配置
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'MiaoTony''s 小窝'),
  'HomeLab | 2 OpenMediaVault 安装 & 硬盘直通 & 相关配置',
  'https://miaotony.xyz/2023/06/10/Server_HomeLab_2_openmediavault/',
  '大概介绍了一下 OpenMediaVault 的安装，硬盘直通，RAID 组建，LVM 配置，文件系统，文件共享，以及 OMV 里一些基本功能的使用等。',
  '2023-06-10T14:30:00.000Z'
);
-- Post 133: Aengus Blog - 透明 Activity 及生命周期探索
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Aengus Blog'),
  '透明 Activity 及生命周期探索',
  'https://www.aengus.top/archives/transparent-activity-lifecycle',
  '<img src="https://www.aengus.top/plugins/feed/assets/telemetry.gif?title=%E9%80%8F%E6%98%8E%20Activity%20%E5%8F%8A%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F%E6%8E%A2%E7%B4%A2&amp;url=/archives/transparent-activity-lifecycle" width="1" height="1" alt="" style="opacity:0;">聊聊透明Activity遇到的坑',
  '2023-06-06T03:35:00.000Z'
);
-- Post 134: 辣椒の酱 - 后续计划
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '辣椒の酱'),
  '后续计划',
  'https://removeif.github.io/think/%E5%90%8E%E7%BB%AD%E8%AE%A1%E5%88%92.html',
  '<h3 id="TODO"><a href="#TODO" class="headerlink" title="TODO"></a>TODO</h3><ul>
<li>重构博客</li>
<li>优化代码</li>
<li>坚持写优质博文</li>
</ul>
',
  '2023-04-28T12:44:10.000Z'
);
-- Post 135: LadderOperator - 老旧ITECH电源设备远程控制丐版方案
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LadderOperator'),
  '老旧ITECH电源设备远程控制丐版方案',
  'https://ladderoperator.top/post/alternative_itech_serial/',
  '查看接口 老旧的ITECH设备背后往往并未配备USB、RS232、488接口， 只有一个DB9接口。注意这个接口形状确实是和',
  '2023-04-07T00:00:00.000Z'
);
-- Post 136: Aengus Blog - Android App 迁移 KMM 实践
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Aengus Blog'),
  'Android App 迁移 KMM 实践',
  'https://www.aengus.top/archives/android-app-kmm-migration',
  '<img src="https://www.aengus.top/plugins/feed/assets/telemetry.gif?title=Android%20App%20%E8%BF%81%E7%A7%BB%20KMM%20%E5%AE%9E%E8%B7%B5&amp;url=/archives/android-app-kmm-migration" width="1" height="1" alt="" style="opacity:0;">一篇迟到的 KMM 体验文档。',
  '2023-04-03T07:32:00.000Z'
);
-- Post 137: fengkx - 用 Next.js 重写 Hexo 博客
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'fengkx'),
  '用 Next.js 重写 Hexo 博客',
  'https://www.fengkx.top/post/rewrite-blog-with-next/',
  '在本篇文章中，作者讲述了如何使用 Next.js 13 的 React Server Component 来重构博客，并解释了 Server Component 如何帮助减少客户端代码包大小以及 Server Component 和 Client Component 之间的边界。此外，作者还介绍了如何集成 Hexo，并提供了一些有关 CSS 方案选择的讨论。',
  '2023-03-12T11:03:10.000Z'
);
-- Post 138: LadderOperator - 基于LabVIEW与SeaTable实现的简易实验室监测方案
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LadderOperator'),
  '基于LabVIEW与SeaTable实现的简易实验室监测方案',
  'https://ladderoperator.top/post/seatable_for_instrument/',
  '如果你有一台需要日常维持超高真空或低温之类的设备，你前一夜回去的时候还无比正常，第二天来到实验室时却发现“未知的神秘力量',
  '2023-02-01T00:00:00.000Z'
);
-- Post 139: 云游君的小站 - 家·烟花·红包封面
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '云游君的小站'),
  '家·烟花·红包封面',
  'https://www.yunyoujun.cn/posts/home-firework-red-bag',
  '<blockquote>
<p>🏠家，🎆烟花和🧧红包封面<br>
原文：<a href="https://mp.weixin.qq.com/s/XwyrAQ0cQBPaLSgQQLfXWw">https://mp.weixin.qq.com/s/XwyrAQ0cQBPaLSgQQLfXWw</a></p>
</blockquote>
<p>新的一年即将到来。</p>
<blockquote>
<p>但是……很不幸，时间的流逝永远不会停止。<br>
时光如箭，你的过去在不停增多，你的未来在不断减少，未知的可能性只会越来越少，而无法改变的后悔在累积如山。<br>
你明白了吗？</p>
</blockquote>
<br/><p>访问 <a href="https://www.yunyoujun.cn/posts/home-firework-red-bag" target="_blank">https://www.yunyoujun.cn/posts/home-firework-red-bag</a> 阅读全文。</p>',
  '2023-01-21T06:08:46.000Z'
);
-- Post 140: SpencerWoo - Spencer's Changelog for 2022 🥫
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'SpencerWoo'),
  'Spencer''s Changelog for 2022 🥫',
  'https://spencerwoo.com/blog/changelog-2023/',
  '<p>It has been a while since my last update. And to be fair, 2022 was a very boring and event-less year for me. Strictlockdowns and quarantines in mainland China made it impossible to do anything and be anywhere. I spent maybe 6 to 8month of the 12 months in 2022 basically stuck at home. So, yeah, <strong>what a f*cked up year</strong>.</p>',
  '2023-01-08T00:00:00.000Z'
);
-- Post 141: 青空之蓝 - [青空之蓝-2022] - 平静
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '青空之蓝'),
  '[青空之蓝-2022] - 平静',
  'https://blog.ixk.me/post/my-2022-year-end-summary',
  '前言 一年又匆匆的过了，按照传统，到了该更新年终总结的时候了 😄。博客已经长草一年了，这一年内没有发过一篇文章，不过倒是在 6 月份更新了一波博客主题，所以也就有了现在这个非常简单的界面。 2022 年的主题是  平静 ，今年内没有发生什么大事件，在个人项目和博客上也没有什么更...',
  '2022-12-31T06:53:00.000Z'
);
-- Post 142: 冰凌胧月的小窝 - 关于 Quick Bookmark Cleaner 浏览器插件的后门
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '冰凌胧月的小窝'),
  '关于 Quick Bookmark Cleaner 浏览器插件的后门',
  'https://imiku.me/2022/12/10/fuck-quick-bookmark-cleaner.html/',
  '<p>起因是这样的，2022年12月10日下午的时候，发现用谷歌搜索的所有东西都被重定向到了必应的结果，根据我多年的不当人写后门的经验来看，肯定是被某个插件或者脚本劫持了。</p>
<p>在谷歌浏览器中搜索 <code>colorpop</code> 时，会被重定向到 <code>http://bingsq.com/rd.php?q=colorpop&amp;n=8004</code> 这个结果，然后自动跳转到了必应的搜索结果</p>
<p>先禁用了暴力猴的所有脚本，发现不管用，可以几乎肯定是 Chrome 插件的问题了，然后打开开发者工具开始抓包，开启日志记录功能，看看是哪个傻逼插件写了后门。</p>
<p>
</p>
<p>结果，果然发现了一个名为 <code>injected_content.js</code> 奇怪的js文件被注入到了页面中，内容如下</p>
<div class="highlight"><div style="color:#f8f8f2;background-color:#282a36;-moz-tab-size:4;-o-tab-size:4;tab-siz',
  '2022-12-10T13:07:48.000Z'
);
-- Post 143: 云游君的小站 - 云乐坊工作室的成立与缘起与有关的话
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '云游君的小站'),
  '云乐坊工作室的成立与缘起与有关的话',
  'https://www.yunyoujun.cn/posts/the-birth-of-yunlefun',
  '<h2>起因</h2>
<p>18 年春天的某个午后，我突发奇想买下了 <a href="https://yunle.fun">yunle.fun</a> 这个域名。<br>
并在站点编年史中如下记载：</p>
<blockquote>
<p>又注册了个新域名：yunle.fun（云乐坊），以后要是能开工作室就用这个名字吧(笑)。</p>
</blockquote>
<p>也就是说从很久以前，我的脑海中便充斥着一些不切实际的幻想，比如希望拥有一个属于自己的工作室。</p>
<p>而究其根本原因，无非是想要不用上班、财富自由之类的老生常谈。</p>
<blockquote>
<p>亦与诸君共勉。</p>
</blockquote>
<p>仔细想来，当初决定搭建博客，也无外乎此。<br>
「超自然9人组」动画中的我闻优太，用奇怪的网名经营着一个超自然博客，并一心想着靠联盟行销致富。<br>
于是，伴随动画播出的 16 年年底，「云游君的小站」诞生了。</p>
<p>只是时至今日，虽然博客逐渐有了一些访问量，但与最初的动机似乎仍然有着道难以逾越的鸿沟。</p>
<br/><p>访问 <a h',
  '2022-11-09T23:59:59.000Z'
);
-- Post 144: Cyris - 8424的圆舞曲
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cyris'),
  '8424的圆舞曲',
  'https://sound.cyris.moe/posts/marry-me/',
  '<p>昨天求婚成功啦！记录下求婚的那些事～</p>',
  '2022-08-07T07:27:50.000Z'
);
-- Post 145: Zero - RHEL 7.9 从 GRUB 引导启动
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Zero'),
  'RHEL 7.9 从 GRUB 引导启动',
  'https://mikuac.com/rhel79-grub-boot/',
  '<h2 id="0x01-序"><a href="#0x01-序" class="headerlink" title="0x01 序"></a>0x01 序</h2><blockquote>
<p>此文档适用于 RHEL 7.x 与 CENTOS 7.x 版本，其它版本未经过验证',
  '2022-07-14T21:40:00.000Z'
);
-- Post 146: fengkx - 针对项目定制的 ESLint Rules
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'fengkx'),
  '针对项目定制的 ESLint Rules',
  'https://www.fengkx.top/post/eslint-rules-specific-to-your-project/',
  '<p>现在写 JavaScript 项目，ESlint 可以说是标配。静态检查虽不执行代码，主要检查 AST 和文件路径，但也可以检查出很多东西。比如说 import 的文件是否真是存在，React Hooks 用法有没有问题等等。有时候一些项目写法上有特殊的限制，也可以通过 e',
  '2022-06-26T23:26:12.000Z'
);
-- Post 147: 冰凌胧月的小窝 - 解决原神在海外下载慢的问题
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '冰凌胧月的小窝'),
  '解决原神在海外下载慢的问题',
  'https://imiku.me/2022/06/21/solve-the-slow-download-speed-of-the-genshin-in-foreign.html/',
  '<p>在海外玩国服原神真折磨人，游戏下载速度几百K，要下载完本体需要好几天，特此研究出了这个解决办法。</p>
<h2 class="group " id="找到游戏包的下载地址"
>找到游戏包的下载地址<a href="#%e6%89%be%e5%88%b0%e6%b8%b8%e6%88%8f%e5%8c%85%e7%9a%84%e4%b8%8b%e8%bd%bd%e5%9c%b0%e5%9d%80"
><i class="eva eva-link ml-3 align-middle text-theme opacity-0 transition ease-in-out group-hover:opacity-100"></i></a
></h2>
<p>下载原神启动器以后点击<strong>获取游戏</strong>按钮，然后关闭启动器。</p>
<p>打开启动器目录，找到 <code>logs</code> 这个目录，里面会有一堆以 <code>.log</code> 结尾的文件。</p>
<p>找到类似下面这样的字段。</p>
<div class="highlight"><d',
  '2022-06-21T16:04:05.000Z'
);
-- Post 148: LadderOperator - 使用Box云盘（Seafile API）实现实验室数据单向备份
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LadderOperator'),
  '使用Box云盘（Seafile API）实现实验室数据单向备份',
  'https://ladderoperator.top/post/seafile_uploader/',
  '实验室中，仪器采集的数据需要定期备份。 传统的备份方式，以我们实验室来说，曾经用过移动硬盘冷备份，也用过DVD光盘刻录。但',
  '2022-05-21T00:00:00.000Z'
);
-- Post 149: 冰凌胧月的小窝 - 【Luna】一个简洁，快速，SEO友好的 HUGO 主题
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '冰凌胧月的小窝'),
  '【Luna】一个简洁，快速，SEO友好的 HUGO 主题',
  'https://imiku.me/2022/05/03/hugo-theme-luna.html/',
  '<p>
</p>
<blockquote class="quote relative pl-10 text-gray-500 dark:text-gray-400"><p>一个简洁，快速，SEO友好的 HUGO 主题</p></blockquote>
<p>鸽了大半年，终于🕊上线了，这是一个废了不少头发才开发出来的主题，集性能、美观、SEO于一体的主题，并且支持<strong>文章加密</strong>和 GitHub Actions 自动部署，你只需要安心写博客就行。</p>
<p>开发的过程中~参考~了不少主题和代码，求各位大佬来个🌟吧~</p>
<div class="github my-4 rounded border p-4 dark:border-darkBorder">
<div class="flex items-center text-xl">
<i class="eva eva-github mr-2"></i>
<a class="after:hidden" href="https://github.com/Ice-Hazymoon/hugo-theme-lu',
  '2022-05-03T21:30:37.000Z'
);
-- Post 150: Zero - Hardware upgrade for 2022
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Zero'),
  'Hardware upgrade for 2022',
  'https://mikuac.com/hardware-upgrade2022/',
  '<h1 id="Upgrade-Parts"><a href="#Upgrade-Parts" class="headerlink" title="Upgrade Parts"></a>Upgrade Parts</h1><ul>
<li>Power supply cables:',
  '2022-05-01T22:14:00.000Z'
);
-- Post 151: 冰凌胧月的小窝 - 西班牙生活记录（持续更新）
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '冰凌胧月的小窝'),
  '西班牙生活记录（持续更新）',
  'https://imiku.me/2022/04/06/foto-de-espana.html/',
  '
<h2 class="group " id="300-欧全包的房间"
>300 欧全包的房间<a href="#300-%e6%ac%a7%e5%85%a8%e5%8c%85%e7%9a%84%e6%88%bf%e9%97%b4"
><i class="eva eva-link ml-3 align-middle text-theme opacity-0 transition ease-in-out group-hover:opacity-100"></i></a
></h2>
<div class="gallery-box">
<p>
</p>
</div>
<h2 class="group " id="整点薯条"
>整点薯条<a href="#%e6%95%b4%e7%82%b9%e8%96%af%e6%9d%a1"
><i class="eva eva-link ml-3 align-middle text-theme opacity-0 transition ease-in-out group-hover:opacity-100"></i></a
></h2>
<div cl',
  '2022-04-06T18:28:36.000Z'
);
-- Post 152: 龙场茶室 - 转行做程序员，难吗？
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '龙场茶室'),
  '转行做程序员，难吗？',
  'https://blog.peterchen97.cn/posts/03-%E8%BD%AC%E8%A1%8C%E5%81%9A%E7%A8%8B%E5%BA%8F%E5%91%98%EF%BC%8C%E9%9A%BE%E5%90%97%EF%BC%9F/',
  '关于程序员这个职业，之前身边好几位朋友都有人问到一些相关的问题，比如：我想转行做程序员，这种三个月让我找到工作的培训班可以吗？（职业门槛）',
  '2022-03-28T16:00:00.000Z'
);
-- Post 153: 龙场茶室 - 是不是物品都是越贵越好
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '龙场茶室'),
  '是不是物品都是越贵越好',
  'https://blog.peterchen97.cn/posts/02-%E6%98%AF%E4%B8%8D%E6%98%AF%E7%89%A9%E5%93%81%E9%83%BD%E6%98%AF%E8%B6%8A%E8%B4%B5%E8%B6%8A%E5%A5%BD/',
  '最近有几件事情让我对一个看法产生了怀疑，那就是：是不是越贵的东西就越好？',
  '2022-03-24T16:00:00.000Z'
);
-- Post 154: 龙场茶室 - New Start
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '龙场茶室'),
  'New Start',
  'https://blog.peterchen97.cn/posts/01-new-start/',
  '其实记不起上次去写自己的博客是什么时候了，中间断断续续的想写过很多东西，但是一直都不能坚持下来',
  '2022-03-23T16:00:00.000Z'
);
-- Post 155: Cyris - 三月随手记
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cyris'),
  '三月随手记',
  'https://sound.cyris.moe/posts/2022-march/',
  '<div type="html"/>',
  '2022-03-12T02:13:45.000Z'
);
-- Post 156: 龙场茶室 - 2021 年终总结 - 敬胜怠，义胜欲，知其雄，守其雌
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '龙场茶室'),
  '2021 年终总结 - 敬胜怠，义胜欲，知其雄，守其雌',
  'https://blog.peterchen97.cn/posts/00-2021%E5%B9%B4%E7%BB%88%E6%80%BB%E7%BB%93/',
  'Hello 小伙伴们新年好，在这里给大家拜个晚年拉。今年这一期年终总结着实是命运多舛，比以往时候来的更晚一些。',
  '2022-03-06T00:00:00.000Z'
);
-- Post 157: 冰凌胧月的小窝 - 西班牙签证记录
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '冰凌胧月的小窝'),
  '西班牙签证记录',
  'https://imiku.me/2022/02/18/visa-for-spain.html/',
  '<p>前前后后弄了三四个月，本以为签证会挂，结果居然通过了，就在此记录一下心路历程吧，我是在<strong>北京使馆</strong>签的，<strong>一年硕士留学签</strong>，我全程都是自己交材料自己办理，包括取签证也没有找中介而是咸鱼找了个跑腿帮我取的，省了不少中介费，如果有相似情况的可以参考一下。使馆不同要的资料和要求都不同，请一定要多询问。</p>
<h2 class="group " id="签证准备"
>签证准备<a href="#%e7%ad%be%e8%af%81%e5%87%86%e5%a4%87"
><i class="eva eva-link ml-3 align-middle text-theme opacity-0 transition ease-in-out group-hover:opacity-100"></i></a
></h2>
<p>因为我是一年的学生签证，所以准备的资料比较多，具体可以向大使馆发送邮件到北京大使馆（cog.pekin.vis@maec.es）询问，可别小看这个邮箱，你在签证期间遇到的任何问题都可以发邮件进行询问，我办签',
  '2022-02-18T13:36:35.000Z'
);
-- Post 158: Cyris - 城市今天下雪
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cyris'),
  '城市今天下雪',
  'https://sound.cyris.moe/posts/2022-first-snow/',
  '<div type="html"/>',
  '2022-02-07T11:07:04.000Z'
);
-- Post 159: 云游君的小站 - 聊聊四元数与万向锁及其实际意义
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '云游君的小站'),
  '聊聊四元数与万向锁及其实际意义',
  'https://www.yunyoujun.cn/posts/quaternion-and-spatial-rotation',
  '<p>在使用 Babylon 写 <a href="https://vrm.advjs.org/">ADV.JS VRM 模型编辑器</a> 的人物骨骼旋转动画的时候，我发现几乎所有的骨骼旋转均使用四元数（Quaternion）实现。</p>
<p>于是我便打算好好了解一下相关的内容，但是网上搜到的不少帖子比如 Unity 欧拉角的旋转顺序都是互相矛盾的，导致自己也不知道相信哪个为好，决定还是自己实验下。</p>
<p>同时写了下自己对四元数和万向锁的直观理解，希望能对有兴趣了解这方面的后来者有所帮助。</p>
<p>因为有不少随手的截图和公式，所以就先放在了语雀上。也欢迎随时勘误！</p>
<br/><p>访问 <a href="https://www.yunyoujun.cn/posts/quaternion-and-spatial-rotation" target="_blank">https://www.yunyoujun.cn/posts/quaternion-and-spatial-rotation</a> 阅读全文。</p>',
  '2022-01-16T01:59:12.000Z'
);
-- Post 160: 青空之蓝 - [青空之蓝-2021] - 远望
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '青空之蓝'),
  '[青空之蓝-2021] - 远望',
  'https://blog.ixk.me/post/my-2021-year-end-summary',
  '前言 又到了一年一度的年终总结时间，2021 还剩不到几个小时就要结束了（或许我写完已经结束了 🤣），最近空闲的时间都在整 depker 这个新的部署方案，所以从 25 号拖到了现在。 距离上次更新博客已经是 4 个月前了，今年算是有趣又枯燥的一年。一年中有一半以上的时间都在忙...',
  '2021-12-31T16:34:00.000Z'
);
-- Post 161: Cyris - 我的 2021
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'Cyris'),
  '我的 2021',
  'https://sound.cyris.moe/posts/my-2021/',
  '<p>希望能给百年后人们的考古带来一点帮助。</p>',
  '2021-12-31T02:25:36.000Z'
);
-- Post 162: LadderOperator - 从 Wordpress 切换至 Hugo
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LadderOperator'),
  '从 Wordpress 切换至 Hugo',
  'https://ladderoperator.top/post/hello_hugo/',
  '由于某次 Wordpress 差点崩没了的经历，细思恐极，觉得文章应该有个比较好的备份模式。故 （花了快半年） 决定切换到 Hugo！ 这也是我的第',
  '2021-12-13T00:00:00.000Z'
);
-- Post 163: 青空之蓝 - 浅谈垃圾回收
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '青空之蓝'),
  '浅谈垃圾回收',
  'https://blog.ixk.me/post/talking-about-garbage-collection',
  '前言 又是一篇计划了很久的文章，7 月初就打算写了，一直拖到了现在。前不久更新了一波博客，把博客的数据源换成了 CMS，趁机试试看好不好用。🤣 什么是垃圾回收？ 垃圾回收（Garbage Collection，GC） ，顾名思义就是释放垃圾占用的空间。垃圾即无用的内存，垃圾回收...',
  '2021-08-08T08:59:00.000Z'
);
-- Post 164: 宇宙よりも遠い場所 - React 带属性 + Redux connect() 的高阶组件正确 Typing 方式
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '宇宙よりも遠い場所'),
  'React 带属性 + Redux connect() 的高阶组件正确 Typing 方式',
  'https://kirainmoe.com/blog/post/correct-way-to-type-react-hoc-with-ownprops-and-redux-connect/',
  '考虑这样的一个场景。我们有一个高阶组件 WrappedComponent，它接受一个属性类型为 BaseProps 的组件 Component，然后做以下事情： WrappedComponent 的',
  '2021-07-26T14:25:28.000Z'
);
-- Post 165: 青空之蓝 - 浅谈泛型擦除
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '青空之蓝'),
  '浅谈泛型擦除',
  'https://blog.ixk.me/post/talking-about-type-erasure',
  '前言 泛型是 Java 5 引入的一个新特性，现在的高级语言基本也都支持泛型了。泛型本质上是将类型作为参数，以提供类型检查和避免不必要的类型转换。具体关于类型的本篇文章就不再说明了，具体可以自行查找。 什么是泛型擦除？ 在 Java 中的泛型，常常被称为伪泛型。之所以这么说是因为...',
  '2021-07-01T00:00:00.000Z'
);
-- Post 166: 龙场茶室 - 2020 年终总结 - 问渠那得清如许，为有源头活水来
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '龙场茶室'),
  '2020 年终总结 - 问渠那得清如许，为有源头活水来',
  'https://blog.peterchen97.cn/posts/00-2020%E5%B9%B4%E7%BB%88%E6%80%BB%E7%BB%93/',
  '半亩方塘一鉴开，天光云影共徘徊。问渠那得清如许?为有源头活水来',
  '2021-01-24T00:00:00.000Z'
);
-- Post 167: 宇宙よりも遠い場所 - 2020 ICPC Xiaomi (Qualification Round 1) - Part Solutions
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '宇宙よりも遠い場所'),
  '2020 ICPC Xiaomi (Qualification Round 1) - Part Solutions',
  'https://kirainmoe.com/blog/post/2020-icpc-xiaomi-contest-qualification-round-1/',
  '<p>Link: <a href="https://ac.nowcoder.com/acm/contest/7501">https://ac.nowcoder.com/acm/contest/7501</a></p>',
  '2020-10-26T14:57:15.000Z'
);
-- Post 168: 宇宙よりも遠い場所 - Linux 下使用 netplan 配置多网卡
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '宇宙よりも遠い場所'),
  'Linux 下使用 netplan 配置多网卡',
  'https://kirainmoe.com/blog/post/configure-multi-nic-on-linux-using-netplan/',
  '<p>情况大概是这样的：最近在试 CLE 的新服务器，需要把两个弹性 IP 绑到一个 VM 的两张网卡上；给 VM 添加了两张网卡之后发现入网并不能通，一通骚操作之后<s>连出网都通不了了</s>……</p>',
  '2020-10-15T05:47:47.000Z'
);
-- Post 169: 宇宙よりも遠い場所 - 【从零开始的 NLP】理论篇 L1. 分类和向量空间
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '宇宙よりも遠い場所'),
  '【从零开始的 NLP】理论篇 L1. 分类和向量空间',
  'https://kirainmoe.com/blog/post/deeplearning-ai-nlp-lesson-1/',
  '<blockquote>
<p>前言：为了整活好玩的东西，没有数学功底和深度学习经验的萌新开始学 NLP 了！<br />
看的课程链接是这个：<a href="https://www.deeplearning.ai/natural-language-processing-specialization/">https://www.deeplearning.ai/natural-language-processing-specialization/</a><br />
然后呢，大概会不定期更新一下学的过程中记下来的一些东西。顺便安利一下 <a href="https://notion.so">Notion</a> 这个笔记软件，实在是太好用啦。</p>
</blockquote>',
  '2020-07-11T16:58:58.000Z'
);
-- Post 170: 宇宙よりも遠い場所 - 【学习笔记】线性规划的单纯形算法
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '宇宙よりも遠い場所'),
  '【学习笔记】线性规划的单纯形算法',
  'https://kirainmoe.com/blog/post/simplex-algorithm/',
  '<p>单纯形算法？干啥用的？它可以用于求解多维线性规划问题。</p>',
  '2020-02-11T10:35:07.000Z'
);
-- Post 171: LarryZhao - 修了一个发生在 Safari 4.1.3 的 Bug
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LarryZhao'),
  '修了一个发生在 Safari 4.1.3 的 Bug',
  'http://larryzhao.com/2015/01/09/fix-bug-in-safari-413',
  '<p>前两天有个用户报告说他在简书无法写作了，就联系上了他帮他检查。他的问题非常奇怪，几乎没有发现有其他人有同样的问题，同时他也在用 Safari 4.1.3，在 Mac OSX Tiger 上，我也找不到相应的测试机来重现。联系上他之后，我发现他算是简书的一个重度作者，已经在简书创作了 10 万字，所以我很想帮他解决这个问题。</p>
<p>先简单说一下这个问题的背景，简书程序的写作部分是一个 Javascript 的 Single Page Application。为了保证用户如果开了两个编辑界面的情况下，不会互相覆盖内容；简书每次请求写作编辑器页面的时候，都会从服务端生成一个版本号给到前端的写作编辑器，保证只让拥有最新版本号的编辑器保存文章内容到服务端。</p>
<p>那么在这个用户浏览器里的问题是，每次打开写作界面，当整个 JS Application 初始化完成后会多发一个 GET Request 到写作编辑器的页面 url，这样话就导致了服务端的版本号更新，但是客户端 JS Application 里没有。所以在他的浏览器里，JS App 里的版本号永远旧于服务端的，以致于',
  '2015-01-09T03:54:00.000Z'
);
-- Post 172: LarryZhao - 只是一个测试
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LarryZhao'),
  '只是一个测试',
  'http://larryzhao.com/2014/10/10/test-jianshu-widget',
  '<p><div class="jianshu-card" data-width="300px" data-card-type=''user'' data-slug=''uRpjfE''></div></p>
<script src="http://assets.jianshu.io/javascripts/widget.js"></script>',
  '2014-10-10T08:08:00.000Z'
);
-- Post 173: LarryZhao - 苹果天才吧维修记(续)
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LarryZhao'),
  '苹果天才吧维修记(续)',
  'http://larryzhao.com/2013/12/18/apple-genius-bar-cont',
  '<p>相信看过我前一篇博客<a href="http://larryzhao.com/2013/12/13/apple-genius-bar/">《苹果天才吧维修记》</a>的朋友，都知道我在 2013.12.06 将我的一台 Macbook Pro 送进上海浦东国金中心 Apple Store 天才吧进行维修。</p>
<p>当时天才吧上确定了三个建议维修的要点，都在给我的回单上写很清楚：</p>
<ul>
<li>某一个USB接口供电不足，建议更换主板。</li>
<li>键盘上的回车键裂了，更换。</li>
<li>抹除所有数据并且重新安装 OS X （这个是我主动提出的）。</li>
</ul>
<p>在 2013.12.15 日晚上我接到电话说我电脑修好了，叫我去取，我还挺开心的。</p>
<p>第二天礼拜一，我就提前下班去苹果店拿货。天才吧等待拿货的人也不多，我前面大概有两位，但是符合预期的是我还是等了半个小时，一位天才才把我的电脑从里面拿出来给我检查。</p>
<p>因为后面订了饭店要跟老婆去吃饭，本来我其实是挺放心的，没准备检查，准备拿了就走的，天才说了三次「先生请检查',
  '2013-12-18T10:45:00.000Z'
);
-- Post 174: LarryZhao - 苹果天才吧维修记
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LarryZhao'),
  '苹果天才吧维修记',
  'http://larryzhao.com/2013/12/13/apple-genius-bar',
  '<blockquote>
<p>想说在前面的是我并不是一个果粉，在感情上对苹果没有任何特殊想法，但是我一直觉得苹果的东西做的的确是很好，近年来一直都在用苹果的各种设备。但是就在今年，两次有幸需要进 Apple Store 到高大上的 Genius Bar 保修，但整个过程让我非常难受。让我觉得自从对服务有认知以来，这是我享受到最差的服务。我在银行排队和去医院看病也没有觉得这么痛苦，而且至少到了之后取号排队，虽然队伍可能很长，但一切是可预测的，你知道如果你越早去，那么你会越早得到服务。而去苹果天才吧，这是不可知的，它必须提前预约，但普通人是预约不到的，所有你能做的也就是去了等，但是就算去的早也不一定能被服务到。另外下面提到的见闻都发生在上海。</p>
</blockquote>
<h4 id="1-ipad-iphone-">1. iPad / iPhone 是不可能预约到的</h4>
<p>苹果 iPhone 维修可以当天取机的体验我觉得是非常不错的，但是预约体验绝对可以让你呕血三升，首先 iPhone/iPad 的预约是不可能预约到的。如果你的确在苹果官网经历了艰难险阻最终终于抵达了',
  '2013-12-13T06:30:00.000Z'
);
-- Post 175: LarryZhao - 炒与被炒
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'LarryZhao'),
  '炒与被炒',
  'http://larryzhao.com/2013/10/09/fired-and-being-fired',
  '<p><em>译自 <a href="http://philosophically.com">Vibhu Norby</a> 的博文 <a href="http://philosophically.com/firing-and-being-fired">Firing and being fired</a></em></p>
<p>我始终记得，我在毕业后的第一份工作中被辞退时的每一个细节。我的经理把我和我们的工程总监带到一个会议室，然后说道：“我们给你带来了一些坏消息，我们不得不让你离开了。其实从最开始，你和公司的文化就不是最契合。我们让你离开并不是因为你不是一个好程序员，只是这里并不适合你。我很抱歉。”</p>
<p>听完这段话，那些刚毕业时害怕失败和无法在硅谷成为一名够格的软件工程师的恐惧感在不到三十秒内凶猛袭来；还有我过去七个月内的工作、没有做完的项目、已经建立了关系的用户、同事之间的友谊 ---- 似乎这一切都虚度了。</p>
<p>我没有被允许再回到我的办公室，在被护送出大楼的一路上我都在和泪水做着斗争。我在停车场呆坐了许久，考虑着是不是该到别的地方去，去做一些更容易的工作，或',
  '2013-10-09T15:00:00.000Z'
);
