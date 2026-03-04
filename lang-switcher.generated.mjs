(function () {
  globalThis.RHYTHMPRESS_LANG_SWITCHER = {
    available: ["en", "ja"],
    routes: {"en": "/en/", "ja": "/ja/"},
    labels: {"en": "🇺🇸 English (en)", "ja": "🇯🇵 日本語 (ja)"},
    currentHint: "en",
    defaultLang: "en"
  };
})();
(function () {
  const DATA = globalThis.RHYTHMPRESS_LANG_SWITCHER;
  if (!DATA || !Array.isArray(DATA.available) || !DATA.routes) return;
  const AVAILABLE = DATA.available;
  const ROUTES = DATA.routes;
  const LABELS = DATA.labels || {};
  const CURRENT_HINT = DATA.currentHint;
  const DEFAULT_LANG = DATA.defaultLang;

  function canonicalize(candidate) {
    if (!candidate) return null;
    const c = String(candidate).trim().toLowerCase();
    if (!c) return null;
    for (const x of AVAILABLE) {
      const lx = String(x).toLowerCase();
      if (c === lx || c.split('-')[0] === lx.split('-')[0]) return x;
    }
    return null;
  }

  function detectCurrentLang(pathname) {
    const p = pathname || '/';
    for (const lang of AVAILABLE) {
      const token = '/' + lang + '/';
      if (p.includes(token) || p === '/' + lang || p === '/' + lang + '/index.html') return lang;
    }
    return canonicalize(CURRENT_HINT) || canonicalize(DEFAULT_LANG) || AVAILABLE[0] || null;
  }

  function writeChoice(lang) {
    try { localStorage.setItem('rhythmpress_lang', lang); } catch (_) {}
    document.cookie = 'rhythmpress_lang=' + encodeURIComponent(lang) + '; path=/; max-age=31536000; SameSite=Lax';
  }
  function persistCurrentSelection(select) {
    const targetLang = canonicalize(select.value);
    if (!targetLang || !ROUTES[targetLang]) return;
    writeChoice(targetLang);
  }

  function replaceCurrentLangPath(path, fromLang, toLang) {
    if (!fromLang) return ROUTES[toLang] || path;
    const token = '/' + fromLang + '/';
    const idx = path.lastIndexOf(token);
    if (idx >= 0) return path.slice(0, idx) + '/' + toLang + '/' + path.slice(idx + token.length);
    if (path === '/' + fromLang || path === '/' + fromLang + '/' || path === '/' + fromLang + '/index.html') {
      return ROUTES[toLang] || path;
    }
    return ROUTES[toLang] || path;
  }

  function mount() {
    const existing = document.getElementById('rhythmpress-lang-switcher');
    if (existing) return;
    const host =
      document.querySelector('.navbar .navbar-nav.ms-auto') ||
      document.querySelector('.navbar .navbar-nav') ||
      document.querySelector('.navbar .navbar-collapse');
    if (!host) return;

    const currentLang = detectCurrentLang(window.location.pathname || '/');

    const box = document.createElement('div');
    box.className = 'rp-lang-switcher-toolbar d-flex align-items-center';
    box.style.marginLeft = '0.75rem';

    const label = document.createElement('label');
    label.setAttribute('for', 'rhythmpress-lang-switcher');
    label.textContent = 'Language';
    label.style.marginRight = '0.4rem';

    const select = document.createElement('select');
    select.id = 'rhythmpress-lang-switcher';
    for (const lang of AVAILABLE) {
      const opt = document.createElement('option');
      opt.value = lang;
      opt.textContent = LABELS[lang] || String(lang);
      if (lang === currentLang) opt.selected = true;
      select.appendChild(opt);
    }

    select.addEventListener('change', function () {
      const targetLang = canonicalize(select.value);
      if (!targetLang || !ROUTES[targetLang]) return;
      writeChoice(targetLang);
      const p = window.location.pathname || '/';
      const nextPath = replaceCurrentLangPath(p, currentLang, targetLang);
      const targetUrl = nextPath + (window.location.search || '') + (window.location.hash || '');
      if (targetUrl === window.location.pathname + window.location.search + window.location.hash) return;
      window.location.assign(targetUrl);
    });
    select.addEventListener('click', function () { setTimeout(function () { persistCurrentSelection(select); }, 0); });
    if (currentLang && ROUTES[currentLang]) writeChoice(currentLang);

    box.appendChild(label);
    box.appendChild(select);
    host.appendChild(box);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', mount);
  } else {
    mount();
  }
})();
