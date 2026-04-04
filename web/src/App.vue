<script setup>
import { ref, onMounted, onUnmounted } from 'vue';
import BlogInfoCard from "./components/BlogInfoCard.vue";

const API_BASE_URL = import.meta.env.VITE_API_URL || '';

const posts = ref([]);
const blogs = ref([]);
const loading = ref(true);
const error = ref(null);
const showBackToTop = ref(false);
const isDarkMode = ref(false);
const siteRunningTime = ref('');
let timer = null;

// 建站时间配置（请修改为你实际的建站日期）
const siteStartDate = new Date('2026-04-04 12:00:00'); // 格式：年-月-日 时:分:秒

// 计算建站时长（精准到秒）
const getSiteRunningTime = () => {
  const now = new Date();
  const diff = now - siteStartDate;

  const days = Math.floor(diff / (1000 * 60 * 60 * 24));
  const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
  const seconds = Math.floor((diff % (1000 * 60)) / 1000);

  const years = Math.floor(days / 365);
  const remainingDays = days % 365;

  if (years > 0) {
    return `${years}年${remainingDays}天${hours}时${minutes}分${seconds}秒`;
  }
  return `${days}天${hours}时${minutes}分${seconds}秒`;
};

// 更新建站时间
const updateSiteRunningTime = () => {
  siteRunningTime.value = getSiteRunningTime();
};

// 回到顶部功能
const scrollToTop = () => {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
};

// 监听滚动事件
const handleScroll = () => {
  showBackToTop.value = window.scrollY > 300;
};

// 切换深色/浅色模式
const toggleTheme = () => {
  isDarkMode.value = !isDarkMode.value;
  if (isDarkMode.value) {
    document.documentElement.classList.add('dark');
    localStorage.setItem('theme', 'dark');
  } else {
    document.documentElement.classList.remove('dark');
    localStorage.setItem('theme', 'light');
  }
};

// 初始化主题
const initTheme = () => {
  const savedTheme = localStorage.getItem('theme');
  if (savedTheme === 'dark') {
    isDarkMode.value = true;
    document.documentElement.classList.add('dark');
  } else if (savedTheme === 'light') {
    isDarkMode.value = false;
    document.documentElement.classList.remove('dark');
  } else {
    // 检测系统偏好
    if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
      isDarkMode.value = true;
      document.documentElement.classList.add('dark');
    }
  }
};

// 获取文章数据
async function fetchPosts() {
  try {
    const response = await fetch(`${API_BASE_URL}/api/posts`);
    if (!response.ok) throw new Error('Failed to fetch posts');
    const data = await response.json();
    
    // 转换数据格式以兼容原有显示逻辑
    posts.value = data.map(item => {
      const pubDate = new Date(item.pub_date);
      return {
        ...item,
        name: item.blog_name,
        htmlUrl: item.html_url,
        pubDate: pubDate,
        pubDateYY: pubDate.getFullYear().toString(),
        pubDateMM: String(pubDate.getMonth() + 1).padStart(2, '0'),
        pubDateMMDD: String(pubDate.getMonth() + 1).padStart(2, '0') + '-' + String(pubDate.getDate()).padStart(2, '0')
      };
    });
  } catch (err) {
    console.error('Error fetching posts:', err);
    error.value = err.message;
  }
}

// 获取博客列表
async function fetchBlogs() {
  try {
    const response = await fetch(`${API_BASE_URL}/api/blogs`);
    if (!response.ok) throw new Error('Failed to fetch blogs');
    const data = await response.json();
    
    // 转换数据格式以兼容 BlogInfoCard 组件
    blogs.value = data.map(item => ({
      title: item.title,
      htmlUrl: item.html_url,
      xmlUrl: item.xml_url,
      status: item.status,
      category: item.category
    }));
  } catch (err) {
    console.error('Error fetching blogs:', err);
    error.value = err.message;
  }
}

