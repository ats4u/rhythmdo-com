function hasTwitterTargets(root = document) {
  return !!root.querySelector('.ats4u-twitter-video, blockquote.twitter-tweet');
}

function convertTwitterPlaceholders(root = document) {
  root.querySelectorAll('.ats4u-twitter-video').forEach((el) => {
    const twitterId = String(el.textContent || '')
      .trim()
      .replaceAll('x.com', 'twitter.com');
    if (!twitterId) return;

    const blockquote = document.createElement('blockquote');
    blockquote.className = 'twitter-tweet center-box';
    blockquote.setAttribute('data-conversation', 'none');
    blockquote.setAttribute('data-media-max-width', '560');

    const anchor = document.createElement('a');
    anchor.href = twitterId;
    anchor.textContent = twitterId;

    blockquote.appendChild(anchor);
    el.replaceWith(blockquote);
  });
}

function tryLoadTwitterWidgets() {
  const load = window.twttr?.widgets?.load;
  if (typeof load !== 'function') return false;
  load(document.body);
  return true;
}

function renderTwitterEmbeds() {
  if (!hasTwitterTargets(document)) return;

  convertTwitterPlaceholders(document);
  if (tryLoadTwitterWidgets()) return;

  let attempts = 0;
  const maxAttempts = 20;
  const timer = window.setInterval(() => {
    attempts += 1;
    if (tryLoadTwitterWidgets() || attempts >= maxAttempts) {
      window.clearInterval(timer);
    }
  }, 200);
}

if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', renderTwitterEmbeds);
} else {
  renderTwitterEmbeds();
}
