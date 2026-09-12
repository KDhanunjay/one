<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce(Test1)</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
:root{
  --bg:#f5f7fb;--surface:#fff;--surface-2:#eef2f7;--ink:#101828;--muted:#667085;
  --line:#e4e7ec;--brand:#635bff;--brand-2:#7c3aed;--success:#12b76a;
  --danger:#f04438;--shadow:0 12px 40px rgba(16,24,40,.08);--shadow-lg:0 24px 70px rgba(16,24,40,.14);
  --radius:22px;--radius-sm:14px;--container:1280px;--transition:.25s ease
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:Inter,system-ui,-apple-system,sans-serif;background:var(--bg);color:var(--ink);line-height:1.5}
a{color:inherit;text-decoration:none} img{display:block;max-width:100%}
button,input{font:inherit} button{border:0;background:none;color:inherit;cursor:pointer}
.container{width:min(100% - 40px,var(--container));margin:auto}
.muted{color:var(--muted)}
.sr-only{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0,0,0,0)}

.btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;padding:13px 21px;border-radius:12px;font-size:14px;font-weight:700;transition:var(--transition);border:1px solid transparent}
.btn-primary{background:var(--brand);color:#fff;box-shadow:0 8px 20px rgba(99,91,255,.24)}
.btn-primary:hover{background:#5148e8;transform:translateY(-2px)}
.btn-secondary{background:#101828;color:#fff}.btn-secondary:hover{background:#273248;transform:translateY(-2px)}
.btn-outline{background:#fff;border-color:var(--line)}.btn-outline:hover{border-color:#b9b7ff;color:var(--brand)}
.btn-ghost{color:#fff;border-color:rgba(255,255,255,.3);background:rgba(255,255,255,.1)}
.btn-ghost:hover{background:#fff;color:#101828}
.btn-sm{padding:9px 14px;font-size:13px}

header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.88);backdrop-filter:blur(20px);border-bottom:1px solid rgba(228,231,236,.8)}
.header-inner{min-height:76px;display:flex;align-items:center;gap:28px}
.brand{display:flex;align-items:center;gap:10px;font-size:22px;font-weight:800;letter-spacing:-.7px;white-space:nowrap}
.brand i{color:var(--brand);font-size:24px}.brand .accent{color:var(--brand)}
.main-nav{flex:1}.main-nav ul{display:flex;gap:5px;list-style:none}
.main-nav a{display:flex;align-items:center;gap:7px;padding:9px 12px;border-radius:10px;font-size:13px;font-weight:600;color:var(--muted)}
.main-nav a:hover,.main-nav a.active{background:#f0efff;color:var(--brand)}
.header-right{display:flex;align-items:center;gap:9px}
.search-wrap{width:260px;display:flex;align-items:center;background:#f2f4f7;border:1px solid transparent;border-radius:12px;padding:0 13px}
.search-wrap:focus-within{background:#fff;border-color:#b9b7ff;box-shadow:0 0 0 4px rgba(99,91,255,.08)}
.search-wrap input{width:100%;border:0;outline:0;background:transparent;padding:10px 8px;font-size:13px}
.search-wrap button{color:var(--muted)}
.icon-btn{position:relative;width:42px;height:42px;display:grid;place-items:center;border-radius:12px;color:#475467}
.icon-btn:hover{background:#f2f4f7;color:var(--brand)}
.cart-wrap{position:relative}.cart-count{position:absolute;top:-4px;right:-4px;min-width:19px;height:19px;padding:0 5px;border-radius:99px;background:var(--brand);color:#fff;border:2px solid #fff;font-size:9px;font-weight:800;display:grid;place-items:center}
.mobile-toggle{display:none;width:42px;height:42px;border-radius:12px;background:#f2f4f7}

.hero{margin:24px auto 0;max-width:var(--container);min-height:500px;border-radius:30px;overflow:hidden;position:relative;display:flex;align-items:center;background:#101828}
.hero::before{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(16,24,40,.96) 0%,rgba(16,24,40,.72) 45%,rgba(16,24,40,.15) 100%),url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover}
.hero .container{position:relative;z-index:1}.hero-copy{max-width:650px;padding:70px 0}
.hero .badge{display:inline-flex;align-items:center;gap:7px;padding:7px 12px;border-radius:99px;background:rgba(255,255,255,.12);border:1px solid rgba(255,255,255,.18);color:#dddaff;font-size:12px;font-weight:700;margin-bottom:18px}
.hero h1{font-size:clamp(38px,5vw,66px);line-height:1.02;letter-spacing:-2.5px;color:#fff;margin-bottom:18px}
.hero h1 span{color:#a7a2ff}.hero p{max-width:560px;color:#d0d5dd;font-size:17px;line-height:1.7;margin-bottom:28px}
.hero .actions{display:flex;gap:12px;flex-wrap:wrap}.hero .stats{display:flex;gap:28px;margin-top:34px;color:#fff}
.hero .stats strong{display:block;font-size:19px}.hero .stats span{font-size:11px;color:#98a2b3}

.section{padding:70px 0}.section-header{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:28px}
.title-group h2{font-size:30px;letter-spacing:-1px}.title-group p{color:var(--muted);font-size:14px;margin-top:5px}
.view-all{color:var(--brand);font-size:13px;font-weight:700}.view-all i{margin-left:6px}

.categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.cat-card{background:var(--surface);border:1px solid var(--line);border-radius:18px;padding:24px 12px;text-align:center;transition:var(--transition);cursor:pointer}
.cat-card:hover{transform:translateY(-5px);border-color:#c8c5ff;box-shadow:var(--shadow)}
.cat-card .icon-wrap{width:58px;height:58px;margin:0 auto 13px;border-radius:17px;display:grid;place-items:center;background:#f0efff;color:var(--brand);font-size:22px}
.cat-card:hover .icon-wrap{background:var(--brand);color:#fff}
.cat-card h4{font-size:13px}.cat-card .count{font-size:11px;color:var(--muted);margin-top:4px}

.products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product-card{background:#fff;border:1px solid var(--line);border-radius:20px;overflow:hidden;transition:var(--transition);display:flex;flex-direction:column}
.product-card:hover{transform:translateY(-5px);box-shadow:var(--shadow-lg);border-color:#d7d5ff}
.product-card .img-wrap{position:relative;aspect-ratio:1/1;background:#f2f4f7;overflow:hidden}
.product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:.45s ease}
.product-card:hover .img-wrap img{transform:scale(1.06)}
.product-card .badge{position:absolute;top:13px;left:13px;padding:5px 9px;border-radius:8px;background:#101828;color:#fff;font-size:10px;font-weight:800}
.product-card .badge.sale{background:#f79009}.wish-btn{position:absolute;right:12px;top:12px;width:36px;height:36px;border-radius:10px;background:rgba(255,255,255,.92);display:grid;place-items:center;color:#667085}
.wish-btn:hover{color:var(--danger)}
.product-card .body{padding:16px 17px 12px;display:flex;flex-direction:column;gap:6px;flex:1}
.category-tag{font-size:10px;text-transform:uppercase;letter-spacing:.8px;color:#98a2b3;font-weight:800}
.product-card .body h5{font-size:14px;line-height:1.35}.price-row{display:flex;align-items:center;gap:8px;margin-top:4px}.price{font-size:17px;font-weight:800}.old-price{font-size:12px;color:#98a2b3;text-decoration:line-through}
.rating{font-size:12px;color:#f79009}.rating span{color:#98a2b3;margin-left:3px}
.product-card .footer{padding:0 17px 17px}.product-card .footer .add-btn{width:100%;padding:10px;border-radius:10px;background:#101828;color:#fff;font-size:12px;font-weight:700}
.product-card .footer .add-btn:hover{background:var(--brand)}.product-card .footer .add-btn.added{background:var(--success)}

.deal-wrap{display:grid;grid-template-columns:1.05fr 1fr;overflow:hidden;border-radius:26px;background:#101828;box-shadow:var(--shadow-lg)}
.deal-img{min-height:390px}.deal-img img{width:100%;height:100%;object-fit:cover}.deal-content{padding:50px;display:flex;flex-direction:column;justify-content:center;color:#fff}
.deal-content .tag{align-self:flex-start;background:#f79009;color:#101828;padding:6px 11px;border-radius:8px;font-size:10px;font-weight:800;text-transform:uppercase;margin-bottom:14px}
.deal-content h3{font-size:34px;letter-spacing:-1px}.deal-content .desc{color:#b9c0cc;margin:8px 0 18px;max-width:480px}.price-big{font-size:34px;font-weight:800}.price-big .old{font-size:17px;color:#98a2b3;text-decoration:line-through;margin-left:9px}
.stock{color:#98a2b3;font-size:12px;margin-top:5px}.stock strong{color:#f79009}.timer-grid{display:flex;gap:10px;margin:20px 0 24px}.timer-box{min-width:67px;padding:10px 9px;text-align:center;border:1px solid #344054;border-radius:12px;background:#1d2939}.timer-box .num{font-size:21px;font-weight:800}.timer-box .label{font-size:9px;text-transform:uppercase;color:#98a2b3;letter-spacing:.5px}

.testimonials-scroll{display:flex;gap:16px;overflow-x:auto;padding:4px 2px 18px;scroll-snap-type:x mandatory}
.testimonial-card{flex:0 0 330px;background:#fff;border:1px solid var(--line);border-radius:20px;padding:23px;box-shadow:0 4px 18px rgba(16,24,40,.04);scroll-snap-align:start}
.testimonial-card .stars{color:#f79009;font-size:14px;margin-bottom:10px}.testimonial-card blockquote{font-size:14px;line-height:1.65;margin-bottom:18px}
.testimonial-card .author{display:flex;align-items:center;gap:10px}.avatar{width:40px;height:40px;border-radius:50%;object-fit:cover}.name{font-weight:700;font-size:13px}.role{font-size:11px;color:var(--muted)}

.newsletter-wrap{position:relative;overflow:hidden;background:linear-gradient(120deg,#101828,#312e81);border-radius:25px;padding:48px;display:flex;align-items:center;justify-content:space-between;gap:35px;color:#fff}
.newsletter-wrap::after{content:"";position:absolute;width:300px;height:300px;border-radius:50%;background:rgba(124,58,237,.3);right:-100px;top:-160px;filter:blur(10px)}
.newsletter-wrap .text,.newsletter-wrap form{position:relative;z-index:1}.newsletter-wrap .text h3{font-size:27px}.newsletter-wrap .text p{color:#c7cbd4;font-size:13px;margin-top:4px}
.newsletter-wrap form{display:flex;gap:9px;flex:1;max-width:510px;flex-wrap:wrap}.newsletter-wrap form input{flex:1;min-width:220px;padding:13px 16px;border:1px solid rgba(255,255,255,.16);border-radius:11px;background:rgba(255,255,255,.1);color:#fff;outline:0}
.newsletter-wrap form input:focus{border-color:#a7a2ff}.newsletter-wrap form .btn{background:#fff;color:#101828}.newsletter-wrap form .btn:hover{background:#e8e7ff}
#newsletterMsg{width:100%;font-size:12px}

footer{padding:50px 0 25px;border-top:1px solid var(--line)}.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;margin-bottom:35px}
.footer-grid .brand-col p{max-width:310px;color:var(--muted);font-size:13px;margin-top:9px}.socials{display:flex;gap:8px;margin-top:15px}.socials a{width:36px;height:36px;display:grid;place-items:center;border-radius:10px;background:#eef2f7;color:#667085}.socials a:hover{background:#f0efff;color:var(--brand)}
.footer-grid .col h5{font-size:12px;margin-bottom:12px}.footer-grid .col ul{list-style:none;display:flex;flex-direction:column;gap:8px}.footer-grid .col a{font-size:12px;color:var(--muted)}.footer-grid .col a:hover{color:var(--brand)}
.footer-bottom{text-align:center;border-top:1px solid var(--line);padding-top:20px;color:#98a2b3;font-size:11px}

#mobileMenu{display:none;background:#fff;border-top:1px solid var(--line);padding:10px 0 18px}#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}#mobileMenu a{display:flex;gap:10px;padding:11px;border-radius:10px;font-size:13px;font-weight:600}#mobileMenu a:hover{background:#f2f4f7}

@media(max-width:1100px){.main-nav{display:none}.mobile-toggle{display:grid;place-items:center}.header-inner{justify-content:space-between}.categories-grid{grid-template-columns:repeat(3,1fr)}.products-grid{grid-template-columns:repeat(3,1fr)}}
@media(max-width:800px){.container{width:min(100% - 28px,var(--container))}.hero{margin:14px 14px 0;min-height:470px}.hero-copy{padding:45px 0}.hero h1{letter-spacing:-1.5px}.header-right{gap:4px}.search-wrap{width:min(42vw,210px)}.deal-wrap{grid-template-columns:1fr}.deal-img{min-height:260px}.deal-content{padding:32px}.footer-grid{grid-template-columns:1fr 1fr}}
@media(max-width:560px){.header-inner{min-height:66px;gap:8px}.brand{font-size:18px}.brand i{font-size:20px}.search-wrap{width:42vw}.search-wrap input{font-size:11px}.icon-btn{width:36px;height:36px}.categories-grid{grid-template-columns:repeat(2,1fr);gap:10px}.products-grid{grid-template-columns:repeat(2,1fr);gap:10px}.section{padding:45px 0}.section-header{margin-bottom:20px}.title-group h2{font-size:24px}.hero{border-radius:20px;min-height:440px}.hero h1{font-size:36px}.hero p{font-size:14px}.hero .stats{gap:18px}.hero .stats strong{font-size:16px}.hero .stats span{font-size:9px}.product-card .body{padding:12px}.product-card .footer{padding:0 12px 12px}.product-card .body h5{font-size:12px}.price{font-size:15px}.deal-content h3{font-size:27px}.price-big{font-size:28px}.timer-box{min-width:55px}.newsletter-wrap{padding:30px 22px}.newsletter-wrap .text h3{font-size:22px}.newsletter-wrap form input{min-width:100%}.footer-grid{grid-template-columns:1fr}.testimonial-card{flex-basis:280px}}
    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header>
      <div class="container header-inner">
        <div style="display:flex;align-items:center;gap:10px;">
          <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
          <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
        </div>
        <nav class="main-nav" id="mainNav" aria-label="Main navigation">
          <ul>
            <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
            <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
            <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
            <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          </ul>
        </nav>
        <div class="header-right">
          <div class="search-wrap" role="search">
            <i class="fas fa-search" style="color:#98a2b3;font-size:12px"></i>
            <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
            <button id="searchBtn" aria-label="Submit search"><i class="fas fa-arrow-right"></i></button>
          </div>
          <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
      <div id="mobileMenu">
        <div class="container">
          <ul>
            <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
            <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
            <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
            <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
            <li><a href="#"><i class="far fa-user"></i> Account</a></li>
            <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
          </ul>
        </div>
      </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
          <div class="container">
            <div class="hero-copy">
              <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
              <h1>Everything you need.<br><span>Nothing you don't.</span></h1>
              <p>Curated fashion, smart tech and everyday essentials — selected for quality, design and value.</p>
              <div class="actions">
                <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Collection</button>
                <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-bolt"></i> Today's Deals</button>
              </div>
              <div class="stats">
                <div><strong>10K+</strong><span>Happy shoppers</span></div>
                <div><strong>4.9/5</strong><span>Average rating</span></div>
                <div><strong>24h</strong><span>Fast dispatch</span></div>
              </div>
            </div>
          </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Shop by Category</h2>
                        <p>Explore collections made for every kind of shopper</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Trending Picks</h2>
                        <p>The products everyone is adding to their cart</p>
                    </div>
                    <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">⚡ Flash Deal</h2>
                        <p>Grab it before it's gone — limited stock</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">What Our Customers Say</h2>
                        <p>Real reviews from real people</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Stay in the Loop</h3>
                        <p>Get exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-store-alt"></i>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </div>
                    <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and excellent support. The product exceeded my expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and smooth checkout. Will definitely shop again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Add to cart listeners
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            // animate
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            // subtle feedback
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // Close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart button click feedback
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year in footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        // Close mobile menu on resize to desktop
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
    </script>

</body>
</html>