onMounted(async () => {
  // 初始化主题
  initTheme();

  await Promise.all([fetchPosts(), fetchBlogs()]);
  loading.value = false;

  // 图片懒加载
  var imgs = document.getElementsByTagName("img");
  for (var i = 0; i < imgs.length; i++) {
    if (imgs[i].dataset.src) {
      imgs[i].src = imgs[i].dataset.src;
    }
  }

  // 添加滚动监听
  window.addEventListener('scroll', handleScroll);

  // 初始化并启动建站时间定时器
  updateSiteRunningTime();
  timer = setInterval(updateSiteRunningTime, 1000);
});

onUnmounted(() => {
  // 移除滚动监听
  window.removeEventListener('scroll', handleScroll);

  // 清除建站时间定时器
  if (timer) {
    clearInterval(timer);
  }
});
</script>

<template>
  <header id="header">
    <div id="header-inner">
      <span id="logo-left">
        <img id="logo" src="./assets/yxksw.jpg" alt="Logo" />
        <span id="logo-text">{{ title }}</span>
      </span>
      <a
        id="logo-right"
        target="_blank"
        href="https://github.com/yxksw/Friend-Link-House/edit/main/README.md"
        title="申请友链"
      >
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M12 5v14M5 12h14"/>
        </svg>
        <span id="logo-text">申请友链</span>
      </a>
    </div>
    <div id="banner">{{ info }}</div>
  </header>

  <div v-if="loading" class="loading">
    <p>加载中...</p>
  </div>

  <div v-else-if="error" class="error">
    <p>加载失败: {{ error }}</p>
  </div>

  <div v-else id="container">
    <main>
      <div id="main">
        <section class="timeline" id="archives" v-if="posts.length > 0">
          <time class="timeline-item timeline-item--year"
            >{{ posts[0].pubDateYY }}年{{ posts[0].pubDateMM }}月</time
          >
          <div v-for="(item, index) in posts" :key="index">
            <article class="timeline-item">
              <time class="timeline-item__time"> {{ item.pubDateMMDD }}</time>
              <h2 class="timeline-item__title">
                <a
                  class="timeline-item__link"
                  :href="item.link"
                  target="_blank"
                  >{{ item.title }}</a
                >
                <a class="summary-name" :href="item.htmlUrl" target="_blank">{{
                  item.name
                }}</a>
              </h2>
            </article>
            <time
              class="timeline-item timeline-item--year"
              v-if="
                index != posts.length - 1 &&
                item.pubDateMM != posts[index + 1].pubDateMM
              "
              >{{ posts[index + 1].pubDateYY }}年{{
                posts[index + 1].pubDateMM
              }}月</time
            >
          </div>
        </section>
        <section v-else class="timeline">
          <p>暂无文章</p>
        </section>
      </div>
    </main>

    <aside>
      <div id="sidebar">
        <div id="sidebar-content">
          <div class="list">{{ list }}</div>
          <template v-for="(item, index) in blogs" :key="index">
            <BlogInfoCard
              :props="item"
              v-if="item.status == 'active' && item.xmlUrl != ''"
            />
          </template>
          <template v-for="(item, index) in blogs" :key="'no-rss-' + index">
            <BlogInfoCard
              :props="item"
              v-if="item.status == 'active' && item.xmlUrl == ''"
            />
          </template>
          <template v-for="(item, index) in blogs" :key="'lost-rss-' + index">
            <BlogInfoCard
              :props="item"
              v-if="item.status == 'lost' && item.xmlUrl != ''"
            />
          </template>
          <template v-for="(item, index) in blogs" :key="'lost-no-rss-' + index">
            <BlogInfoCard
              :props="item"
              v-if="item.status == 'lost' && item.xmlUrl == ''"
            />
          </template>
        </div>
      </div>
    </aside>
  </div>

  <!-- 主题切换按钮 -->
  <button
    class="theme-toggle"
    @click="toggleTheme"
    :title="isDarkMode ? '切换到浅色模式' : '切换到深色模式'"
  >
    <!-- 浅色模式图标（太阳） -->
    <svg v-if="isDarkMode" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
      <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12a4 4 0 1 0 8 0a4 4 0 1 0-8 0m-5 0h1m8-9v1m8 8h1m-9 8v1M5.6 5.6l.7.7m12.1-.7l-.7.7m0 11.4l.7.7m-12.1-.7l-.7.7"/>
    </svg>
    <!-- 深色模式图标（月亮） -->
    <svg v-else xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
      <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 3h.393a7.5 7.5 0 0 0 7.92 12.446A9 9 0 1 1 12 2.992z"/>
    </svg>
  </button>

  <!-- 回到顶部按钮 -->
  <button
    v-show="showBackToTop"
    class="back-to-top"
    @click="scrollToTop"
    title="回到顶部"
  >
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 16 16">
      <path fill="currentColor" fill-rule="evenodd" d="M14 3H2V2h12zM7.979 4.008l4.484 4.484l-.707.707l-3.277-3.277v7.984h-1V5.922L4.2 9.199l-.707-.707z" clip-rule="evenodd"/>
    </svg>
  </button>

  <!-- 底部组件 -->
  <footer class="site-footer">
    <div class="footer-content">
      <p class="footer-text">
        © {{ new Date().getFullYear() }} {{ title }} · 已运行 {{ siteRunningTime }}
      </p>
      <p class="footer-text">
        Powered by <a href="https://github.com/yxksw/Friend-Link-House" target="_blank">Friend-Link-House</a>
      </p>
    </div>
  </footer>
