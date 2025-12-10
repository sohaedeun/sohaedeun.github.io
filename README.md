<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Marimekko-style Redesign — Desktop</title>
  <meta name="description" content="Desktop-first, minimal & patterned Marimekko-style redesign. Categories: 의류, 가방, 액세서리, 리빙.">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header class="site-header" role="banner">
    <div class="container">
      <a class="logo" href="index.html">sohaedeun · redesign</a>
      <nav class="main-nav" role="navigation" aria-label="Main">
        <a href="#clothing">의류</a>
        <a href="#bags">가방</a>
        <a href="#accessory">액세서리</a>
        <a href="#living">리빙</a>
        <a class="shop-btn" href="#shop">Shop</a>
      </nav>
    </div>
  </header>

  <main>
    <!-- Hero -->
    <section class="hero">
      <div class="hero-copy">
        <h1>Bold prints. Calm layout.</h1>
        <p class="lead">A desktop-first redesign that fixes the original site's visual clutter: clear hierarchy, generous whitespace, consistent product cards, and pattern accents that keep brand identity without overwhelming the shopping flow.</p>
        <p class="muted">Categories: 의류 · 가방 · 액세서리 · 리빙</p>
      </div>

      <div class="hero-visual" aria-hidden="true">
        <!-- Pattern accent (decorative) -->
        <svg viewBox="0 0 600 600" class="pattern" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="pattern">
          <defs>
            <linearGradient id="g" x1="0" x2="1">
              <stop offset="0" stop-color="#fff5f9"/>
              <stop offset="1" stop-color="#fffaf0"/>
            </linearGradient>
            <pattern id="dots" width="40" height="40" patternUnits="userSpaceOnUse">
              <rect width="40" height="40" fill="transparent"/>
              <circle cx="10" cy="10" r="4" fill="#ffdce6" opacity="0.9"/>
            </pattern>
          </defs>
          <rect width="100%" height="100%" fill="url(#g)"></rect>
          <rect width="100%" height="100%" fill="url(#dots)" opacity="0.12"></rect>
          <g transform="translate(40,40)">
            <ellipse cx="180" cy="140" rx="120" ry="100" fill="#ffe6f0"></ellipse>
            <rect x="40" y="260" rx="20" width="420" height="110" fill="#fff5e6"></rect>
            <circle cx="480" cy="60" r="40" fill="#e6fff6"></circle>
          </g>
        </svg>
      </div>
    </section>

    <!-- Key improvements summary -->
    <section class="improvements container">
      <h2>단점 보완 핵심 포인트 (데스크탑 전용)</h2>
      <ol>
        <li><strong>시각적 우선순위 부여</strong> — 헤더·히어로·제품 그리드로 정보 계층 정리.</li>
        <li><strong>제품 카드 통일</strong> — 동일 비율(4:3) 이미지, 균일한 타이포, hover 상태로 주요 액션 노출.</li>
        <li><strong>배너/세일 노출 최소화</strong> — 중요한 캠페인만 Hero에 배치하고, 제품 카드의 세일 뱃지는 절제.</li>
        <li><strong>브랜드 패턴 적용</strong> — 배경/카드 포인트로 패턴 사용해 감성 유지, 정보 집중 방해 최소화.</li>
        <li><strong>스토리 강조 영역</strong> — 스토리/캠페인 섹션을 메인에 추가하여 브랜드 메시지 제공.</li>
        <li><strong>데스크탑 레이아웃 고정</strong> — 큰 화면에 맞춘 그리드와 여백, 가독성 중심 타이포.</li>
      </ol>
    </section>

    <!-- Shop anchor -->
    <section id="shop" class="container shop-overview">
      <h2>Shop Overview</h2>
      <p class="muted">Quick access to four curated categories. Click a category to jump to its product grid below.</p>
      <div class="category-tiles">
        <a class="tile" href="#clothing">
          <img src="https://picsum.photos/id/1015/560/420" alt="의류">
          <div class="tile-label">의류</div>
        </a>
        <a class="tile" href="#bags">
          <img src="https://picsum.photos/id/1003/560/420" alt="가방">
          <div class="tile-label">가방</div>
        </a>
        <a class="tile" href="#accessory">
          <img src="https://picsum.photos/id/1022/560/420" alt="액세서리">
          <div class="tile-label">액세서리</div>
        </a>
        <a class="tile" href="#living">
          <img src="https://picsum.photos/id/1025/560/420" alt="리빙">
          <div class="tile-label">리빙</div>
        </a>
      </div>
    </section>

    <!-- Category: Clothing -->
    <section id="clothing" class="container category">
      <div class="section-head">
        <h2>의류</h2>
        <p class="muted">Selected apparel — clear photography, clean cards, essential product info only.</p>
      </div>

      <div class="product-grid">
        <article class="product-card" tabindex="0" data-product='{"title":"Flower Dress","price":"₩159,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1015/560/420" alt="Flower Dress"></div>
          <div class="card-body">
            <h3>Flower Dress</h3>
            <div class="meta muted">의류 · S–XL</div>
            <div class="price">₩159,000</div>
          </div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Stripe Shirt","price":"₩89,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1005/560/420" alt="Stripe Shirt"></div>
          <div class="card-body">
            <h3>Stripe Shirt</h3>
            <div class="meta muted">의류 · S–XL</div>
            <div class="price">₩89,000</div>
          </div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Pleat Skirt","price":"₩119,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1027/560/420" alt="Pleat Skirt"></div>
          <div class="card-body">
            <h3>Pleat Skirt</h3>
            <div class="meta muted">의류</div>
            <div class="price">₩119,000</div>
          </div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Summer Coat","price":"₩199,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1001/560/420" alt="Summer Coat"></div>
          <div class="card-body">
            <h3>Summer Coat</h3>
            <div class="meta muted">의류</div>
            <div class="price">₩199,000</div>
          </div>
        </article>
      </div>
    </section>

    <!-- Category: Bags -->
    <section id="bags" class="container category">
      <div class="section-head">
        <h2>가방</h2>
        <p class="muted">Totes, shoulder bags and small leather goods. Product-first presentation with minimal chrome.</p>
      </div>

      <div class="product-grid">
        <article class="product-card" tabindex="0" data-product='{"title":"Canvas Tote","price":"₩45,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1003/560/420" alt="Canvas Tote"></div>
          <div class="card-body"><h3>Canvas Tote</h3><div class="meta muted">가방</div><div class="price">₩45,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Leather Crossbody","price":"₩129,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1010/560/420" alt="Leather Crossbody"></div>
          <div class="card-body"><h3>Leather Crossbody</h3><div class="meta muted">가방</div><div class="price">₩129,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Mini Pouch","price":"₩25,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1012/560/420" alt="Mini Pouch"></div>
          <div class="card-body"><h3>Mini Pouch</h3><div class="meta muted">가방</div><div class="price">₩25,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Weekender","price":"₩199,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1021/560/420" alt="Weekender"></div>
          <div class="card-body"><h3>Weekender</h3><div class="meta muted">가방</div><div class="price">₩199,000</div></div>
        </article>
      </div>
    </section>

    <!-- Category: Accessory -->
    <section id="accessory" class="container category">
      <div class="section-head">
        <h2>액세서리</h2>
        <p class="muted">Scarves, jewelry, and small items — shown with prominent photography and concise copy.</p>
      </div>

      <div class="product-grid">
        <article class="product-card" tabindex="0" data-product='{"title":"Silk Scarf","price":"₩39,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1022/560/420" alt="Silk Scarf"></div>
          <div class="card-body"><h3>Silk Scarf</h3><div class="meta muted">액세서리</div><div class="price">₩39,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Ceramic Mug","price":"₩27,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1018/560/420" alt="Ceramic Mug"></div>
          <div class="card-body"><h3>Ceramic Mug</h3><div class="meta muted">리빙·액세서리</div><div class="price">₩27,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Leather Keyring","price":"₩19,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1019/560/420" alt="Leather Keyring"></div>
          <div class="card-body"><h3>Leather Keyring</h3><div class="meta muted">액세서리</div><div class="price">₩19,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Enamel Pin","price":"₩9,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1016/560/420" alt="Enamel Pin"></div>
          <div class="card-body"><h3>Enamel Pin</h3><div class="meta muted">액세서리</div><div class="price">₩9,000</div></div>
        </article>
      </div>
    </section>

    <!-- Category: Living -->
    <section id="living" class="container category">
      <div class="section-head">
        <h2>리빙</h2>
        <p class="muted">Textiles, cushions and small home accessories — emphasis on texture and pattern photography.</p>
      </div>

      <div class="product-grid">
        <article class="product-card" tabindex="0" data-product='{"title":"Pattern Cushion","price":"₩49,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1011/560/420" alt="Pattern Cushion"></div>
          <div class="card-body"><h3>Pattern Cushion</h3><div class="meta muted">리빙</div><div class="price">₩49,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Tablecloth","price":"₩69,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1025/560/420" alt="Tablecloth"></div>
          <div class="card-body"><h3>Tablecloth</h3><div class="meta muted">리빙</div><div class="price">₩69,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Ceramic Vase","price":"₩89,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1020/560/420" alt="Ceramic Vase"></div>
          <div class="card-body"><h3>Ceramic Vase</h3><div class="meta muted">리빙</div><div class="price">₩89,000</div></div>
        </article>

        <article class="product-card" tabindex="0" data-product='{"title":"Kitchen Towel","price":"₩15,000"}'>
          <div class="img-wrap"><img src="https://picsum.photos/id/1023/560/420" alt="Kitchen Towel"></div>
          <div class="card-body"><h3>Kitchen Towel</h3><div class="meta muted">리빙</div><div class="price">₩15,000</div></div>
        </article>
      </div>
    </section>

    <!-- Story/Footer CTA -->
    <section class="container story-cta">
      <h3>브랜드 스토리</h3>
      <p class="muted">패턴의 유래와 제작 과정, 지속가능성에 대한 메시지를 간결하게 전달합니다. (리디자인에 포함된 스토리 블록 예시)</p>
    </section>

  </main>

  <footer class="site-footer container">
    <div class="footer-inner">
      <div>© 2025 sohaedeun · Redesign prototype — Desktop only</div>
      <nav class="footer-nav" aria-label="Footer">
        <a href="#clothing">의류</a>
        <a href="#bags">가방</a>
        <a href="#accessory">액세서리</a>
        <a href="#living">리빙</a>
      </nav>
    </div>
  </footer>

  <script>
    // quick client-side product quickview (desktop-focused)
    document.addEventListener('DOMContentLoaded', function(){
      const cards = document.querySelectorAll('.product-card');
      cards.forEach(card => {
        card.addEventListener('mouseenter', () => card.classList.add('hover'));
        card.addEventListener('mouseleave', () => card.classList.remove('hover'));
        card.addEventListener('click', () => {
          const data = JSON.parse(card.dataset.product || '{}');
          alert(data.title + " — " + (data.price || ""));
        });
      });
    });
  </script>
