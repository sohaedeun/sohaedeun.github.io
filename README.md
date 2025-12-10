<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Marimekko — Redesign Prototype</title>
  <meta name="description" content="Marimekko-inspired redesign — product-first landing, responsive grid, accessible navigation." />
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <!-- Skip link for screen reader / keyboard users -->
  <a class="skip-link" href="#main">Skip to content</a>

  <header class="site-header" role="banner">
    <div class="header-inner">
      <a class="logo" href="/" aria-label="Marimekko Home">marimekko</a>

      <nav class="global-nav" role="navigation" aria-label="Main Navigation">
        <button id="navToggle" class="nav-toggle" aria-expanded="false" aria-controls="navList">Menu</button>
        <ul id="navList" class="nav-list">
          <li><a href="#shop">Collections</a></li>
          <li><a href="#categories">Home</a></li>
          <li><a href="#story">Story</a></li>
          <li><a href="#contact">Stores</a></li>
        </ul>
      </nav>

      <div class="header-actions">
        <button id="searchBtn" aria-label="Open search" class="icon-btn">🔍</button>
        <a class="btn-cta" href="#shop">Shop</a>
      </div>
    </div>
  </header>

  <main id="main">
    <!-- Hero: product-focused -->
    <section class="hero" aria-label="Hero">
      <div class="hero-left">
        <h1>Bold patterns. Timeless shapes.</h1>
        <p class="lead">New season collection — curated edit of dresses, home textiles and accessories. Fast browsing, accessible layout, and joyful patterns.</p>
        <p><a class="btn-cta" href="#shop">Shop the Edit</a></p>

        <div class="featured-strip" aria-label="Featured products">
          <!-- Product cards will be inserted by JS (demo placeholders) -->
          <div class="product-card small">
            <div class="thumb svg-thumb" aria-hidden="true"></div>
            <div class="meta">
              <strong>Print Dress</strong>
              <span class="price">€129</span>
            </div>
          </div>

          <div class="product-card small">
            <div class="thumb svg-thumb alt" aria-hidden="true"></div>
            <div class="meta">
              <strong>Pattern Cushion</strong>
              <span class="price">€49</span>
            </div>
          </div>

          <div class="product-card small">
            <div class="thumb svg-thumb alt2" aria-hidden="true"></div>
            <div class="meta">
              <strong>Canvas Tote</strong>
              <span class="price">€39</span>
            </div>
          </div>
        </div>
      </div>

      <div class="hero-right">
        <!-- Decorative pattern but still semantic: aria-hidden -->
        <div class="pattern-wrap" aria-hidden="true">
          <!-- SVG pattern composition for brand vibe -->
          <svg viewBox="0 0 600 600" class="pattern-svg" role="img" focusable="false" aria-hidden="true">
            <defs>
              <linearGradient id="g1" x1="0" x2="1"><stop offset="0" stop-color="#fff2f7"/><stop offset="1" stop-color="#fffef6"/></linearGradient>
            </defs>
            <rect width="100%" height="100%" rx="24" fill="url(#g1)"></rect>
            <g transform="translate(30,30)">
              <circle cx="160" cy="140" r="100" fill="#ffdce6"></circle>
              <rect x="40" y="260" width="420" height="110" rx="20" fill="#fff5e6"></rect>
            </g>
          </svg>
        </div>
      </div>
    </section>

    <!-- Shop / Categories -->
    <section id="shop" class="section">
      <div class="container">
        <h2>Shop by category</h2>
        <p class="muted">Browse our main categories — curated for quick discovery.</p>

        <div id="categories" class="categories-grid" role="list">
          <article class="category" role="listitem" tabindex="0">
            <img src="" data-src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='600' height='400'><rect width='100%' height='100%' fill='%23fff3e6'/><text x='50%' y='50%' font-size='22' text-anchor='middle' dominant-baseline='middle' fill='%23c07b3f'>Home</text></svg>" alt="Home category" class="lazy">
            <h3>Home</h3>
            <p class="muted">Textiles, ceramics and cushions.</p>
            <a class="btn-link" href="#">Browse</a>
          </article>

          <article class="category" role="listitem" tabindex="0">
            <img src="" data-src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='600' height='400'><rect width='100%' height='100%' fill='%23ffe6f0'/><text x='50%' y='50%' font-size='22' text-anchor='middle' dominant-baseline='middle' fill='%23c16b93'>Clothing</text></svg>" alt="Clothing category" class="lazy">
            <h3>Clothing</h3>
            <p class="muted">Dresses, tops and knitwear.</p>
            <a class="btn-link" href="#">Browse</a>
          </article>

          <article class="category" role="listitem" tabindex="0">
            <img src="" data-src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='600' height='400'><rect width='100%' height='100%' fill='%23e6fff7'/><text x='50%' y='50%' font-size='22' text-anchor='middle' dominant-baseline='middle' fill='%23007f77'>Bags</text></svg>" alt="Bags category" class="lazy">
            <h3>Bags</h3>
            <p class="muted">Totes, shoulder bags and small goods.</p>
            <a class="btn-link" href="#">Browse</a>
          </article>

          <article class="category" role="listitem" tabindex="0">
            <img src="" data-src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='600' height='400'><rect width='100%' height='100%' fill='%23f4e6ff'/><text x='50%' y='50%' font-size='22' text-anchor='middle' dominant-baseline='middle' fill='%236b4dbf'>Accessories</text></svg>" alt="Accessories category" class="lazy">
            <h3>Accessories</h3>
            <p class="muted">Scarves, pins and small gifts.</p>
            <a class="btn-link" href="#">Browse</a>
          </article>
        </div>
      </div>
    </section>

    <!-- Story (editorial) -->
    <section id="story" class="section pale">
      <div class="container story-grid">
        <div>
          <h2>About the prints</h2>
          <p class="muted">Marimekko's signature prints are rooted in organic shapes and joyful color. This prototype focuses on product discovery, white space, and subtle motion to emphasize key products.</p>
          <a class="btn-cta" href="#">Read the story</a>
        </div>
        <figure>
          <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='800' height='560'><rect width='100%' height='100%' fill='%23fff7f3'/><text x='50%' y='50%' font-size='20' text-anchor='middle' dominant-baseline='middle' fill='%23d8a3a3'>Editorial visual</text></svg>" alt="Editorial visual">
        </figure>
      </div>
    </section>
  </main>

  <footer id="contact" class="site-footer" role="contentinfo">
    <div class="container">
      <div class="foot-row">
        <div>© 2025 Marimekko — Redesign prototype · Not affiliated with Marimekko</div>
        <div class="foot-links">
          <a href="#">Privacy</a>
          <a href="#">Terms</a>
          <a href="#">Stores</a>
        </div>
      </div>
    </div>
  </footer>

  <!-- Product modal (accessible) -->
  <div id="productModal" class="modal" aria-hidden="true" role="dialog" aria-modal="true">
    <div class="modal-panel" role="document">
      <button class="modal-close" aria-label="Close product details">✕</button>
      <div class="modal-body">
        <div class="modal-thumb svg-thumb" aria-hidden="true"></div>
        <div>
          <h3 id="modalTitle">Product name</h3>
          <p class="muted" id="modalPrice">€0</p>
          <p class="muted">Short description placeholder for the product preview modal.</p>
          <p><a class="btn-cta" href="#">Add to cart</a></p>
        </div>
      </div>
    </div>
  </div>

  <script src="script.js" defer></script>