</template>

<script>
export default {
  data() {
    return {
      // TODO: 需修改的页面配置
      title: "YXXの友链墙",
      info: "仅收录友链博客文章，不代表我的本人观点",
      list: "友链列表",
    };
  },
};
</script>

<style>
@import "./assets/base.css";

.loading, .error {
  text-align: center;
  padding: 2rem;
  color: #666;
}

.error {
  color: #e74c3c;
}

.timeline {
  position: relative;
  margin-left: 1rem;
  margin-top: 1rem;
  margin-right: 1rem;
}

.timeline:before {
  content: "";
  position: absolute;
  top: 1em;
  bottom: 1em;
  left: 0;
  border-left: 0.2rem solid #efefef;
  -webkit-transform: translateX(-50%);
  -moz-transform: translateX(-50%);
  -o-transform: translateX(-50%);
  -ms-transform: translateX(-50%);
  transform: translateX(-50%);
}

.timeline-item {
  display: block;
  position: relative;
  margin-bottom: 0.8rem;
  padding-left: 1.5rem;
  width: 100%;
  -webkit-box-align: center;
  -moz-box-align: center;
  -o-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}

.timeline-item:before {
  content: "";
  position: absolute;
  top: 50%;
  left: 0;
  border-radius: 50%;
  width: 0.3rem;
  height: 0.3rem;
  background-color: #7b8a8b;
  -webkit-transition: background-color 0.2s ease;
  -moz-transition: background-color 0.2s ease;
  -o-transition: background-color 0.2s ease;
  -ms-transition: background-color 0.2s ease;
  transition: background-color 0.2s ease;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.timeline-item__time {
  display: inline-block;
  width: 3.5rem;
  vertical-align: middle;
  color: #99a9bf;
  -webkit-transform: translateY(3%);
  -moz-transform: translateY(3%);
  -o-transform: translateY(3%);
  -ms-transform: translateY(3%);
  transform: translateY(3%);
}

.timeline-item--year {
  font-size: 1.2rem;
}

.timeline-item__title {
  display: inline-block;
  margin: 0;
  width: calc(100% - 4.5rem);
  font-size: 1em;
  font-weight: normal;
  vertical-align: middle;
}

.timeline-item__link {
  color: #2c323c;
}

.summary-name {
  display: inline;
  color: grey;
  margin-right: 1.5rem;
  float: right;
}

.info {
  color: grey;
}

/* 主题切换按钮样式 */
.theme-toggle {
  position: fixed;
  bottom: 5.5rem;
  right: 2rem;
  width: 48px;
  height: 48px;
  border: none;
  border-radius: 50%;
  background-color: #fff;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  z-index: 1000;
  color: #333;
}

.theme-toggle:hover {
  background-color: #f5f5f5;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  transform: translateY(-2px);
}

.theme-toggle:active {
  transform: translateY(0);
}

.theme-toggle svg {
  width: 24px;
  height: 24px;
}

/* 回到顶部按钮样式 */
.back-to-top {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  width: 48px;
  height: 48px;
  border: none;
  border-radius: 50%;
  background-color: #fff;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  z-index: 1000;
  color: #333;
}

.back-to-top:hover {
  background-color: #f5f5f5;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  transform: translateY(-2px);
}

.back-to-top:active {
  transform: translateY(0);
}

.back-to-top svg {
  width: 24px;
  height: 24px;
}

/* ==================== 深色模式适配 ==================== */

/* 深色模式基础变量 */
:root.dark {
  --bg-color: #1a1a1a;
  --text-color: #e0e0e0;
  --text-secondary: #a0a0a0;
  --border-color: #333;
  --card-bg: #2a2a2a;
  --link-color: #7eb8ff;
  --link-hover: #a8d0ff;
  --timeline-line: #444;
  --timeline-dot: #666;
  --header-bg: #242424;
  --button-bg: #3a3a3a;
  --button-hover: #4a4a4a;
  --shadow-color: rgba(0, 0, 0, 0.3);
}

/* 深色模式样式 */
:root.dark body {
  background-color: var(--bg-color);
  color: var(--text-color);
}

:root.dark #header {
  background-color: var(--header-bg);
  border-bottom: 1px solid var(--border-color);
}

