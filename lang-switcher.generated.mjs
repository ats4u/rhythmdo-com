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
    const currentLang = detectCurrentLang(window.location.pathname || '/');

    const box = document.createElement('div');
    box.className = 'rp-lang-switcher-toolbar d-flex align-items-center';
    box.style.marginLeft = '0.75rem';

    const dropdown = document.createElement('div');
    dropdown.className = 'dropdown rp-lang-switcher-dropdown';

    const toggle = document.createElement('button');
    toggle.id = 'rhythmpress-lang-switcher';
    toggle.type = 'button';
    toggle.className = 'btn btn-sm dropdown-toggle';
    toggle.setAttribute('data-bs-toggle', 'dropdown');
    toggle.setAttribute('aria-expanded', 'false');
    toggle.textContent = LABELS[currentLang] || String(currentLang || 'Language');

    const menu = document.createElement('ul');
    menu.className = 'dropdown-menu dropdown-menu-end';

    toggle.classList.add('btn-outline-secondary');
    toggle.style.backgroundColor = 'transparent';

    function withAlpha(rgb, alpha) {
      const m = String(rgb || '').match(/^\s*rgba?\(\s*([0-9.]+)\s*,\s*([0-9.]+)\s*,\s*([0-9.]+)(?:\s*,\s*([0-9.]+))?\s*\)\s*$/i);
      if (!m) return null;
      const r = Math.max(0, Math.min(255, Math.round(Number(m[1]))));
      const g = Math.max(0, Math.min(255, Math.round(Number(m[2]))));
      const b = Math.max(0, Math.min(255, Math.round(Number(m[3]))));
      return 'rgba(' + r + ', ' + g + ', ' + b + ', ' + alpha + ')';
    }

    function applyToggleTone() {
      const navbar = document.querySelector('.navbar');
      if (!navbar) return;
      const navStyle = window.getComputedStyle(navbar);
      const navColor = navStyle && navStyle.color ? navStyle.color : '';
      if (!navColor) return;
      toggle.style.color = navColor;
      toggle.style.borderColor = withAlpha(navColor, 0.6) || navColor;
    }

    applyToggleTone();

    function navigateToLang(targetLang) {
      if (!targetLang || !ROUTES[targetLang]) return;
      writeChoice(targetLang);
      const p = window.location.pathname || '/';
      const nextPath = replaceCurrentLangPath(p, currentLang, targetLang);
      const targetUrl = nextPath + (window.location.search || '') + (window.location.hash || '');
      if (targetUrl === window.location.pathname + window.location.search + window.location.hash) return;
      window.location.assign(targetUrl);
    }

    for (const lang of AVAILABLE) {
      const li = document.createElement('li');
      const item = document.createElement('button');
      item.type = 'button';
      item.className = 'dropdown-item';
      if (lang === currentLang) item.classList.add('active');
      item.textContent = LABELS[lang] || String(lang);
      item.addEventListener('click', function () {
        const targetLang = canonicalize(lang);
        if (!targetLang) return;
        navigateToLang(targetLang);
      });
      li.appendChild(item);
      menu.appendChild(li);
    }

    dropdown.appendChild(toggle);
    dropdown.appendChild(menu);
    if (currentLang && ROUTES[currentLang]) writeChoice(currentLang);

    const MOBILE_QUERY = '(max-width: 991.98px)';
    const media = window.matchMedia ? window.matchMedia(MOBILE_QUERY) : null;
    let toolsWrap = null;

    function ensureToolsWrap(tools) {
      if (!tools) return null;
      if (!toolsWrap || !toolsWrap.isConnected || toolsWrap.parentElement !== tools) {
        const wrap = document.createElement('span');
        wrap.className = 'rp-switcher-tools-inline';
        wrap.style.display = 'inline-flex';
        wrap.style.alignItems = 'center';
        wrap.style.marginRight = '0.5rem';
        tools.insertBefore(wrap, tools.firstChild);
        toolsWrap = wrap;
      }
      return toolsWrap;
    }

    function placeSwitcher() {
      applyToggleTone();
      const slot = document.getElementById('rhythmpress-lang-switcher-slot');
      const tools = document.querySelector('.navbar .quarto-navbar-tools');
      const isMobile = !!(media ? media.matches : (window.innerWidth <= 991.98));
      const slotInCollapsedNav = !!(slot && slot.closest('.navbar-collapse'));

      if (slot && !(isMobile && slotInCollapsedNav)) {
        const slotLink = slot.closest('a.nav-link');
        if (slotLink) {
          slotLink.removeAttribute('href');
          slotLink.setAttribute('role', 'presentation');
          if (!slotLink.dataset.rhythmpressNeutralized) {
            slotLink.addEventListener('click', function (event) {
              if (event.target && event.target.closest && event.target.closest('#rhythmpress-lang-switcher')) return;
              if (event.target && event.target.closest && event.target.closest('.rp-lang-switcher-dropdown')) return;
              event.preventDefault();
            });
            slotLink.dataset.rhythmpressNeutralized = '1';
          }
        }
        while (slot.firstChild) slot.removeChild(slot.firstChild);
        slot.appendChild(dropdown);
        if (toolsWrap && !toolsWrap.hasChildNodes() && toolsWrap.parentNode) toolsWrap.parentNode.removeChild(toolsWrap);
        toolsWrap = null;
        return;
      }

      if (tools) {
        const wrap = ensureToolsWrap(tools);
        if (wrap && dropdown.parentElement !== wrap) {
          wrap.appendChild(dropdown);
        }
        return;
      }

      const host =
        document.querySelector('.navbar .navbar-nav.ms-auto') ||
        document.querySelector('.navbar .navbar-nav') ||
        document.querySelector('.navbar .navbar-collapse');
      if (!host) return;

      if (dropdown.parentElement !== box) {
        while (box.firstChild) box.removeChild(box.firstChild);
        box.appendChild(dropdown);
      }
      if (box.parentElement !== host) {
        host.appendChild(box);
      }
    }

    placeSwitcher();
    window.addEventListener('resize', placeSwitcher);
    if (media && media.addEventListener) {
      media.addEventListener('change', placeSwitcher);
    } else if (media && media.addListener) {
      media.addListener(placeSwitcher);
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', mount);
  } else {
    mount();
  }
})();
