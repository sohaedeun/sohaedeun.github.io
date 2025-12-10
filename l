<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Marimekko — Redesign (Prototype)</title>
<meta name="description" content="Marimekko redesign prototype — responsive landing, category, story, and product preview."/>
<style>
  /* Reset & base */
  :root{
    --bg:#fff; --text:#111; --accent:#e91e63; --muted:#666;
    --card:#fafafa; --glass: rgba(255,255,255,0.6);
  }
  *{box-sizing:border-box}
  html,body{height:100%}
  body{
    margin:0;font-family:Inter, ui-sans-serif, system-ui, -apple-system, "Noto Sans KR", "Helvetica Neue", Arial;
    color:var(--text);background:linear-gradient(180deg,#fff 0%, #f7f7fb 100%);
    -webkit-font-smoothing:antialiased; -moz-osx-font-smoothing:grayscale;
    line-height:1.4;
  }

  /* Header */
  .header{
    position:sticky; top:0; z-index:60; display:flex; align-items:center; justify-content:space-between;
    padding:14px 28px; backdrop-filter: blur(6px); background: rgba(255,255,255,0.6);
    border-bottom:1px solid rgba(0,0,0,0.04);
  }
  .logo{font-weight:700; letter-spacing:0.6px; font-size:18px}
  nav{display:flex; gap:12px; align-items:center}
  nav a{color:var(--text); text-decoration:none; font-weight:600; padding:8px 10px; border-radius:8px}
  nav a:hover{background:rgba(0,0,0,0.03)}
  #darkToggle{border:0;background:transparent;padding:8px;cursor:pointer;font-weight:600}

  /* Mobile menu */
  .menu-btn{display:none; background:transparent;border:0;font-size:20px}
  @media (max-width:880px){
    nav a:not(.cta){display:none}
    .menu-btn{display:inline-block}
  }

  /* Hero */
  .hero{
    padding:56px 6vw; display:grid; grid-template-columns:1fr 480px; gap:36px; align-items:center;
    min-height:68vh;
  }
  .hero .copy h1{font-size:44px;margin:0 0 14px;line-height:1.02}
  .hero .copy p{color:var(--muted); margin:0 0 18px; font-size:16px}
  .cta{display:inline-block; padding:12px 18px; border-radius:12px; background:var(--accent); color:white; text-decoration:none; font-weight:700}
  .hero .visual{
    display:flex; align-items:center; justify-content:center;
  }

  /* Pattern card (Marimekko vibe) */
  .pattern-card{
    width:100%; max-width:420px; aspect-ratio:1/1; border-radius:18px; overflow:hidden;
    display:grid; place-items:center; box-shadow: 0 12px 30px rgba(20,20,50,0.06);
    background:conic-gradient(from 160deg at 30% 20%, #ffdede 0 20%, #fff2dd 20% 40%, #e8ffe9 40% 60%, #e6f7ff 60% 80%, #f4e6ff 80% 100%);
    transform:rotate(-4deg) scale(1); transition:transform .6s cubic-bezier(.2,.9,.25,1);
  }
  .pattern-card:hover{transform:rotate(-2deg) scale(1.03)}

  /* Category grid */
  .grid{padding:36px 6vw 80px; display:grid; gap:18px}
  .category-grid{display:grid; grid-template-columns:repeat(4,1fr); gap:16px}
  .cat{background:var(--card); border-radius:14px; padding:18px; min-height:120px; display:flex; flex-direction:column; justify-content:space-between}
  .cat h3{margin:0; font-size:16px}
  .cat p{margin:6px 0 0;color:var(--muted); font-size:13px}

  @media (max-width:1100px){ .category-grid{grid-template-columns:repeat(3,1fr)} }
  @media (max-width:720px){ .hero{grid-template-columns:1fr; padding:36px 5vw} .category-grid{grid-template-columns:repeat(2,1fr)} }

  /* Story */
  .story{background:linear-gradient(180deg, rgba(255,255,255,0.6), rgba(255,255,255,0.4)); padding:36px 6vw; border-top:1px solid rgba(0,0,0,0.03)}
  .story .row{display:flex; gap:20px; align-items:center}
  .story img{width:260px; border-radius:12px; object-fit:cover; box-shadow:0 8px 22px rgba(10,10,30,0.06)}

  /* Footer */
  .footer{padding:28px 6vw; font-size:13px; color:var(--muted); border-top:1px solid rgba(0,0,0,0.03)}

  /* Simple fade-in animation */
  .fade{opacity:0; transform:translateY(12px); transition:opacity .6s ease, transform .6s ease}
  .fade.in{opacity:1; transform:none}

  /* Product modal */
  .modal{position:fixed; inset:0; display:none; align-items:center; justify-content:center; z-index:120}
  .modal.open{display:flex}
  .modal .panel{width:min(920px,94vw); background:white; border-radius:14px; padding:20px; box-shadow:0 40px 80px rgba(10,10,40,0.2)}
  .close-btn{border:0;background:transparent;font-size:18px; cursor:pointer}

  /* tiny utility */
  .muted{color:var(--muted)}
</style>
</head>
<body>
  <header class="header">
    <div class="logo">Marimekko</div>
    <nav>
      <a href="index.html" class="active">Home</a>
      <a href="category.html">Category</a>
      <a href="story.html">Story</a>
      <button id="darkToggle" aria-label="toggle theme">Dark</button>
      <button class="menu-btn" id="menuBtn" aria-label="open menu">☰</button>
    </nav>
  </header>

  <main>
    <section class="hero fade" id="hero">
      <div class="copy">
        <h1>Bold patterns. Bold life.</h1>
        <p>Marimekko-inspired redesign — colorful patterns, clean layout, and joyful micro-interactions. This prototype includes a responsive hero, category grid and a simple product preview modal suitable for GitHub Pages.</p>
        <p><a href="#categories" class="cta">Explore categories</a></p>
      </div>

      <div class="visual">
        <div class="pattern-card" id="patternCard" role="img" aria-label="pattern preview">
          <!-- Decorative repeating motif using SVG -->
          <svg viewBox="0 0 400 400" width="92%" height="92%" preserveAspectRatio="xMidYMid meet" aria-hidden="true">
            <defs>
              <pattern id="dot" width="40" height="40" patternUnits="userSpaceOnUse">
                <rect width="40" height="40" fill="transparent"></rect>
                <circle cx="12" cy="12" r="6"></circle>
              </pattern>
            </defs>
            <rect width="400" height="400" fill="url(#dot)" opacity="0.12"></rect>
            <g transform="translate(40,40)">
              <circle cx="120" cy="100" r="68" fill="#ffe6f0"></circle>
              <rect x="60" y="170" width="220" height="80" rx="18" fill="#fff5e6"></rect>
              <ellipse cx="240" cy="60" rx="46" ry="28" fill="#e6fff6"></ellipse>
              <g opacity="0.9">
                <rect x="10" y="10" width="70" height="70" rx="10" fill="#fce4ec"></rect>
                <rect x="330" y="320" width="50" height="50" rx="8" fill="#f2e6ff"></rect>
              </g>
            </g>
          </svg>
        </div>
      </div>
    </section>

    <section id="categories" class="grid">
      <h2 style="margin:0 0 8px 0;padding-left:4px">Categories</h2>
      <div class="category-grid">
        <article class="cat fade" tabindex="0">
          <div>
            <h3>Home Textiles</h3>
            <p class="muted">Cushions, curtains, and tableware with signature prints.</p>
          </div>
          <div style="display:flex;gap:8px;align-items:center">
            <button class="open-product" data-product='{"title":"Pattern Cushion","price":"$69"}'>View</button>
            <span class="muted">12 items</span>
          </div>
        </article>

        <article class="cat fade" tabindex="0">
          <div>
            <h3>Clothing</h3>
            <p class="muted">Dresses and apparel — playful colors & bold shapes.</p>
          </div>
          <div style="display:flex;gap:8px;align-items:center">
            <button class="open-product" data-product='{"title":"Summer Dress","price":"$129"}'>View</button>
            <span class="muted">24 items</span>
          </div>
        </article>

        <article class="cat fade" tabindex="0">
          <div>
            <h3>Bags</h3>
            <p class="muted">Canvas bags and totes with joyful patterns.</p>
          </div>
          <div style="display:flex;gap:8px;align-items:center">
            <button class="open-product" data-product='{"title":"Mini Tote","price":"$45"}'>View</button>
            <span class="muted">8 items</span>
          </div>
        </article>

        <article class="cat fade" tabindex="0">
          <div>
            <h3>Accessories</h3>
            <p class="muted">Scarves, ceramics, and small gift items.</p>
          </div>
          <div style="display:flex;gap:8px;align-items:center">
            <button class="open-product" data-product='{"title":"Ceramic Mug","price":"$27"}'>View</button>
            <span class="muted">16 items</span>
          </div>
        </article>
      </div>
    </section>

    <section class="story fade" id="story">
      <div class="row">
        <div style="flex:1">
          <h2 style="margin:0 0 8px 0">Our Story</h2>
          <p class="muted">Inspired by timeless prints and modern moods. This prototype focuses on joyful composition and smooth interactions that echo Marimekko's design language while keeping the layout light and accessible.</p>
          <p style="margin-top:12px"><a class="cta" href="story.html">Read story</a></p>
        </div>
        <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='800' height='600'><rect width='100%' height='100%' fill='%23f8f5ff'/><text x='50%' y='50%' dominant-baseline='middle' text-anchor='middle' font-family='Arial' font-size='28' fill='%23c2b8ef'>Story visual placeholder</text></svg>" alt="story visual" />
      </div>
    </section>

  </main>

  <footer class="footer">
    © 2025 Marimekko Redesign — prototype for GitHub Pages · Built for demo
  </footer>

  <!-- Product modal -->
  <div class="modal" id="modal" role="dialog" aria-hidden="true">
    <div class="panel" role="document">
      <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:8px">
        <strong id="modalTitle">Product</strong>
        <button class="close-btn" id="closeModal" aria-label="close">✕</button>
      </div>
      <div id="modalBody" style="display:flex;gap:18px;align-items:center">
        <div style="width:42%;min-width:160px;height:180px;border-radius:12px; background:linear-gradient(135deg,#fff,#f6f6ff);display:grid;place-items:center">
          <svg width="120" height="120" viewBox="0 0 120 120" aria-hidden="true"><rect width="120" height="120" rx="12" fill="#fff"/><circle cx="60" cy="60" r="30" fill="#ffe6f0"/></svg>
        </div>
        <div style="flex:1">
          <p id="modalPrice" class="muted">$0</p>
          <p class="muted" style="margin-top:8px">Simple product preview modal. Use this for prototyping quick interactions before connecting a CMS or e-commerce backend.</p>
          <p style="margin-top:12px"><button class="cta">Add to cart</button></p>
        </div>
      </div>
    </div>
  </div>

<script>
  // Small script: fade-in on scroll, modal open, dark toggle
  document.addEventListener('DOMContentLoaded', function(){
    // Fade in elements
    const faders = document.querySelectorAll('.fade');
    const obs = new IntersectionObserver(entries=>{
      entries.forEach(e=>{
        if(e.isIntersecting) e.target.classList.add('in');
      });
    }, {threshold:0.12});
    faders.forEach(f=>obs.observe(f));

    // Product modal
    const modal = document.getElementById('modal');
    const modalTitle = document.getElementById('modalTitle');
    const modalPrice = document.getElementById('modalPrice');
    document.querySelectorAll('.open-product').forEach(btn=>{
      btn.addEventListener('click', ()=>{
        const data = JSON.parse(btn.dataset.product || '{}');
        modalTitle.textContent = data.title || 'Product';
        modalPrice.textContent = data.price || '$0';
        modal.classList.add('open');
        modal.setAttribute('aria-hidden','false');
      });
    });
    document.getElementById('closeModal').addEventListener('click', ()=>{
      modal.classList.remove('open'); modal.setAttribute('aria-hidden','true');
    });
    modal.addEventListener('click', (e)=>{
      if(e.target === modal) { modal.classList.remove('open'); modal.setAttribute('aria-hidden','true'); }
    });

    // Dark toggle (simple)
    const darkToggle = document.getElementById('darkToggle');
    let dark = false;
    darkToggle.addEventListener('click', ()=>{
      dark = !dark;
      if(dark){
        document.documentElement.style.setProperty('--bg','#0b0b10');
        document.documentElement.style.setProperty('--text','#f3f3f6');
        document.documentElement.style.setProperty('--card','#0f0f14');
        document.documentElement.style.setProperty('--muted','#bdbbd0');
        document.body.style.background = 'linear-gradient(180deg,#06060a 0%, #0e0e15 100%)';
        darkToggle.textContent = 'Light';
      } else {
        document.documentElement.style.removeProperty('--bg');
        document.documentElement.style.removeProperty('--text');
        document.documentElement.style.removeProperty('--card');
        document.documentElement.style.removeProperty('--muted');
        document.body.style.background = 'linear-gradient(180deg,#fff 0%, #f7f7fb 100%)';
        darkToggle.textContent = 'Dark';
      }
    });

    // Mobile menu stub
    const menuBtn = document.getElementById('menuBtn');
    menuBtn.addEventListener('click', ()=>{
      const links = document.querySelectorAll('nav a');
      links.forEach(a=> a.style.display = a.style.display === 'inline-block' ? '' : 'inline-block');
    });

    // Simple pattern card subtle motion
    const pc = document.getElementById('patternCard');
    pc.addEventListener('mousemove', (e)=>{
      const r = pc.getBoundingClientRect();
      const mx = (e.clientX - r.left) / r.width - 0.5;
      const my = (e.clientY - r.top) / r.height - 0.5;
      pc.style.transform = `rotate(${mx*6 - 4}deg) translate3d(${mx*6}px,${my*6}px,0) scale(1.02)`;
    });
    pc.addEventListener('mouseleave', ()=> pc.style.transform = 'rotate(-4deg) scale(1)');
  });
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marimekko Redesign</title>
<link rel="stylesheet" href="style.css">
<script defer src="script.js"></script>
</head>
<body>
<header class="header">
  <div class="logo">Marimekko</div>
  <nav>
    <a href="index.html">Home</a>
    <a href="category.html">Category</a>
    <a href="story.html">Story</a>
    <button id="darkToggle">Dark</button>
  </nav>
</header>
<main>
<section class='fade'><h2>Category</h2><div class='grid'><div class='card'>Item A</div><div class='card'>Item B</div></div></section></main>
<footer class="footer">© 2025 Marimekko Redesign</footer>
</body></html>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marimekko Redesign</title>
<link rel="stylesheet" href="style.css">
<script defer src="script.js"></script>
</head>
<body>
<header class="header">
  <div class="logo">Marimekko</div>
  <nav>
    <a href="index.html">Home</a>
    <a href="category.html">Category</a>
    <a href="story.html">Story</a>
    <button id="darkToggle">Dark</button>
  </nav>
</header>
<main>
<section class='fade'><h2>Our Story</h2><p>Marimekko’s legacy reimagined.</p></section></main>
<footer class="footer">© 2025 Marimekko Redesign</footer>
</body></html>

body { margin:0; font-family:Arial; background:#fff; color:#222; transition:0.3s; }
header { display:flex; justify-content:space-between; padding:20px; }
.grid { display:grid; grid-template-columns:repeat(auto-fit,minmax(200px,1fr)); gap:20px; }
.card { padding:40px; background:#f5f5f5; border-radius:20px; animation:float 4s infinite ease-in-out; }
.fade { opacity:0; animation:fadeIn 1s forwards; }

/* pattern background */
.hero { height:60vh; background:url('assets/pattern.svg'); background-size:cover; display:flex; align-items:center; justify-content:center; }

/* dark mode */
body.dark { background:#111; color:#eee; }
body.dark .card { background:#222; }

@keyframes fadeIn { to { opacity:1; } }
@keyframes float { 0%{transform:translateY(0);} 50%{transform:translateY(-10px);} 100%{transform:translateY(0);} }
document.addEventListener('DOMContentLoaded',()=>{
  document.getElementById('darkToggle').onclick=()=>{
    document.body.classList.toggle('dark');
  };
});

<svg width="200" height="200" xmlns="http://www.w3.org/2000/svg">
<circle cx="100" cy="100" r="80" fill="#ff6f61" />
<circle cx="60" cy="60" r="30" fill="#ffffff" />
<circle cx="140" cy="140" r="30" fill="#ffffff" />
</svg>
