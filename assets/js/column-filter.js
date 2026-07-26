// 专栏筛选配置：标签关键词 → 专栏名称
(function() {
  'use strict';

  const COLUMNS = {
    'drg-dip': {
      label: 'DRG/DIP 付费',
      tags: ['drg', 'dip', '病种', '分组', '付费改革', 'drgs', '盈亏', '倍率']
    },
    'hospital-accreditation': {
      label: '医院评审评价',
      tags: ['评审', '国考', '等级评审', '绩效考核', '三级医院', '质量安全']
    },
    'ai-hospital': {
      label: 'AI + 医院管理',
      tags: ['ai', '大模型', '智能体', '人工智能', 'llm', 'claude', '数据分析']
    },
    'operations-analytics': {
      label: '运营数据分析',
      tags: ['运营', '可视化', '分析', '指标', '仪表盘', 'dashboard', '数据']
    },
    'tools-methods': {
      label: '工具与方法',
      tags: ['ppt', '工具', '模板', '排班', '知识库', '部署', 'excel']
    }
  };

  // 判断文章所属专栏
  function getArticleColumn(article) {
    const tags = (article.dataset.tags || '').toLowerCase();
    const title = (article.dataset.title || '').toLowerCase();
    const searchText = tags + ' ' + title;

    for (const [key, col] of Object.entries(COLUMNS)) {
      for (const tag of col.tags) {
        if (searchText.includes(tag)) return key;
      }
    }
    return null;
  }

  function initColumnFilter() {
    const tabs = document.querySelectorAll('.column-tab');
    const articles = document.querySelectorAll('.column-articles .post-entry');

    // 为每篇文章标注专栏
    articles.forEach(article => {
      const col = getArticleColumn(article);
      if (col) article.dataset.column = col;
    });

    // 绑定 tab 切换
    tabs.forEach(tab => {
      tab.addEventListener('click', function() {
        const column = this.dataset.column;

        tabs.forEach(t => t.classList.remove('active'));
        this.classList.add('active');

        articles.forEach(article => {
          if (column === 'all') {
            article.removeAttribute('data-hidden');
          } else {
            article.dataset.hidden = article.dataset.column !== column ? 'true' : 'false';
          }
        });
      });
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initColumnFilter);
  } else {
    initColumnFilter();
  }
})();
