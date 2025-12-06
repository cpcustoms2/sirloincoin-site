<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sirloin Coin | Coins, Currency & Collectibles in Wilmington, NC</title>
  <meta name="description" content="Sirloin Coin buys, sells, and trades coins, currency, collectibles, and jewelry in the Wilmington, NC area. Appraisals, jewelry cleaning, and appointments available.">
  <style>
    :root {
      --primary: #8c5b3f;
      --primary-dark: #5f3d2a;
      --accent: #c9a36a;
      --bg: #f9f5ee;
      --text: #222;
      --muted: #666;
      --light: #ffffff;
      --border: #ddd;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    img {
      max-width: 100%;
      display: block;
    }

    /* Layout */

    header {
      background: linear-gradient(120deg, #1f130b 0%, #3b2617 45%, #5a3d28 100%);
      color: white;
      padding: 1.25rem 1.5rem;
      position: sticky;
      top: 0;
      z-index: 100;
    }

    .max-width {
      max-width: 1080px;
      margin: 0 auto;
    }

    .nav {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 1rem;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 0.75rem;
    }

    .brand-mark {
      width: 40px;
      height: 40px;
      border-radius: 999px;
      border: 2px solid var(--accent);
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      font-size: 1.1rem;
      background: radial-gradient(circle at 30% 20%, #f7e2b6, #b78a4c 55%, #4b331f 100%);
      box-shadow: 0 0 0 2px rgba(0,0,0,0.2);
    }

    .brand-text h1 {
      font-size: 1.35rem;
      letter-spacing: 0.06em;
      text-transform: uppercase;
    }

    .brand-text span {
      display: block;
      font-size: 0.8rem;
      text-transform: uppercase;
      color: #e0d0b4;
      letter-spacing: 0.18em;
      margin-top: 0.05rem;
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 1.25rem;
      font-size: 0.95rem;
    }

    nav a {
      padding-bottom: 0.15rem;
      border-bottom: 2px solid transparent;
    }

    nav a:hover {
      border-color: var(--accent);
    }

    .nav-cta {
      display: none;
    }

    /* Hero */

    .hero {
      background: radial-gradient(circle at top left, #f3e1c5 0%, #f9f5ee 40%, #e7ddcf 100%);
      padding: 3rem 1.5rem 3.5rem;
      border-bottom: 1px solid #eadfce;
    }

    .hero-content {
      display: grid;
      grid-template-columns: minmax(0, 1.3fr) minmax(0, 1fr);
      gap: 2.5rem;
      align-items: center;
    }

    .hero h2 {
      font-size: 2.4rem;
      line-height: 1.15;
      margin-bottom: 0.75rem;
      color: #2b1d13;
    }

    .hero h2 span {
      color: var(--primary);
    }

    .hero-subtitle {
      font-size: 1.05rem;
      color: var(--muted);
      margin-bottom: 1.25rem;
    }

    .hero-highlight {
      background: rgba(255,255,255,0.9);
      border-left: 4px solid var(--accent);
      padding: 0.75rem 1rem;
      border-radius: 0.4rem;
      margin-bottom: 1.5rem;
      font-size: 0.95rem;
      box-shadow: 0 4px 14px rgba(0,0,0,0.04);
    }

    .hero-cta {
      display: flex;
      flex-wrap: wrap;
      gap: 0.75rem;
      align-items: center;
      margin-bottom: 1.5rem;
    }

    .btn-primary,
    .btn-outline {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 0.65rem 1.2rem;
      border-radius: 999px;
      font-size: 0.95rem;
      font-weight: 600;
      border: 1px solid transparent;
      cursor: pointer;
      transition: background 0.15s ease, color 0.15s ease, border-color 0.15s ease, transform 0.1s;
      text-decoration: none;
      white-space: nowrap;
    }

    .btn-primary {
      background: var(--primary);
      color: white;
      border-color: var(--primary-dark);
      box-shadow: 0 4px 12px rgba(0,0,0,0.24);
    }

    .btn-primary:hover {
      background: var(--primary-dark);
      transform: translateY(-1px);
    }

    .btn-outline {
      background: transparent;
      color: var(--primary-dark);
      border-color: #b38c5a;
    }

    .btn-outline:hover {
      background: rgba(0,0,0,0.04);
    }

    .hero-hours {
      font-size: 0.88rem;
      color: var(--muted);
    }

    .pill {
      display: inline-flex;
      align-items: center;
      gap: 0.35rem;
      padding: 0.25rem 0.7rem;
      border-radius: 999px;
      border: 1px solid rgba(0,0,0,0.08);
      background: rgba(255,255,255,0.85);
      font-size: 0.8rem;
      margin-bottom: 0.75rem;
    }

    .pill-dot {
      width: 7px;
      height: 7px;
      border-radius: 50%;
      background: #1db954;
    }

    .hero-card {
      background: #fefdfb;
      border-radius: 0.9rem;
      border: 1px solid #e1d2be;
      padding: 1.25rem 1.3rem;
      box-shadow: 0 10px 30px rgba(0,0,0,0.14);
      position: relative;
      overflow: hidden;
    }

    .hero-card::before {
      content: "";
      position: absolute;
      inset: -40%;
      background: radial-gradient(circle at top left, rgba(255,255,255,0.6), transparent 65%);
      opacity: 0.7;
      pointer-events: none;
    }

    .hero-card-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 0.75rem;
      position: relative;
      z-index: 1;
    }

    .hero-card-title {
      font-weight: 600;
      font-size: 0.95rem;
      letter-spacing: 0.11em;
      text-transform: uppercase;
      color: #5e452f;
    }

    .hero-card-badge {
      font-size: 0.75rem;
      padding: 0.25rem 0.6rem;
      border-radius: 999px;
      background: #e9f5e6;
      color: #2e7d32;
      border: 1px solid #c2e0be;
    }

    .hero-card-grid {
      display: grid;
      grid-template-columns: repeat(2, minmax(0,1fr));
      gap: 0.75rem;
      margin-bottom: 0.75rem;
      position: relative;
      z-index: 1;
    }

    .hero-chip {
      background: rgba(255,255,255,0.9);
      border-radius: 0.6rem;
      padding: 0.5rem 0.6rem;
      border: 1px solid rgba(0,0,0,0.04);
      font-size: 0.82rem;
    }

    .hero-chip-title {
      font-weight: 600;
      font-size: 0.78rem;
      letter-spacing: 0.04em;
      text-transform: uppercase;
      color: #6a4b31;
      margin-bottom: 0.15rem;
    }

    .hero-chip-text {
      font-size: 0.8rem;
      color: var(--muted);
    }

    .hero-card-footer {
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 0.8rem;
      color: var(--muted);
      border-top: 1px dashed #ddccb4;
      padding-top: 0.45rem;
      margin-top: 0.4rem;
      position: relative;
      z-index: 1;
    }

    .hero-card-footer strong {
      color: #3e2a19;
    }

    .hero-seal {
      position: absolute;
      right: -18px;
      bottom: -18px;
      width: 96px;
      height: 96px;
      border-radius: 50%;
      border: 3px solid rgba(150, 113, 66, 0.35);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 0.7rem;
      font-weight: 700;
      letter-spacing: 0.16em;
      text-transform: uppercase;
      transform: rotate(-18deg);
      color: rgba(76, 49, 25, 0.9);
      background: radial-gradient(circle at 30% 20%, #f3e0ba, #c79c5b 55%, #704a29 100%);
      box-shadow: 0 10px 30px rgba(0,0,0,0.35);
    }

    .hero-seal span {
      text-align: center;
      max-width: 60px;
    }

    /* Sections */

    section {
      padding: 2.75rem 1.5rem;
      border-bottom: 1px solid #eadfce;
      background: #fdfaf6;
    }

    section:nth-of-type(even) {
      background: #faf5ee;
    }

    section h3 {
      font-size: 1.5rem;
      margin-bottom: 0.5rem;
      color: #3a281b;
    }

    .section-intro {
      max-width: 700px;
      font-size: 0.98rem;
      color: var(--muted);
      margin-bottom: 1.75rem;
    }

    /* Services */

    .services-grid {
      display: grid;
      grid-template-columns: repeat(3, minmax(0,1fr));
      gap: 1.25rem;
    }

    .service-card {
      background: #fefdfc;
      border-radius: 0.75rem;
      border: 1px solid #e4d3bf;
      padding: 1rem;
      box-shadow: 0 4px 16px rgba(0,0,0,0.04);
      display: flex;
      flex-direction: column;
      gap: 0.4rem;
      font-size: 0.9rem;
    }

    .service-title {
      font-weight: 600;
      color: #503724;
      font-size: 1rem;
    }

    .service-tagline {
      font-size: 0.85rem;
      color: var(--muted);
      margin-bottom: 0.25rem;
    }

    .service-list {
      padding-left: 1rem;
      margin-top: 0.25rem;
      margin-bottom: 0.25rem;
    }

    .service-list li {
      margin-bottom: 0.15rem;
    }

    .service-footer {
      margin-top: auto;
      font-size: 0.8rem;
      color: var(--muted);
    }

    /* Buy / Sell / Trade */

    .columns-two {
      display: grid;
      grid-template-columns: minmax(0,1.2fr) minmax(0,1fr);
      gap: 1.75rem;
      align-items: flex-start;
    }

    .list-pill {
      list-style: none;
      display: flex;
      flex-wrap: wrap;
      gap: 0.45rem;
      margin-top: 0.5rem;
      margin-bottom: 0.5rem;
    }

    .list-pill li {
      font-size: 0.8rem;
      padding: 0.25rem 0.55rem;
      border-radius: 999px;
      border: 1px solid #e0d0be;
      background: #fdf9f3;
      color: #5b412c;
    }

    .note {
      font-size: 0.85rem;
      color: var(--muted);
      border-left: 3px solid #ddc098;
      padding-left: 0.6rem;
    }

    .value-card {
      background: #fefdfb;
      border-radius: 0.85rem;
      border: 1px solid #e4d3bf;
      padding: 1rem;
      box-shadow: 0 4px 12px rgba(0,0,0,0.04);
      font-size: 0.9rem;
    }

    .value-card h4 {
      font-size: 1rem;
      margin-bottom: 0.35rem;
      color: #4a3321;
    }

    .value-list {
      list-style: none;
      margin-top: 0.35rem;
    }

    .value-list li {
      margin-bottom: 0.25rem;
      padding-left: 1.05rem;
      position: relative;
    }

    .value-list li::before {
      content: "•";
      position: absolute;
      left: 0;
      color: var(--accent);
    }

    /* Appointments / Contact */

    .contact-grid {
      display: grid;
      grid-template-columns: minmax(0,1.1fr) minmax(0,1fr);
      gap: 1.75rem;
      align-items: flex-start;
    }

    .contact-card {
      background: #fefdfc;
      border-radius: 0.85rem;
      border: 1px solid #e4d3bf;
      padding: 1rem;
      box-shadow: 0 4px 16px rgba(0,0,0,0.04);
      font-size: 0.9rem;
    }

    .contact-card h4 {
      font-size: 1rem;
      margin-bottom: 0.25rem;
      color: #4a3321;
    }

    .contact-rows {
      margin-top: 0.6rem;
      display: grid;
      gap: 0.35rem;
    }

    .contact-row-label {
      font-size: 0.8rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.12em;
      color: #7a5a3e;
    }

    .contact-row-value {
      font-size: 0.9rem;
    }

    .contact-row-value a {
      color: #613f27;
      text-decoration: underline;
      text-decoration-thickness: 1px;
      text-underline-offset: 2px;
    }

    .contact-note {
      margin-top: 0.65rem;
      font-size: 0.85rem;
      color: var(--muted);
    }

    form {
      display: grid;
      gap: 0.65rem;
      margin-top: 0.4rem;
      font-size: 0.9rem;
    }

    label {
      font-weight: 600;
      font-size: 0.8rem;
      text-transform: uppercase;
      letter-spacing: 0.12em;
      color: #7a5a3e;
      margin-bottom: 0.1rem;
      display: block;
    }

    input,
    textarea,
    select {
      width: 100%;
      border-radius: 0.4rem;
      border: 1px solid #d9c9b6;
      padding: 0.5rem 0.55rem;
      font-size: 0.9rem;
      font-family: inherit;
      background: #fdfaf6;
    }

    input:focus,
    textarea:focus,
    select:focus {
      outline: none;
      border-color: var(--accent);
      box-shadow: 0 0 0 1px rgba(201,163,106,0.2);
      background: #fff;
    }

    textarea {
      min-height: 90px;
      resize: vertical;
    }

    .form-row-inline {
      display: grid;
      grid-template-columns: repeat(2, minmax(0,1fr));
      gap: 0.75rem;
    }

    .form-help {
      font-size: 0.78rem;
      color: var(--muted);
    }

    .form-success {
      display: none;
      margin-top: 0.5rem;
      font-size: 0.85rem;
      color: #2e7d32;
      background: #e9f5e6;
      border-radius: 0.4rem;
      padding: 0.5rem 0.6rem;
      border: 1px solid #c2e0be;
    }

    /* Location */

    .map-placeholder {
      background: radial-gradient(circle at top left, #f8e7c9 0%, #f5f0e4 45%, #e8dcc9 100%);
      border-radius: 0.85rem;
      border: 1px dashed #d2b890;
      padding: 1rem;
      position: relative;
      font-size: 0.9rem;
      overflow: hidden;
    }

    .map-placeholder h4 {
      font-size: 1rem;
      margin-bottom: 0.25rem;
      color: #4a3321;
    }

    .map-placeholder small {
      display: block;
      margin-top: 0.35rem;
      color: var(--muted);
      font-size: 0.8rem;
    }

    .map-badge {
      position: absolute;
      right: 1rem;
      bottom: 1rem;
      padding: 0.3rem 0.7rem;
      font-size: 0.75rem;
      border-radius: 999px;
      background: rgba(255,255,255,0.7);
      border: 1px solid rgba(0,0,0,0.05);
      backdrop-filter: blur(6px);
    }

    /* Footer */

    footer {
      background: #1d120b;
      color: #e7ddcf;
      padding: 1.75rem 1.5rem 1.5rem;
      font-size: 0.85rem;
    }

    .footer-grid {
      max-width: 1080px;
      margin: 0 auto;
      display: grid;
      grid-template-columns: minmax(0,1.5fr) minmax(0,1.2fr);
      gap: 1.5rem;
      align-items: flex-start;
    }

    .footer-brand {
      display: flex;
      align-items: center;
      gap: 0.75rem;
      margin-bottom: 0.5rem;
    }

    .footer-brand .brand-mark {
      box-shadow: none;
    }

    .footer-links {
      display: flex;
      gap: 1.25rem;
      flex-wrap: wrap;
      margin-top: 0.5rem;
    }

    .footer-links a {
      color: #f0e2cf;
      text-decoration: none;
      font-size: 0.83rem;
    }

    .footer-links a:hover {
      text-decoration: underline;
      text-underline-offset: 3px;
    }

    .footer-copy {
      margin-top: 0.75rem;
      color: #bca88f;
    }

    .footer-copy span {
      color: #e7ddcf;
    }

    .footer-right {
      text-align: right;
    }

    .footer-right a {
      color: #f0e2cf;
      text-decoration: underline;
      text-underline-offset: 2px;
    }

    .footer-right div {
      margin-bottom: 0.25rem;
    }

    /* Responsive */

    @media (max-width: 900px) {
      .hero-content,
      .columns-two,
      .contact-grid,
      .footer-grid {
        grid-template-columns: minmax(0,1fr);
      }

      .hero {
        padding-top: 2.25rem;
      }

      .hero-card {
        max-width: 360px;
        margin: 0 auto;
      }

      .footer-right {
        text-align: left;
      }
    }

    @media (max-width: 780px) {
      nav ul {
        display: none;
      }

      .nav-cta {
        display: inline-flex;
      }

      header {
        padding-inline: 1rem;
      }

      .hero {
        padding-inline: 1rem;
      }

      section {
        padding-inline: 1rem;
      }

      .services-grid {
        grid-template-columns: minmax(0,1fr);
      }

      .hero h2 {
        font-size: 2rem;
      }
    }

    @media (max-width: 480px) {
      .hero {
        padding-top: 2rem;
      }

      .hero h2 {
        font-size: 1.8rem;
      }

      .hero-card {
        padding: 1rem;
      }

      .hero-card-grid {
        grid-template-columns: minmax(0,1fr);
      }

      .form-row-inline {
        grid-template-columns: minmax(0,1fr);
      }
    }
  </style>
</head>
<body>

  <!-- Header -->
  <header>
    <div class="max-width nav">
      <div class="brand">
        <div class="brand-mark">SC</div>
        <div class="brand-text">
          <h1>Sirloin Coin</h1>
          <span>Coins • Currency • Collectibles</span>
        </div>
      </div>
      <nav aria-label="Main">
        <ul>
          <li><a href="#services">Services</a></li>
          <li><a href="#buy-sell">Buy • Sell • Trade</a></li>
          <li><a href="#appointments">Appointments</a></li>
          <li><a href="#location">Location</a></li>
        </ul>
      </nav>
      <a href="#appointments" class="btn-outline nav-cta">Book an Appointment</a>
    </div>
  </header>

  <!-- Hero -->
  <main>
    <section class="hero" id="top">
      <div class="max-width hero-content">
        <div>
          <div class="pill">
            <span class="pill-dot"></span>
            Wilmington, NC • By appointment
          </div>
          <h2>Your local <span>coin & collectible</span> shop in the Wilmington area.</h2>
          <p class="hero-subtitle">
            Sirloin Coin buys, sells, and trades all kinds of coins, currency, precious metals,
            collectibles, and jewelry. We also offer jewelry cleaning and written appraisals.
          </p>
          <div class="hero-highlight">
            Looking to sell a collection, upgrade a piece of jewelry, or get a fair appraisal?
            Talk directly with a local numismatist and collectibles buyer—no big‑box runaround.
          </div>
          <div class="hero-cta">
            <a class="btn-primary" href="#appointments">Request an Appointment</a>
            <a class="btn-outline" href="tel:19195550000">Call: (919) 555‑0000</a>
          </div>
          <div class="hero-hours">
            Typical hours: Monday – Saturday • By appointment in the Wilmington, NC area.
          </div>
        </div>

        <aside class="hero-card" aria-label="What we work with">
          <div class="hero-card-header">
            <div class="hero-card-title">Buying • Selling • Trading</div>
            <div class="hero-card-badge">Fair offers • No pressure</div>
          </div>
          <div class="hero-card-grid">
            <div class="hero-chip">
              <div class="hero-chip-title">Coins & Currency</div>
              <div class="hero-chip-text">
                U.S. & world coins, bullion, rare notes, silver & gold.
              </div>
            </div>
            <div class="hero-chip">
              <div class="hero-chip-title">Collectibles</div>
              <div class="hero-chip-text">
                Tokens, medals, vintage items, small antiques, and more.
              </div>
            </div>
            <div class="hero-chip">
              <div class="hero-chip-title">Jewelry</div>
              <div class="hero-chip-text">
                Gold, silver, platinum, estate pieces, broken jewelry.
              </div>
            </div>
            <div class="hero-chip">
              <div class="hero-chip-title">Services</div>
              <div class="hero-chip-text">
                Appraisals, jewelry cleaning, collection evaluations.
              </div>
            </div>
          </div>
          <div class="hero-card-footer">
            <span><strong>Local</strong> to Wilmington, NC</span>
            <span>By appointment • Private & secure</span>
          </div>
          <div class="hero-seal">
            <span>Honest Local Offers</span>
          </div>
        </aside>
      </div>
    </section>

    <!-- Services -->
    <section id="services">
      <div class="max-width">
        <h3>What Sirloin Coin Offers</h3>
        <p class="section-intro">
          Whether you’re just starting a collection, handling an estate, or ready to part with
          a lifetime of finds, Sirloin Coin provides straightforward, face‑to‑face service in
          the Wilmington, NC area.
        </p>

        <div class="services-grid">
          <article class="service-card">
            <div class="service-title">Coin & Currency Services</div>
            <div class="service-tagline">U.S. and world pieces, from pocket change to rarities.</div>
            <ul class="service-list">
              <li>Buying and selling U.S. and foreign coins</li>
              <li>Silver, gold, and bullion (rounds, bars, and coins)</li>
              <li>Paper money & obsolete currency</li>
              <li>Collection sorting and basic grading opinions</li>
            </ul>
            <div class="service-footer">
              Bring in a box, album, or whole collection—we’ll go through it together.
            </div>
          </article>

          <article class="service-card">
            <div class="service-title">Collectibles & Small Antiques</div>
            <div class="service-tagline">Interesting pieces with history and character.</div>
            <ul class="service-list">
              <li>Tokens, medals, commemoratives</li>
              <li>Vintage collectibles and curios</li>
              <li>Small antiques and unique items</li>
              <li>Estate finds, attic discoveries, and more</li>
            </ul>
            <div class="service-footer">
              Not sure if it’s worth anything? Bring it—if we can’t use it, we’ll tell you.
            </div>
          </article>

          <article class="service-card">
            <div class="service-title">Jewelry Cleaning & Appraisals</div>
            <div class="service-tagline">Give your pieces a fresh shine and a clear value.</div>
            <ul class="service-list">
              <li>Basic jewelry cleaning & inspection</li>
              <li>Informal verbal value ranges</li>
              <li>Written appraisals for select items</li>
              <li>Offers to buy gold, silver & estate jewelry</li>
            </ul>
            <div class="service-footer">
              Perfect if you’re preparing to sell, insure, or divide an estate.
            </div>
          </article>
        </div>
      </div>
    </section>

    <!-- Buy / Sell / Trade -->
    <section id="buy-sell">
      <div class="max-width columns-two">
        <div>
          <h3>Buy • Sell • Trade</h3>
          <p class="section-intro">
            Sirloin Coin is known for fair, transparent offers and a relaxed, no‑pressure setting.
            We’re happy to help you understand what you have before you decide what to do with it.
          </p>

          <h4>We typically buy:</h4>
          <ul class="list-pill">
            <li>U.S. & world coins</li>
            <li>Silver & gold bullion</li>
            <li>Paper money & notes</li>
            <li>Gold & silver jewelry</li>
            <li>Tokens & medals</li>
            <li>Estate collections</li>
            <li>Vintage collectibles</li>
          </ul>

          <p class="note">
            Values depend on condition and the current market. We’ll walk you through how we
            arrive at our offer, and you’re never obligated to sell.
          </p>
        </div>

        <aside class="value-card">
          <h4>How an Appointment Works</h4>
          <ul class="value-list">
            <li><strong>Schedule:</strong> Use the form below or call to request a time.</li>
            <li><strong>Meet:</strong> We’ll meet at an agreed public location or office setting in the Wilmington area.</li>
            <li><strong>Review:</strong> We examine your items together and answer questions.</li>
            <li><strong>Offer:</strong> You’ll receive a clear cash offer for items we can use.</li>
            <li><strong>No pressure:</strong> You can accept, decline, or think it over—no hard sales tactics.</li>
          </ul>
          <p class="form-help" style="margin-top:0.4rem;">
            Larger estates or special collections may require more time—let us know what you have in advance.
          </p>
        </aside>
      </div>
    </section>

    <!-- Appointments / Contact -->
    <section id="appointments">
      <div class="max-width contact-grid">
        <div>
          <h3>Request an Appointment</h3>
          <p class="section-intro">
            Use this form to tell us a little about what you have and when you’d like to meet.
            We’ll follow up to confirm a day, time, and meeting spot in the Wilmington, NC area.
          </p>

          <!-- Simple email form using mailto (no backend needed) -->
          <form id="appointment-form" action="mailto:info@sirloincoin.com" method="POST" enctype="text/plain">
            <div class="form-row-inline">
              <div>
                <label for="name">Name</label>
                <input id="name" name="Name" type="text" required placeholder="Your full name" />
              </div>
              <div>
                <label for="phone">Phone</label>
                <input id="phone" name="Phone" type="tel" required placeholder="Best contact number" />
              </div>
            </div>

            <div class="form-row-inline">
              <div>
                <label for="email">Email</label>
                <input id="email" name="Email" type="email" required placeholder="you@example.com" />
              </div>
              <div>
                <label for="service">What are you interested in?</label>
                <select id="service" name="Service">
                  <option>Buying / Selling Coins</option>
                  <option>Buying / Selling Jewelry</option>
                  <option>Appraisal</option>
                  <option>Jewelry Cleaning</option>
                  <option>Estate / Collection Evaluation</option>
                  <option>Other / Not sure</option>
                </select>
              </div>
            </div>

            <div>
              <label for="when">Preferred days / times</label>
              <input id="when" name="Preferred time" type="text" placeholder="Example: Weekdays after 4pm, Saturdays morning" />
            </div>

            <div>
              <label for="details">What would you like to bring?</label>
              <textarea id="details" name="Details" placeholder="Tell us about your coins, currency, collectibles, or jewelry. Approximate amount, any photos, or special concerns."></textarea>
            </div>

            <div class="form-help">
              This form opens your email program with the details. You can also contact us directly by phone or email below.
            </div>

            <button type="submit" class="btn-primary" style="margin-top:0.35rem;">Send Appointment Request</button>
            <div id="form-success" class="form-success">
              Thank you—your email program should open with your request. Send it when you’re ready.
            </div>
          </form>
        </div>

        <aside class="contact-card">
          <h4>Contact & Hours</h4>
          <div class="contact-rows">
            <div>
              <div class="contact-row-label">Phone</div>
              <div class="contact-row-value">
                <a href="tel:19195550000">(919) 555‑0000</a>
              </div>
            </div>
            <div>
              <div class="contact-row-label">Email</div>
              <div class="contact-row-value">
                <a href="mailto:info@sirloincoin.com">info@sirloincoin.com</a>
              </div>
            </div>
            <div>
              <div class="contact-row-label">Service Area</div>
              <div class="contact-row-value">
                Wilmington, NC and surrounding communities.
              </div>
            </div>
            <div>
              <div class="contact-row-label">Hours</div>
              <div class="contact-row-value">
                By appointment, Monday – Saturday.<br>
                Closed on major holidays.
              </div>
            </div>
          </div>
          <p class="contact-note">
            For same‑day or next‑day appointments, calling or texting is often the fastest way to reach us.
          </p>
        </aside>
      </div>
    </section>

    <!-- Location -->
    <section id="location">
      <div class="max-width">
        <h3>Serving the Wilmington, NC Area</h3>
        <p class="section-intro">
          Sirloin Coin is a local, appointment‑based buyer and seller. To keep visits private and
          secure, exact meeting locations are shared when we confirm your appointment.
        </p>

        <div class="map-placeholder" aria-label="Wilmington, North Carolina service area">
          <h4>Local to Wilmington</h4>
          <p>
            We typically meet within the greater Wilmington area and nearby communities
            (depending on schedule and collection size). When you reach out, let us know
            what part of town you’re in and what you’re bringing.
          </p>
          <small>
            Prefer a specific style of meeting place (coffee shop, office setting, etc.)?
            We’ll do our best to accommodate.
          </small>
          <div class="map-badge">
            Wilmington, NC • By appointment
          </div>
        </div>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer>
    <div class="footer-grid">
      <div>
        <div class="footer-brand">
          <div class="brand-mark">SC</div>
          <div class="brand-text">
            <h1 style="font-size:1.05rem;">Sirloin Coin</h1>
            <span>Coins • Currency • Collectibles</span>
          </div>
        </div>
        <div class="footer-links">
          <a href="#services">Services</a>
          <a href="#buy-sell">Buy • Sell • Trade</a>
          <a href="#appointments">Appointments</a>
          <a href="#location">Location</a>
        </div>
        <div class="footer-copy">
          <span>&copy; <span id="year"></span> Sirloin Coin.</span> All rights reserved.
        </div>
      </div>
      <div class="footer-right">
        <div>Wilmington, North Carolina • By appointment</div>
        <div><a href="tel:19195550000">(919) 555‑0000</a> • <a href="mailto:info@sirloincoin.com">info@sirloincoin.com</a></div>
      </div>
    </div>
  </footer>

  <script>
    // Set current year in footer
    document.getElementById('year').textContent = new Date().getFullYear();

    // Show a small hint when the mailto form is submitted
    document.getElementById('appointment-form').addEventListener('submit', function () {
      const note = document.getElementById('form-success');
      if (note) {
        note.style.display = 'block';
      }
    });
  </script>
</body>
</html>
