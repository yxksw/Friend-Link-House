-- Posts sync script
-- Generated on 2026-04-04T04:29:40.336Z
-- Total blogs: 4
-- Posts per blog: 5
-- Total posts to sync: 20

-- Post 1: 张洪Heo - OpenClaw喧嚣过后，我最终选择了QClaw
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪Heo'),
  'OpenClaw喧嚣过后，我最终选择了QClaw',
  'https://blog.zhheo.com/p/bublpdof.html',
  '这篇文章介绍了作者从早期探索到最终选择腾讯QClaw作为主力AI助手的心路历程。作者曾是Coze用户，因长任务和实体设备操作的局限性转而尝试各种OpenClaw方案，最终锁定QClaw。其核心推荐理由为：免费且Token充足、支持微信接入、安装便捷。最终促使作者下定决心的关键在于"UU远程"——可远程操控Mac且支持盒盖不休眠，让龙虾在后台稳定运行。文章后半部分总结了龙虾的核心应用场景：每日签到等琐碎任务自动化、超长信息收集任务（如整理某领域抖音博主表格）、跨平台搜索skill迁移等，并推荐"UU远程+QClaw"组合作为完整解决方案。',
  '2026-04-02T07:13:58.000Z'
);
-- Post 2: 张洪Heo - 洪绘存图发布：保存浏览器图片为指定格式、提取网页所有图片、屏幕截图插件
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪Heo'),
  '洪绘存图发布：保存浏览器图片为指定格式、提取网页所有图片、屏幕截图插件',
  'https://blog.zhheo.com/p/drqm39ob.html',
  '这篇文章介绍了作者因常用图片保存插件被检测为恶意软件而卸载后，自行开发了一款名为《洪绘存图》的浏览器插件。该插件集成了存图、抓图、截图三大功能，成为三合一工具。作者展示了多张插件界面截图，展示了从初步开发到最终完善的过程。这个自研插件不仅解决了作者的存图需求，还通过不断迭代优化，将多个功能整合在一起，提供了一个安全可靠的图片保存解决方案。',
  '2026-03-29T06:41:52.000Z'
);
-- Post 3: 张洪Heo - 洪绘星空发布：一个值得逛的博客友链朋友圈
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪Heo'),
  '洪绘星空发布：一个值得逛的博客友链朋友圈',
  'https://blog.zhheo.com/p/iu5f3hvj.html',
  '这篇文章介绍了博客在社交媒体和AI冲击下面临的衰落现状，以及作者对博客文化的坚守。文章指出，虽然写博客的人越来越少，但作者仍以记录生活和思考为目的坚持博客写作。为了解决博客互动不足的问题，作者重新开发了"洪绘星空"独立站，通过iframe方式展示友链文章，提供点赞、关注、推荐等功能，旨在为坚守博客的人创造更多交流机会。',
  '2026-03-20T02:12:20.000Z'
);
-- Post 4: 纸鹿摸鱼处 - 北京实习300天
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '纸鹿摸鱼处'),
  '北京实习300天',
  'https://blog.zhilu.site/2026/beijing-intern',
  '从西安到北京，从校园到大厂实习，「300天」不只工作本身，有迁移也有变化。秩序常新，但内核与长期的事情不会变。',
  '2026-03-18T16:31:04.000Z'
);
-- Post 5: 张洪Heo - 腾讯QClaw上手：打通微信很方便，但是性能上略有不足
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪Heo'),
  '腾讯QClaw上手：打通微信很方便，但是性能上略有不足',
  'https://blog.zhheo.com/p/bn8aror2.html',
  '这篇文章介绍了作者体验腾讯QClaw龙虾工具的详细测试过程和对比分析。文章从微信绑定的深度优势、安装配置、实际操作v2ex签到等多个维度展开测试，验证了QClaw确实具备操作电脑的能力。作者指出腾讯相比阿里JVSClaw在IM软件绑定上的天然优势，但同时也暴露了内存占用过高、移动端与桌面端无法同时对话、执行过程不透明等技术短板。最终作者认为QClaw的微信直连体验尚可，但反应速度较慢，交互体验仍需优化。',
  '2026-03-17T07:44:54.000Z'
);
-- Post 6: 张洪Heo - 阿里 JVS Claw 上手：都这么多天了，养虾的门槛被打下来了吗？
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '张洪Heo'),
  '阿里 JVS Claw 上手：都这么多天了，养虾的门槛被打下来了吗？',
  'https://blog.zhheo.com/p/ey4573gn.html',
  '这篇文章介绍了阿里推出的JVS Claw内测产品，它同时支持云端和本地部署OpenClaw小龙虾。云端部署提供免费虚拟机（2核8G配置），具备完整的Linux操作界面和公网IP，可直接通过对话界面执行命令，无需配置API，支持文件拖拽传输和技能安装。本地部署极其便捷，5秒内完成配置，开箱即用且内存占用低。产品支持多设备客户端，移动端可控制云端龙虾。整体体验优秀，部署速度快、界面友好，但本地龙虾暂不支持远程控制。',
  '2026-03-16T07:36:30.000Z'
);
-- Post 7: 清羽飞扬 - 兰空图床深度美化
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '清羽飞扬'),
  '兰空图床深度美化',
  'https://blog.liushen.fun/posts/eabede01/',
  '兰空图床已经停止更新，但我一直在用。最近正好在学习 AI 编程，就想着顺手把图床界面美化一下，让自己看着更舒服。于是动手折腾了一番，终于算是改造完成！分享给大家，也顺便水一篇文章～',
  '2026-03-01T12:40:00.000Z'
);
-- Post 8: CWorld Site - Gravatar Mirror
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'CWorld Site'),
  'Gravatar Mirror',
  'https://cworld0.com/blog/gravatar-mirror',
  '解决 Gravatar 在国内访问堪忧的问题',
  '2026-02-25T14:52:58.000Z'
);
-- Post 9: 纸鹿摸鱼处 - 实习后买了一堆东西
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '纸鹿摸鱼处'),
  '实习后买了一堆东西',
  'https://blog.zhilu.site/2026/buy-right',
  '键盘鼠标显示器，手环VR小东西。可以买贵的，但不能买贵了。',
  '2026-02-23T03:02:12.000Z'
);
-- Post 10: 清羽飞扬 - 年味
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '清羽飞扬'),
  '年味',
  'https://blog.liushen.fun/posts/ed97d31c/',
  '终于回家了，虽一路舟车劳顿、疲惫不堪，但踏进家门的那一刻，喜悦早已冲淡一切。灶糖的甜、炊烟的暖、小年的忙碌与团聚，把年的味道一点点唤醒，平凡却最动人，热闹而又温柔。',
  '2026-02-22T12:31:00.000Z'
);
-- Post 11: 清羽飞扬 - 2025，清风已至，正帆向星海
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '清羽飞扬'),
  '2025，清风已至，正帆向星海',
  'https://blog.liushen.fun/posts/5db5181d/',
  '2025逐渐走向尾声。这一年经历了考研失利的低谷，也迎来了走入工作的转折。从自我修复到角色转换，从校园走向职场，在实践中学习、在挫折中前行。第一次凭借自己的能力获得收入，完成了人生的初次积累。回望这一年，真实而坚定，推动我继续向前。',
  '2026-01-07T16:06:00.000Z'
);
-- Post 12: 清羽飞扬 - 部署一只麦麦QQ机器人
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '清羽飞扬'),
  '部署一只麦麦QQ机器人',
  'https://blog.liushen.fun/posts/83890fe8/',
  '最近折腾了一个QQ群机器人，打算让它“潜伏”进群里当普通群友。正好刷到了麦麦机器人这个项目，整体完成度很高，而且最近还新增了 WebUI，对我这种偏爱可视化操作的懒人来说简直是福音。实际部署下来体验也相当顺畅，索性整理一下过程，写一篇部署教程分享给大家。',
  '2025-12-21T15:00:21.000Z'
);
-- Post 13: 清羽飞扬 - 魔改笔记八：外挂标签及侧边栏美化
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '清羽飞扬'),
  '魔改笔记八：外挂标签及侧边栏美化',
  'https://blog.liushen.fun/posts/6010fc85/',
  '前几天有位朋友想要我博客侧边栏的个人卡片样式和外挂标签，但由于我改动太多，一时间不好直接整理。正好周末有空，就顺手把相关内容重新梳理了一遍，并整理成了一篇简单易懂的教程，希望能对那位朋友有所帮助。这个方法适用于大部分类Butterfly主题。',
  '2025-11-23T10:00:21.000Z'
);
-- Post 14: CWorld Site - 个人向 Nas 折腾记录
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'CWorld Site'),
  '个人向 Nas 折腾记录',
  'https://cworld0.com/blog/nas-guide',
  '内含大量纯图一乐的折腾技巧',
  '2025-11-07T00:00:00.000Z'
);
-- Post 15: 纸鹿摸鱼处 - 谈谈不受欢迎的博客技术特征
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '纸鹿摸鱼处'),
  '谈谈不受欢迎的博客技术特征',
  'https://blog.zhilu.site/2025/unpopular-blog-tech',
  '从弹窗干扰到服务滥用，文章剖析博客网站「自以为在优化，实则在添堵」的负面技术特征。',
  '2025-10-07T08:06:46.000Z'
);
-- Post 16: CWorld Site - F1 车队汇总
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'CWorld Site'),
  'F1 车队汇总',
  'https://cworld0.com/blog/f1-teams-2025',
  '网上很多这样的资料大都有些老旧，部分甚至跟不上时代了',
  '2025-06-22T00:00:00.000Z'
);
-- Post 17: CWorld Site - Windows 多余输入法删除
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'CWorld Site'),
  'Windows 多余输入法删除',
  'https://cworld0.com/blog/windows-input-method',
  '清除多余的输入方式',
  '2025-06-17T00:00:00.000Z'
);
-- Post 18: 纸鹿摸鱼处 - 生成式AI正在生成
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '纸鹿摸鱼处'),
  '生成式AI正在生成',
  'https://blog.zhilu.site/2025/ai-abuse',
  '2025年初我对AI内容泛滥感到不适，但察觉内容空洞的人只有少数。生成式AI在2025一整年迭代太快，以至于2026年初整理好的这些文字显得有些过时。',
  '2025-06-10T13:52:43.000Z'
);
-- Post 19: 纸鹿摸鱼处 - 前端字体二三事
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = '纸鹿摸鱼处'),
  '前端字体二三事',
  'https://blog.zhilu.site/2025/font-tips',
  '前端字体排版有许多细节需要注意，文章从我的实际开发经验出发，介绍合成字形、对齐技巧、排版优化，以及自己的一些踩坑心得。',
  '2025-04-16T00:49:50.000Z'
);
-- Post 20: CWorld Site - Vim 的一些键位知识
INSERT OR REPLACE INTO posts (blog_id, title, link, summary, pub_date) VALUES (
  (SELECT id FROM blogs WHERE title = 'CWorld Site'),
  'Vim 的一些键位知识',
  'https://cworld0.com/blog/vim-key',
  '用了几年 Vim 有了一些心得，故有此文。',
  '2023-12-15T00:00:00.000Z'
);