:root.dark #logo-text {
  color: var(--text-color);
}

:root.dark #banner {
  background-color: var(--card-bg);
  color: var(--text-secondary);
  border-bottom: 1px solid var(--border-color);
}

:root.dark .timeline:before {
  border-left-color: var(--timeline-line);
}

:root.dark .timeline-item:before {
  background-color: var(--timeline-dot);
}

:root.dark .timeline-item__time {
  color: var(--text-secondary);
}

:root.dark .timeline-item__link {
  color: var(--link-color);
}

:root.dark .timeline-item__link:hover {
  color: var(--link-hover);
}

:root.dark .summary-name {
  color: var(--text-secondary);
}

:root.dark .loading,
:root.dark .error {
  color: var(--text-secondary);
}

:root.dark #sidebar {
  background-color: var(--card-bg);
}

:root.dark .list {
  color: var(--text-color);
  border-bottom: 1px solid var(--border-color);
}

/* 深色模式按钮样式 */
:root.dark .theme-toggle,
:root.dark .back-to-top {
  background-color: var(--button-bg);
  box-shadow: 0 2px 8px var(--shadow-color);
  color: var(--text-color);
}

:root.dark .theme-toggle:hover,
:root.dark .back-to-top:hover {
  background-color: var(--button-hover);
  box-shadow: 0 4px 12px var(--shadow-color);
}

/* 深色模式下的链接样式 */
:root.dark a {
  color: var(--link-color);
}

:root.dark a:hover {
  color: var(--link-hover);
}

/* 深色模式时间线年份 */
:root.dark .timeline-item--year {
  color: var(--text-color);
}

/* ==================== 底部组件样式 ==================== */

.site-footer {
  margin-top: 3rem;
  padding: 2rem 0;
  background-color: #f5f5f5;
  border-top: 1px solid #e0e0e0;
}

.footer-content {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
  text-align: center;
}

.footer-text {
  margin: 0.5rem 0;
  color: #666;
  font-size: 0.9rem;
}

.footer-text a {
  color: #3273dc;
  text-decoration: none;
}

.footer-text a:hover {
  color: #2c323c;
  text-decoration: underline;
}

/* 深色模式底部样式 */
:root.dark .site-footer {
  background-color: #242424;
  border-top-color: #333;
}

:root.dark .footer-text {
  color: #a0a0a0;
}

:root.dark .footer-text a {
  color: #7eb8ff;
}

:root.dark .footer-text a:hover {
  color: #a8d0ff;
}

/* 响应式适配 */
@media (max-width: 1200px) {
  .footer-content {
    padding: 0 1rem;
  }
}
</style>