</body>
</html>
:root{
  --bg: #ffffff; --text:#111; --muted:#6b6b74; --accent:#ff4081; --accent-2:#00a6a6;
  --card:#fff; --radius:14px; --shadow: 0 12px 36px rgba(12,14,30,0.06);
  --container: 1200px;
}

*{box-sizing:border-box}
html,body{height:100%}
body{
  margin:0; font-family: Inter, "Noto Sans KR", system-ui, -apple-system, "Helvetica Neue", Arial;
  color:var(--text); background: linear-gradient(180deg,#fff 0%, #fbfbfd 100%);
  -webkit-font-smoothing:antialiased; line-height:1.45;
}

/* Skip link */
.skip-link{
  position: absolute; left:8px; top:-40px; background:#111;color:#fff;padding:8px 12px;border-radius:8px;
  z-index:200; transition: top .18s ease;
}
.skip-link:focus{ top:8px; }

/* header */
.site-header{position:sticky; top:0; z-index:80; backdrop-filter: blur(6px); background:rgba(255,255,255,0.85); border-bottom:1px solid rgba(0,0,0,0.04)}
.header-inner{max-width:var(--container); margin:0 auto; display:flex; align-items:center; justify-content:space-between; padding:12px 20px;}
.logo{font-weight:700; font-size:20px; letter-spacing:0.6px; text-decoration:none; color:var(--text)}
.global-nav{display:flex; align-items:center; gap:16px}
.nav-list{display:flex; gap:10px; list-style:none; margin:0; padding:0}
.nav-list a{padding:8px 10px; text-decoration:none; color:var(--muted); font-weight:600; border-radius:10px}
.nav-list a:hover, .nav-list a:focus{color:var(--text); background:rgba(0,0,0,0.03)}

.nav-toggle{display:none; background:transparent; border:0; font-weight:700;}
.header-actions{display:flex; gap:8px; align-items:center}
.icon-btn{border:0;background:transparent;font-size:18px;padding:8px;cursor:pointer}
.btn-cta{background:var(--accent); color:#fff; padding:10px 14px; border-radius:12px; text-decoration:none; font-weight:700}

/* hero */
.hero{display:grid; grid-template-columns:1fr 460px; gap:28px; align-items:center; padding:56px 20px; max-width:var(--container); margin:0 auto}
.hero-left h1{font-size:40px; margin:0; line-height:1.02}
.lead{color:var(--muted); margin-top:12px}
.featured-strip{display:flex; gap:10px; margin-top:22px; overflow:auto; padding-bottom:6px}
.product-card{background:linear-gradient(180deg,#fff,#fffaf6); border-radius:12px; padding:12px; box-shadow:var(--shadow); min-width:220px; display:flex; gap:12px; align-items:center}
.product-card.small{min-width:160px; padding:10px}
.thumb{width:86px; height:86px; border-radius:10px; flex-shrink:0; background:#fff}
.svg-thumb{background:linear-gradient(135deg,#fff2f7,#fff5e6); display:block; border:1px solid rgba(0,0,0,0.03)}
.svg-thumb.alt{background:linear-gradient(135deg,#fff5e6,#f3fff9)}
.svg-thumb.alt2{background:linear-gradient(135deg,#e6fff7,#f2ecff)}
.product-card .meta{display:flex; flex-direction:column}

/* hero-right pattern */
.pattern-wrap{width:100%; display:flex; justify-content:center}
.pattern-svg{width:420px; height:420px; border-radius:20px; box-shadow:var(--shadow)}

/* sections */
.section{padding:44px 20px}
.container{max-width:var(--container); margin:0 auto}
.categories-grid{display:grid; grid-template-columns:repeat(4,1fr); gap:18px; margin-top:18px}
.category{background:var(--card); border-radius:var(--radius); padding:16px; box-shadow: 0 8px 20px rgba(10,10,30,0.04); display:flex; flex-direction:column; gap:10px}
.category img{width:100%; height:160px; object-fit:cover; border-radius:10px; background:#f6f6f8}
.category h3{margin:0}
.muted{color:var(--muted)}

/* story */
.pale{background:linear-gradient(180deg,#fffbfe,#f7fbff)}
.story-grid{display:grid; grid-template-columns:1fr 420px; gap:20px; align-items:center}

/* footer */
.site-footer{border-top:1px solid rgba(0,0,0,0.03); padding:22px 20px}
.foot-row{max-width:var(--container); margin:0 auto; display:flex; justify-content:space-between; gap:12px; align-items:center}

/* modal */
.modal{position:fixed; inset:0; display:none; align-items:center; justify-content:center; background:rgba(0,0,0,0.4); z-index:120}
.modal.open{display:flex}
.modal-panel{background:white; border-radius:12px; padding:18px; width:min(920px,94vw); box-shadow:0 40px 90px rgba(6,8,30,0.3)}
.modal-body{display:flex; gap:18px; align-items:center}
.modal-close{position:absolute; right:18px; top:12px; border:0; background:transparent; font-size:18px; cursor:pointer}

/* utilities */
.btn-link{display:inline-block;padding:8px 12px;border-radius:10px;text-decoration:none;background:rgba(0,0,0,0.03); color:var(--text)}
.muted{color:var(--muted)}

/* responsive */
@media (max-width:1080px){
  .hero{grid-template-columns:1fr; padding:36px 18px}
  .story-grid{grid-template-columns:1fr}
  .categories-grid{grid-template-columns:repeat(2,1fr)}
  .pattern-svg{width:320px;height:320px}
}
@media (max-width:640px){
  .nav-list{display:none} .nav-toggle{display:inline-block}
  .featured-strip{gap:8px}
  .categories-grid{grid-template-columns:1fr}
  .product-card{min-width:160px}
  .hero-left h1{font-size:26px}
}
// Basic interactions: mobile nav toggle, lazy images, modal demo, keyboard support
document.addEventListener('DOMContentLoaded', function(){
  // Mobile nav toggle
  const navToggle = document.getElementById('navToggle');
  const navList = document.getElementById('navList');
  if(navToggle){
    navToggle.addEventListener('click', ()=>{
      const expanded = navToggle.getAttribute('aria-expanded') === 'true';
      navToggle.setAttribute('aria-expanded', String(!expanded));
      if(!expanded) navList.style.display = 'flex';
      else navList.style.display = '';
    });
  }

  // Lazy load images (simple)
  const lazyImgs = document.querySelectorAll('img.lazy');
  const lazyObserver = new IntersectionObserver(entries=>{
    entries.forEach(e=>{
      if(e.isIntersecting){
        const img = e.target;
        const src = img.dataset.src;
        if(src) img.src = src;
        img.classList.remove('lazy');
        lazyObserver.unobserve(img);
      }
    });
  }, {rootMargin:'200px 0px'});

  lazyImgs.forEach(i => lazyObserver.observe(i));

  // Modal demo (product preview)
  const modal = document.getElementById('productModal');
  const modalClose = document.querySelector('.modal-close');
  document.querySelectorAll('.product-card').forEach(pc=>{
    pc.addEventListener('click', ()=>{
      if(!modal) return;
      modal.classList.add('open');
      modal.setAttribute('aria-hidden','false');
      document.body.style.overflow = 'hidden';
    });
  });
  if(modalClose){
    modalClose.addEventListener('click', closeModal);
  }
  if(modal){
    modal.addEventListener('click', (e)=>{
      if(e.target === modal) closeModal();
    });
  }
  function closeModal(){
    modal.classList.remove('open');
    modal.setAttribute('aria-hidden','true');
    document.body.style.overflow = '';
  }

  // Keyboard: close modal with Escape
  document.addEventListener('keydown', (e)=>{
    if(e.key === 'Escape'){
      if(modal && modal.classList.contains('open')) closeModal();
    }
  });

  // Small fade-in sequence for hero/sections for polish
  document.querySelectorAll('.hero, .section').forEach((el, i)=>{
    setTimeout(()=> el.classList.add('in'), 80 + i*80);
  });
});
