# Iconic Travel & Tours (GL #5247) — Official Digital Platform

![Iconic Travel & Tours Hero Preview](public/images/hero-kaaba-tawaf.jpg)

**Client:** Iconic Travel & Tours (GL #5247)  
**Location:** Office #502, Iconic Business Center, Sharfabad, Karachi, Pakistan  
**Repository:** [https://github.com/thebrandesign/iconic-travel-tours](https://github.com/thebrandesign/iconic-travel-tours)  
**Hosting Platform:** GitHub Pages (Static SSG)  
**Live Website URL:** [https://thebrandesign.github.io/iconic-travel-tours/](https://thebrandesign.github.io/iconic-travel-tours/)  
**Tagline:** *YOUR COMFORT, OUR PRIORITY*  
**Brand Message:** *A Journey of Faith*  

---

## 🕌 Project Overview

This project delivers an international luxury travel & pilgrimage website for **Iconic Travel & Tours**, engineered according to world-class digital standards inspired by premium hospitality benchmarks (e.g. Virgin Limited Edition), while preserving authentic Islamic reverence and Sunnah-aligned pilgrimage guidance.

### Key Highlights
- **15 Complete Public Pages & Dynamic Routes:**
  1. **Home (`/`):** Full-screen cinematic video hero with fallback, asymmetric brand introduction, 6-pillar service overview, Makkah & Madinah showcase, 6-step journey timeline, editorial gallery preview, testimonials with honest demonstration labeling, and CTA.
  2. **About Us (`/about`):** Brand heritage, mission, vision, commitment, and group coordination philosophy.
  3. **Umrah Packages (`/umrah-packages`):** Interactive package discovery with real-time client-side filtering by category, duration, and travel style.
  4. **Package Details (`/umrah-packages/[slug]`):** Static-generated individual pages for every package featuring detailed day-by-day itineraries, hotel specs, transport details, inclusions/exclusions, and sticky booking CTAs.
  5. **Services (`/services`):** Comprehensive breakdowns of Umrah travel logistics, group management, hotel support, transportation fleet, Ziyarat guidance, 24/7 coordinator assistance, and dining buffets.
  6. **Destinations (`/destinations` & `/destinations/[slug]`):** Immersive discovery guides for Makkah al-Mukarramah, Al-Madinah al-Munawwarah, and Jeddah the Gateway.
  7. **Ziyarat Guide (`/ziyarat-guide`):** Dedicated historical and religious guide covering 11 sacred sites across Makkah and Madinah with location facts and practical tips.
  8. **Travel Guide (`/travel-guide`):** Umrah preparation checklist, visa requirements, packing essentials, Ihram protocol, and group etiquette.
  9. **Visual Gallery (`/gallery`):** Masonry photography gallery with category filters and full-screen accessible keyboard-navigable lightbox.
  10. **FAQ (`/faq`):** Searchable, categorized FAQs with interactive accordions and Schema.org FAQPage structured data.
  11. **Contact (`/contact`):** Verified Karachi phone numbers, office address, Google Maps embed, business hours, and interactive inquiry form.
  12. **Request a Quote (`/request-a-quote`):** 5-Step interactive inquiry builder with real-time summary and instant WhatsApp forwarder.
  13. **Privacy Policy (`/privacy-policy`):** Professional data protection draft policy.
  14. **Terms & Conditions (`/terms-and-conditions`):** Booking conditions and regulatory disclosures.
  15. **Custom 404 (`/404.html`):** Branded error page with guided return paths.

---

## 🎨 Brand Identity & Palette

- **Deep Emerald (`#063D30`):** Dominant luxury hue representing sacred peace and dignity.
- **Forest Green (`#0A3026`):** Secondary depth tone for layered visual luxury.
- **Champagne Gold (`#C7A66A`):** Refined metallic gold for borders, highlights, badges, and calligraphy.
- **Warm Ivory (`#F8F5EE`):** Crisp editorial background maintaining warmth and contrast.
- **Charcoal (`#202421`):** High-legibility typography tone.
- **Accent Red (`#D92732`):** Brand logo accent used with surgical precision for critical urgent actions.
- **Typography:** *Cormorant Garamond* / *Playfair Display* for elegant editorial headings, *Plus Jakarta Sans* / *Inter* for body readability, and *Amiri* for authentic Arabic calligraphy.

---

## 📁 Content Management Architecture

The entire website is data-driven, allowing non-developers to update packages, hotels, departures, and FAQs without touching core code:

| File Location | Description & Contents |
|:---|:---|
| `src/data/company.json` | Corporate identity, verified phone numbers, office address, and DTS GL #5247 credentials. |
| `src/data/packages.json` | All Umrah packages (itineraries, hotel names, durations, categories, inclusions, and prices). |
| `src/data/destinations.json` | Destination overviews, sacred landmarks, photography, and related tour links. |
| `src/data/services.json` | Detailed service offerings, descriptions, and feature checklists. |
| `src/data/ziyarat.json` | Historical and practical information for all Makkah & Madinah holy sites. |
| `src/data/travelGuide.json` | Preparation checklist, packing guidelines, and Ihram instructions. |
| `src/data/faqs.json` | Frequently asked questions grouped by categories. |
| `src/data/gallery.json` | Masonry image records, titles, categories, and captions. |
| `src/data/testimonials.json` | Pilgrim feedback (clearly identified as demonstration content until verified reviews are published). |

---

## ⚙️ Development & Local Build

### Prerequisites
- Node.js `v20.x` or later
- npm `v10.x` or later

### Commands
```bash
# Clone the repository
git clone https://github.com/thebrandesign/iconic-travel-tours.git
cd iconic-travel-tours

# Install dependencies
npm install

# Start local development server
npm run dev
# -> Opens http://localhost:4321

# Check TypeScript & Build static production output
npm run build
# -> Generates pure static HTML/CSS/JS in ./dist/

# Preview production build locally
npm run preview
```

---

## 🚀 GitHub Actions & GitHub Pages Deployment

The repository includes an automated CI/CD workflow at `.github/workflows/deploy.yml`:
1. Every push to the `main` branch automatically triggers the workflow.
2. The workflow checks out the repository, installs dependencies, and runs `npm run build`.
3. The resulting `./dist` artifact is uploaded and deployed to GitHub Pages using official GitHub Actions (`actions/deploy-pages@v4`).

### GitHub Pages Project Site Structure
The website is served at `https://thebrandesign.github.io/iconic-travel-tours/` with base path `/iconic-travel-tours/`. All asset paths, stylesheets, images, scripts, and internal page links resolve relative to this base path.

---

## 📜 Media Licensing & Ethics

All imagery has been curated from verified open stock sources (Unsplash License, Creative Commons) permitting free commercial use. No copyrighted assets were scraped from third-party travel agencies.
For detailed asset records, please inspect `MEDIA_LICENSING.md`.

---

© 2026 Iconic Travel & Tours. All rights reserved. Department of Tourist Services License GL #5247.
