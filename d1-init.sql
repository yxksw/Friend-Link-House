-- D1 Database Initialization Script
-- Generated on 2026-04-03T15:29:37.229Z

-- Create tables
CREATE TABLE IF NOT EXISTS blogs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  html_url TEXT NOT NULL,
  description TEXT,
  avatar_url TEXT,
  xml_url TEXT,
  category TEXT,
  status TEXT DEFAULT 'active',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  blog_id INTEGER NOT NULL,
  title TEXT NOT NULL,
  link TEXT NOT NULL,
  summary TEXT,
  pub_date DATETIME NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (blog_id) REFERENCES blogs(id)
);

-- Create indexes
CREATE INDEX IF NOT EXISTS idx_posts_blog_id ON posts(blog_id);
CREATE INDEX IF NOT EXISTS idx_posts_pub_date ON posts(pub_date DESC);
CREATE INDEX IF NOT EXISTS idx_blogs_category ON blogs(category);
CREATE INDEX IF NOT EXISTS idx_blogs_status ON blogs(status);

-- Insert blogs
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  1,
  'idealclover',
  'https://idealclover.top',
  '是翠翠的个人网站！',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  2,
  'NJU-LUG',
  'https://blogroll.njulug.org',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  3,
  'gq''s Blog',
  'https://blog.izgq.net',
  'gq''s blog',
  'https://zgq.me/favicon.png',
  'https://zgq.me/feed.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  4,
  'bus1996',
  'https://bus1996.me',
  '',
  'https://bus1996.me/assets/img/favicon.ico',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  5,
  'HiKi',
  'https://www.aneureka.cn',
  '',
  'https://www.aneureka.cn/img/favicon.ico',
  'https://www.aneureka.cn/atom.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  6,
  'lizhihao6',
  'https://lizhihao6.online',
  '',
  'https://lizhihao6.online/wp-content/uploads/2019/06/cropped-22297584-32x32.jpg',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  7,
  'Jennifer''s Blog',
  'https://jyzhangchn.github.io',
  '',
  'https://jyzhangchn.github.io/images/gavin.JPG',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  8,
  'DIYGod',
  'https://diygod.me',
  '写代码是热爱，写到世界充满爱！',
  'https://4everland.xyz/ipfs/bafybeibefx2tyow77m2wcnsh5anaaxfy7ypxbcuapb52c4h255onqp72ye',
  'http://diygod.me/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  9,
  '咸鱼不咸',
  'https://lcblog.cn',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  10,
  'XZYMOE''S BLOG',
  'https://www.xzymoe.com',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  11,
  'Tianyun Zhang',
  'https://doowzs.com',
  'doowzs''s personal blog',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  12,
  '鹏鹏',
  'https://blog.chper.cn',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  13,
  '毛若昕',
  'https://www.maorx.cn',
  '这里是毛若昕的个人主页',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  14,
  '冰凌胧月的小窝',
  'https://imiku.me',
  '聆听最初的声音，向往无尽的未来',
  '',
  'https://imiku.me/index.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  15,
  'Zero',
  'https://mikuac.com',
  '凉风乍起，一叶知秋。',
  'https://mikuac.com/img/avatar.jpg',
  'https://mikuac.com/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  16,
  'VicBlog',
  'https://ddadaal.me',
  '',
  '',
  'https://ddadaal.me/rss.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  17,
  'YSZ 的个人主页',
  'https://yangshangzhen.com',
  '',
  'https://www.yangshangzhen.com/images/avatar.png',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  18,
  '热铁盒',
  'https://rthsoftware.cn',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  19,
  'iznauy',
  'https://iznauy.github.io',
  '',
  'https://avatars0.githubusercontent.com/u/22297856?s=400&u=9ac5d0437ef685b62e402ed130d67d589d234f0b&v=4',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  20,
  'Literature',
  'https://www.literature.hk',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  21,
  'JBESU',
  'https://jbesu.com',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  22,
  '青空之蓝',
  'https://www.ixk.me',
  '站在时光一端，回忆过往记忆。',
  'https://ixk.me/_next/image?url=%2Fimage%2Fconfig%2Fauthor%2Favatar.400x400.png&w=1920&q=75',
  'https://blog.ixk.me/rss.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  23,
  '樱花庄的白猫',
  'https://2heng.xin',
  '',
  'https://2heng.xin/wp-content/static/favicon-96x96.png',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  24,
  '水风车',
  'https://blog.shuifengche.top',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  25,
  '辣椒の酱',
  'https://removeif.github.io',
  '后端开发，技术分享',
  'https://removeif.github.io/images/avatar.jpg',
  'https://removeif.github.io/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  26,
  'BoBo',
  'https://hewanyue.com/',
  'BOHC is just a blog of hechao',
  'https://hewanyue.com/images/favicon.ico',
  'https://hewanyue.com/atom.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  27,
  'Domon',
  'https://www.domon.cn',
  'Life is Simple.',
  '',
  'https://www.domon.cn/rss',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  28,
  'BOHC!',
  'https://hewanyue.com',
  '',
  'https://hewanyue.com/images/favicon.ico',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  29,
  'SangSir',
  'https://sangsir.com',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  30,
  '恶魔菌の记事簿',
  'https://meow3.family.blog',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  31,
  '蓝小柠的博客',
  'https://bleshi.com',
  '是可爱的蓝孩子呀—',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  32,
  '宇宙よりも遠い場所',
  'https://kirainmoe.com',
  '',
  '',
  'https://kirainmoe.com/index.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  33,
  '小太の游乐园',
  'https://baka.fun',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  34,
  'NoneData',
  'https://www.nonedata.com',
  '',
  'https://gravatar.loli.net/avatar/8195a7772cd06cfc4fa303770d577c97',
  'https://www.nonedata.com/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  35,
  'dna049',
  'https://dna049.com',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  36,
  'Mengzelev''s Blog',
  'https://mengzelev.github.io',
  '',
  'https://mengzelev.github.io/assets/moe.ico',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  37,
  'beyondstars',
  'https://exploro.one',
  '',
  '',
  'https://idx.best/api/feeds/atom',
  'supporter',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  38,
  'Sukka',
  'https://blog.skk.moe',
  '',
  '',
  'https://blog.skk.moe/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  39,
  'fengkx',
  'https://www.fengkx.top',
  '',
  'https://www.fengkx.top/images/icons/icon-128x128.png',
  'https://www.fengkx.top/atom.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  40,
  'JosePhilo',
  'https://josephilo.com',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  41,
  '蝉时雨',
  'https://chanshiyu.com',
  '',
  '',
  '',
  'net',
  'lost'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  42,
  'ChrAlpha 的幻想乡',
  'https://ichr.me',
  '',
  'https://cdn.jsdelivr.net/npm/ckx@0.0.1/favicon/favicon-32x32.png',
  'https://blog.ichr.me/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  43,
  'SpencerWoo',
  'https://spencerwoo.com',
  '',
  'https://spencerwoo.com/assets/logo.png',
  'https://spencerwoo.com/feed.xml',
  'supporter',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  44,
  'LadderOperator',
  'https://ladderoperator.top',
  '',
  'https://ladderoperator.top/img/favicon.jpg',
  'https://ladderoperator.top/index.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  45,
  '木子的博客',
  'https://blog.k8s.li',
  '垃圾佬、搬砖社畜、运维工程师',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  46,
  'c0sMx',
  'https://www.c0smx.com',
  '',
  'https://c0smx.lajiya.cn/favicon.ico',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  47,
  '云游君的小站',
  'https://www.yunyoujun.cn',
  '希望能成为一个有趣的人。',
  'https://www.yunyoujun.cn/favicon.svg',
  'https://www.yunyoujun.cn/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  48,
  '猫鱼的小站',
  'https://2cat.net',
  '記錄貓魚日常嘅生活感受同好玩趣事。',
  'https://2cat.net/wp-content/uploads/2020/04/cropped-YZSC.TAOBAO.COM-24-192x192.png',
  'https://2cat.net/?feed=rss2',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  49,
  'MiaoTony''s 小窝',
  'https://miaotony.xyz',
  '仰望星空，脚踏实地，未来可期',
  '',
  'https://miaotony.xyz/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  50,
  'Timegg',
  'https://timegg.top',
  '',
  'https://timegg.top/images/favicon.ico',
  'https://timegg.top/index.xml',
  'net',
  'lost'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  51,
  'Aengus Blog',
  'https://www.aengus.top',
  'Stay Hungry, Stay Foolish.',
  'https://img.aengus.top/common/profile.png',
  'https://www.aengus.top/rss.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  52,
  'ALID',
  'https://calmtime.github.io',
  '',
  'https://calmtime.github.io/img/avatar-my.jpg',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  53,
  'klaus & laura',
  'https://klauslaura.cn',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  54,
  'Kant',
  'https://deathfugue.com/',
  '',
  '',
  'https://deathfugue.com/index.php/feed/',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  55,
  'Orangex4',
  'https://orangex4.cool',
  '',
  'https://orangex4.cool/images/icons/profile.jpg',
  'https://orangex4.cool/atom.xml',
  'friend',
  'lost'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  56,
  'GeRongcun',
  'https://www.gerongcun.xyz/blog',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  57,
  '王荣胜',
  'https://sqdxwz.com',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  58,
  '小丁的个人博客',
  'https://tding.top',
  '',
  'https://tding.top/images/avatar.webp',
  'https://tding.top/atom.xml',
  'net',
  'lost'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  59,
  '风景工作室',
  'https://aspire.studio',
  '',
  '',
  '',
  'net',
  'lost'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  60,
  'Manami',
  'https://www.manami.top',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  61,
  'Oasis''s Blog',
  'https://blog.imoasis.cn',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  62,
  '不鉴的安全屋',
  'https://ryushane.com',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  63,
  '吴志成的博客',
  'https://hitigerzzz.github.io',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  64,
  '南雍随笔',
  'https://ydjsir.com.cn',
  '',
  'https://ydjsir.com.cn/img/avatar.png',
  'https://ydjsir.com.cn/atom.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  65,
  'Cyris',
  'https://cyris.moe',
  '',
  'https://cyris.moe/images/favicon.ico',
  'https://sound.cyris.moe/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  66,
  'Dejavu''s Blog',
  'https://blog.dejavu.moe',
  'Not for success, just for growing.',
  'https://blog.dejavu.moe/avatar.webp',
  'https://blog.dejavu.moe/index.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  67,
  'remiliacn',
  'https://www.remiliacn.com',
  '东拼西凑的个人小站',
  'https://avatars.githubusercontent.com/remiliacn',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  68,
  '青鱼博客',
  'https://qingyu.me',
  '',
  '',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  69,
  '太隐',
  'https://www.wangyurui.top',
  '一个人的思想发育史就是他的阅读史',
  'https://i.typlog.com/wangyr45/8354037003_3266735.png?x-oss-process=style/ss',
  'https://wangyurui.com/feed.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  70,
  '送报少年',
  'https://okarin.cn',
  '',
  '',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  71,
  'itsNekoDeng',
  'https://dyfa.top',
  '',
  'https://nekodeng.gitee.io/medias/avatar.jpg',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  72,
  'LarryZhao',
  'https://larryzhao.com',
  '',
  'https://larryzhao.com/headimg.png',
  'https://feeds.feedburner.com/larryzhao',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  73,
  'Pemp''s Blog',
  'https://pemp.top',
  '',
  'https://pemp.top/images/logo.jpg',
  '',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  74,
  'SkyWT',
  'https://skywt.cn',
  '热爱与激情永不止息。',
  'https://blog.skywt.cn/usr/themes/Daydream/assets/img/avatar.png',
  'https://skywt.cn/rss.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  75,
  'Anomie ZJU',
  'https://dong2000.xyz',
  'A blog of whatever goes',
  'https://dong2000.xyz/wombo.png',
  'https://dong2000.xyz/index.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  76,
  'Cysime Moflu',
  'https://blog.cysi.me',
  '再不会遇见第二个时光',
  'https://image.glaceon.net/uploads/202205012353016.jpg',
  'https://blog.cysi.me/index.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  77,
  'RK blog',
  'https://blog.ohtoai.fun/',
  'Think N Thought',
  'https://blog.ohtoai.fun/assets/avater.png',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  78,
  'Good Morning',
  'https://y-ichen.github.io',
  '子喵的个人博客站！',
  'https://y-ichen.github.io/img/favicon.png',
  'https://y-ichen.github.io/atom.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  79,
  'Chlorine',
  'https://www.yoghurtlee.com',
  'Como el viento.',
  'https://img.clnya.fun/chlorine-juice-safer.avif',
  '',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  80,
  '烫烫烫的记事本',
  'https://leostudiooo.github.io/',
  'Stay hungry, stay foolish.',
  'https://cdn.jsdelivr.net/gh/leostudiooo/leostudiooo.cdn/img/avatar.jpg',
  'https://leostudiooo.github.io/atom.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  81,
  '山茶花舍',
  'https://irithys.com',
  '吕楪在记录自己的生活',
  'https://pic.imgdb.cn/item/63e38acc4757feff3372eb7e.webp',
  'https://irithys.com/rss/',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  82,
  '张洪 Heo',
  'https://blog.zhheo.com',
  '分享设计与科技生活',
  'https://bu.dusays.com/2022/12/28/63ac2812183aa.png',
  'https://blog.zhheo.com/rss.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  83,
  'f2h2h1''s blog',
  'https://f2h2h1.github.io',
  '覆舟水是苍生泪，不到横流君不知',
  'https://f2h2h1.github.io/avatar.png',
  'https://f2h2h1.github.io/rss.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  84,
  '精灵王',
  'https://jingling.im',
  '专注于全栈开发技术分享和开源项目讨论',
  'https://jingling.im/assets/jingling.svg',
  'https://jingling.im/rss.xml',
  'net',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  85,
  'Guava’s Blog',
  'https://www.humbleguava.top',
  'Guava’s Blog',
  '',
  'https://www.humbleguava.top/rss/feed.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  86,
  'LoveApple的主页',
  'https://loveapple.icu',
  '一条喜欢苹果的水煮鱼',
  'https://loveapple.icu/img/machinist.jpg',
  'https://loveapple.icu/rss.xml',
  'friend',
  'active'
);
INSERT INTO blogs (id, title, html_url, description, avatar_url, xml_url, category, status) VALUES (
  87,
  '龙场茶室',
  'https://blog.peterchen97.cn',
  '一只练习时长六年半的 Web 开发练习生，这是他的一些杂文，欢迎交流~',
  'https://blog.peterchen97.cn/favicon.svg',
  'https://blog.peterchen97.cn/rss.xml',
  'net',
  'active'
);

-- Blogs inserted: 87