</body>
</html>
/* Desktop-focused redesign styles (no mobile optimizations) */
:root{
  --bg:#ffffff;
  --surface:#ffffff;
  --text:#111827;
  --muted:#6b7280;
  --accent:#e83e8c;
  --accent-2:#00a6a6;
  --shadow: rgba(12,14,20,0.06);
  --container:1200px;
}
*{box-sizing:border-box}
html,body{height:100%;font-family:Inter,system-ui,-apple-system,'Noto Sans KR',sans-serif;color:var(--text);background:var(--bg);margin:0}
a{color:inherit;text-decoration:none}
.container{max-width:var(--container);margin:0 auto;padding:40px 28px}

/* Header */
.site-header{position:sticky;top:0;background:linear-gradient(180deg,rgba(255,255,255,0.96),rgba(255,255,255,0.9));border-bottom:1px solid rgba(0,0,0,0.04);z-index:90}
.site-header .container{display:flex;align-items:center;justify-content:space-between;padding:18px 28px}
.logo{font-weight:800;letter-spacing:0.8px}
.main-nav{display:flex;gap:18px;align-items:center}
.main-nav a{padding:8px 12px;border-radius:8px;color:var(--muted);font-weight:600}
.shop-btn{background:var(--accent);color:#fff;padding:8px 12px;border-radius:10px;font-weight:800;box-shadow:0 6px 16px var(--shadow)}

/* Hero */
.hero{display:flex;gap:40px;align-items:center;padding:48px 0 20px}
.hero-copy{flex:1;max-width:760px}
.hero h1{font-size:48px;margin:0 0 12px}
.lead{font-size:18px;color:var(--muted);max-width:60ch}
.hero-visual{width:420px;height:420px;border-radius:18px;overflow:hidden;box-shadow:0 30px 60px var(--shadow)}

/* Improvements */
.improvements{background:linear-gradient(180deg,#fff,#fbfbff);border-radius:12px;padding:22px;margin:30px 0;border:1px solid rgba(0,0,0,0.03)}
.improvements ol{margin:10px 0 0 20px}

/* Category tiles */
.category-tiles{display:grid;grid-template-columns:repeat(4,1fr);gap:18px;margin-top:18px}
.tile{position:relative;display:block;border-radius:12px;overflow:hidden;border:1px solid rgba(0,0,0,0.04);box-shadow:0 12px 30px var(--shadow)}
.tile img{width:100%;height:100%;object-fit:cover;display:block}
.tile-label{position:absolute;left:18px;bottom:18px;background:rgba(255,255,255,0.9);padding:8px 12px;border-radius:8px;font-weight:800}

/* Section head */
.section-head{display:flex;align-items:baseline;justify-content:space-between;gap:20px;margin-bottom:12px}
.section-head h2{margin:0;font-size:26px}

/* Product grid (desktop-only) */
.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:22px}
.product-card{background:var(--surface);border-radius:12px;overflow:hidden;border:1px solid rgba(0,0,0,0.04);transition:transform .18s ease,box-shadow .18s ease}
.product-card:hover{transform:translateY(-8px);box-shadow:0 30px 60px var(--shadow)}
.img-wrap{width:100%;height:0;padding-bottom:75%;position:relative;overflow:hidden}
.img-wrap img{position:absolute;inset:0;width:100%;height:100%;object-fit:cover;display:block}
.card-body{padding:14px}
.card-body h3{margin:0;font-size:16px}
.meta{margin-top:6px;font-size:13px;color:var(--muted)}
.price{margin-top:10px;font-weight:800}

/* Story CTA */
.story-cta{margin:36px 0;padding:22px;border-radius:12px;background:linear-gradient(180deg,#fff,#fff8fb);border:1px solid rgba(0,0,0,0.03)}

/* Footer */
.site-footer{border-top:1px solid #f1f5f9;padding:28px 0;margin-top:40px}
.footer-inner{display:flex;align-items:center;justify-content:space-between;gap:20px}

/* Desktop-only: explicitly disable responsive adjustments */
/* No media queries: layout remains desktop-first */
