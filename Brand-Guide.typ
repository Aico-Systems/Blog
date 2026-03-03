// AICO Brand Guidelines — Premium Edition
// Exports to PDF & SVG (Figma-importable via build script)

// ── Layout ──────────────────────────────────────────────────────
#let pw = 254mm
#let ph = 142.9mm
#let mx = 26mm
#let mt = 20mm
#let mb = 17mm

// ── Brand palette (P1 Triad Arctic Ops) ─────────────────────────
#let brand-midnight = rgb("#0B1226")  // Primary dark surface
#let brand-petrol   = rgb("#145B7A")  // Structural scaffolding
#let mint           = rgb("#A7F3D0")  // Interactive accent (Arctic Mint)
#let signal         = rgb("#5EEAD4")  // Signal / live states
#let brand-blue     = rgb("#3B82F6")  // Semantic info only

// Logo gradient (mark only)
#let logo-mint    = rgb("#A7F3D0")    // Arctic Mint
#let logo-petrol  = rgb("#145B7A")    // Petrol endpoint

// Slate scale
#let slate-950 = rgb("#020617")
#let slate-900 = rgb("#0F172A")
#let slate-800 = rgb("#1E293B")
#let slate-700 = rgb("#334155")
#let slate-600 = rgb("#475569")
#let slate-500 = rgb("#64748B")
#let slate-400 = rgb("#94A3B8")
#let slate-300 = rgb("#CBD5E1")
#let slate-200 = rgb("#E2E8F0")
#let slate-100 = rgb("#F1F5F9")
#let slate-50  = rgb("#F8FAFC")

// Semantic
#let success = rgb("#22C55E")
#let warning = rgb("#F59E0B")
#let danger  = rgb("#EF4444")
#let info    = rgb("#3B82F6")

// Functional aliases
#let dark   = brand-midnight
#let txt    = slate-900
#let muted  = slate-500
#let subtle = slate-400
#let light  = slate-50
#let bdr    = slate-200

// ── Gradients ─────────────────────────────────────────────────
#let gh = gradient.linear(brand-midnight, brand-petrol, angle: 0deg)
#let gv = gradient.linear(brand-midnight, brand-petrol, angle: 180deg)
#let gd = gradient.linear(brand-midnight, brand-petrol, angle: 135deg)

// Logo gradient (for logo-specific references)
#let logo-gh = gradient.linear(logo-mint, logo-petrol, angle: 0deg)
#let logo-gd = gradient.linear(logo-mint, logo-petrol, angle: 135deg)

// ── Primitives ────────────────────────────────────────────────

#let glow(x: 0pt, y: 0pt, size: 100mm, color: brand-petrol, opacity: 12%) = {
  place(top + left, dx: x - size / 2, dy: y - size / 2,
    circle(radius: size / 2, stroke: none,
      fill: gradient.radial(
        color.transparentize(100% - opacity),
        color.transparentize(100% - opacity * 0.3),
        color.transparentize(100%),
      ),
    ),
  )
}

#let accent-bar(width: 36mm, height: 2.5pt) = {
  block(width: width, height: height, radius: height, fill: gh)
}

#let footer-strip() = {
  place(bottom + left, dx: -mx, dy: mb,
    block(width: pw, height: 2mm, fill: gh),
  )
}

#let dark-bg() = {
  place(top + left, dx: -mx, dy: -mt,
    block(width: pw, height: ph, fill: dark),
  )
}

#let page-label(label) = {
  text(7.5pt, weight: "semibold", fill: brand-petrol, tracking: 0.15em, font: "Sora")[#upper(label)]
}

#let section-heading(label, title, subtitle: none) = {
  page-label[#label]
  v(0.15cm)
  text(28pt, weight: "bold", fill: txt, font: "Sora", tracking: -0.5pt)[#title]
  if subtitle != none {
    v(0.08cm)
    text(10pt, fill: muted, font: "Sora", weight: "regular")[#subtitle]
  }
  v(0.15cm)
  accent-bar(width: 40mm)
  v(0.35cm)
}

// Gradient-border card: outer gradient fill with inset white interior
#let gradient-border-card(width: 100%, inset: 12pt, radius: 10pt, body) = {
  block(width: width, radius: radius, clip: true, fill: gd, {
    block(width: 100%, inset: 1.2pt, {
      block(width: 100%, inset: inset, radius: radius - 1pt, fill: white, body)
    })
  })
}

// Elevated card with simulated drop shadow
#let elevated-card(width: 100%, height: auto, inset: 14pt, radius: 10pt, fill: white, body) = {
  block(width: width, {
    // Shadow layer
    place(top + left, dx: 0pt, dy: 3pt,
      block(width: 100%, height: 100%, radius: radius, fill: slate-900.transparentize(95%)),
    )
    place(top + left, dx: 0pt, dy: 1pt,
      block(width: 100%, height: 100%, radius: radius, fill: slate-900.transparentize(97%)),
    )
    // Main card
    block(width: width, height: height, inset: inset, radius: radius, fill: fill, stroke: 0.5pt + slate-200, body)
  })
}

// Bullet with gradient dot
#let bullet-item(body) = {
  grid(
    columns: (8pt, 1fr),
    column-gutter: 8pt,
    align(top, place(dy: 4pt, circle(radius: 2.5pt, fill: gd))),
    text(8.5pt, fill: muted)[#body],
  )
  v(2pt)
}

// Color swatch
#let swatch(color, name, hex, sub: none) = {
  block(width: 100%, radius: 8pt, clip: true, stroke: 0.5pt + slate-200, {
    block(width: 100%, height: 12mm, fill: color)
    block(width: 100%, inset: (x: 6pt, y: 4pt), fill: white, {
      text(7.5pt, weight: "semibold", fill: txt, font: "Sora")[#name]
      linebreak()
      text(6pt, fill: muted, font: "JetBrainsMono NF")[#hex]
      if sub != none {
        linebreak()
        text(5.5pt, fill: slate-400)[#sub]
      }
    })
  })
}

#let swatch-sm(color, name, hex) = {
  block(width: 100%, radius: 5pt, clip: true, stroke: 0.5pt + slate-200, {
    block(width: 100%, height: 8mm, fill: color)
    block(width: 100%, inset: (x: 4pt, y: 2.5pt), fill: white, {
      text(6.5pt, weight: "semibold", fill: txt, font: "Sora")[#name]
      linebreak()
      text(5.5pt, fill: muted, font: "JetBrainsMono NF")[#hex]
    })
  })
}

// Material Symbols icon (visually equivalent to Lucide stroke icons)
#let msym(name, size: 18pt, color: slate-500) = {
  text(size, font: "Material Symbols Rounded", fill: color, baseline: -0.15em)[#name]
}

// Page footer with logo
#let page-footer() = {
  footer-strip()
  place(bottom + left, dy: 8mm, image("/Assets/Logos/AICO.svg", height: 10pt))
}

// ═══════════════════════════════════════════════════════════════
// DOCUMENT
// ═══════════════════════════════════════════════════════════════

#set page(width: pw, height: ph, margin: (x: mx, top: mt, bottom: mb), fill: white)
#set text(font: "Sora", size: 10pt, fill: txt, weight: "regular", lang: "en")
#set par(leading: 0.65em, spacing: 0.75em)

// ─── PAGE 1: Cover ──────────────────────────────────────────────

#dark-bg()
#glow(x: 190mm, y: -10mm, size: 170mm, color: brand-petrol, opacity: 18%)
#glow(x: -15mm, y: 105mm, size: 140mm, color: brand-petrol, opacity: 14%)
#glow(x: 170mm, y: 115mm, size: 80mm, color: brand-petrol, opacity: 6%)

#align(center + horizon)[
  #image("/Assets/Logos/AICO.svg", width: 4.5cm)
  #v(1cm)
  #text(32pt, weight: "bold", fill: white, tracking: 1.5pt, font: "Sora")[BRAND GUIDELINES]
  #v(0.35cm)
  #accent-bar(width: 45mm)
  #v(0.45cm)
  #text(10pt, fill: slate-400, weight: "regular")[2026 Edition]
]

#footer-strip()
#place(bottom + right, dy: 8mm,
  text(7pt, fill: slate-600, tracking: 0.3pt, font: "Sora")[aicoflow.com],
)
#pagebreak()

// ─── PAGE 2: Brand Overview ─────────────────────────────────────

#glow(x: 215mm, y: -15mm, size: 120mm, color: brand-petrol, opacity: 4%)

#section-heading("Brand Overview", "Who We Are")

#grid(
  columns: (1.4fr, 1fr),
  column-gutter: 22mm,
  {
    text(11pt, fill: slate-500, weight: "light")[
      AICO is an AI-powered voice agent platform for enterprise conversational workflows. We enable organisations to design, train, and deploy intelligent call agents that sound like their best team member.
    ]
    v(0.25cm)
    text(10.5pt, fill: slate-500, weight: "light")[
      Every conversation is on-brand, compliant, and outcome-driven --- from the first hello.
    ]
    v(0.35cm)
    text(7.5pt, weight: "semibold", fill: brand-petrol, tracking: 0.12em)[MISSION]
    v(0.08cm)
    text(9pt, fill: slate-600)[
      Bring enterprise-grade AI voice operations to every business --- making human-quality customer interactions scalable, measurable, and always available.
    ]
  },
  {
    text(10pt, weight: "semibold", fill: slate-700)[Brand Attributes]
    v(0.2cm)
    for attr in (
      (title: "Fast", desc: "300ms latency. Deploy in days, not quarters."),
      (title: "Open", desc: "Swap any provider. Run on-prem. Zero lock-in."),
      (title: "Production-Grade", desc: "Multi-tenant, RBAC, GDPR, audit trails."),
      (title: "Collaborative", desc: "AI and humans on the same call, live."),
    ) {
      gradient-border-card(inset: 7pt, radius: 7pt, {
        text(8.5pt, weight: "semibold", fill: slate-800)[#attr.title]
        linebreak()
        text(7.5pt, fill: muted)[#attr.desc]
      })
      v(5pt)
    }
  },
)

#page-footer()
#pagebreak()

// ─── PAGE 3: Logo ───────────────────────────────────────────────

#glow(x: 215mm, y: -15mm, size: 120mm, color: brand-petrol, opacity: 4%)

#section-heading("Logo", "Brand Mark")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 20mm,
  {
    // Light background
    block(width: 100%, height: 36mm, radius: 10pt, clip: true,
      fill: white, stroke: 0.5pt + slate-200,
      align(center + horizon, image("/Assets/Logos/AICO.svg", width: 3cm)),
    )
    v(0.15cm)
    text(8.5pt, weight: "semibold", fill: txt)[On light backgrounds]
    v(0.04cm)
    text(7.5pt, fill: muted)[Primary usage. Works naturally on white and light grey surfaces.]
  },
  {
    // Dark background with atmosphere
    block(width: 100%, height: 36mm, radius: 10pt, clip: true, fill: dark, {
      place(center + horizon, dx: -20mm, dy: -8mm,
        circle(radius: 16mm, stroke: none,
          fill: gradient.radial(brand-petrol.transparentize(88%), brand-petrol.transparentize(100%)),
        ),
      )
      place(center + horizon, dx: 18mm, dy: 6mm,
        circle(radius: 12mm, stroke: none,
          fill: gradient.radial(brand-petrol.transparentize(85%), brand-petrol.transparentize(100%)),
        ),
      )
      align(center + horizon, image("/Assets/Logos/AICO.svg", width: 3cm))
    })
    v(0.15cm)
    text(8.5pt, weight: "semibold", fill: txt)[On dark backgrounds]
    v(0.04cm)
    text(7.5pt, fill: muted)[Strong contrast on dark surfaces. No modifications needed.]
  },
)

#v(0.2cm)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 14mm,
  {
    accent-bar(width: 20mm)
    v(0.08cm)
    text(8.5pt, weight: "semibold", fill: txt)[Clear space]
    v(0.04cm)
    text(7.5pt, fill: muted)[Minimum clear space equal to the height of the mark's inner bars on all sides.]
  },
  {
    accent-bar(width: 20mm)
    v(0.08cm)
    text(8.5pt, weight: "semibold", fill: txt)[Minimum size]
    v(0.04cm)
    text(7.5pt, fill: muted)[Never smaller than 16px (digital) or 5mm (print).]
  },
  {
    accent-bar(width: 20mm)
    v(0.08cm)
    text(8.5pt, weight: "semibold", fill: txt)[File formats]
    v(0.04cm)
    text(7.5pt, fill: muted)[SVG for digital and print. PNG fallback at 2× when vector is unsupported.]
  },
)

#page-footer()
#pagebreak()

// ─── PAGE 4: Primary Palette ────────────────────────────────────

#glow(x: 215mm, y: -15mm, size: 120mm, color: brand-petrol, opacity: 4%)

#section-heading("Color", "Primary Palette")

// Hero gradient bar
#block(
  width: 100%,
  height: 14mm,
  radius: 10pt,
  fill: gd,
  clip: true,
  inset: (x: 14pt),
  align(horizon, grid(
    columns: (1fr, 1fr),
    text(9pt, weight: "bold", fill: white)[Midnight #h(4pt) #text(8pt, weight: "regular", fill: white.transparentize(30%))[\#0B1226]],
    align(right, text(9pt, weight: "bold", fill: white)[Petrol #h(4pt) #text(8pt, weight: "regular", fill: white.transparentize(30%))[\#145B7A]]),
  )),
)

#v(0.2cm)

#text(8pt, fill: slate-500)[
  The midnight-to-petrol gradient is the brand's structural signature. Full gradient for hero bands; petrol for structural accents, mint for interactive elements.
]

#v(0.2cm)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  column-gutter: 8pt,
  swatch(mint, "Mint-200", "#A7F3D0", sub: "Interactive"),
  swatch(signal, "Teal-300", "#5EEAD4", sub: "Signal"),
  swatch(brand-petrol, "Petrol", "#145B7A", sub: "Structure"),
  swatch(brand-midnight, "Midnight", "#0B1226", sub: "Dark surface"),
  swatch(slate-900, "Slate-900", "#0F172A", sub: "Neutral dark"),
  swatch(slate-50, "Slate-50", "#F8FAFC", sub: "Light surface"),
)

#v(0.15cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 20mm,
  {
    text(8pt, weight: "semibold", fill: txt)[Logo gradient]
    v(0.03cm)
    block(width: 100%, height: 4mm, radius: 3pt, fill: logo-gh)
    v(0.04cm)
    text(7pt, fill: muted)[Arctic Mint \#A7F3D0 → Petrol \#145B7A. Logo mark only.]
  },
  {
    text(8pt, weight: "semibold", fill: txt)[Flat accent]
    v(0.03cm)
    block(width: 100%, height: 4mm, radius: 3pt, fill: mint)
    v(0.04cm)
    text(7pt, fill: muted)[Arctic Mint (\#A7F3D0) for all interactive elements. Petrol for structural accents.]
  },
)

#page-footer()
#pagebreak()

// ─── PAGE 5: Extended Palette ───────────────────────────────────

#glow(x: 215mm, y: -15mm, size: 120mm, color: brand-petrol, opacity: 4%)

#section-heading("Color", "Extended Palette")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 20mm,
  {
    text(9pt, weight: "semibold", fill: txt)[Semantic colours]
    v(0.06cm)
    text(7.5pt, fill: muted)[Status, feedback, and data visualisation.]
    v(0.1cm)
    grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      column-gutter: 5pt,
      swatch-sm(success, "Success", "#22C55E"),
      swatch-sm(warning, "Warning", "#F59E0B"),
      swatch-sm(danger, "Danger", "#EF4444"),
      swatch-sm(info, "Info", "#3B82F6"),
    )
    v(0.15cm)
    text(9pt, weight: "semibold", fill: txt)[Slate scale]
    v(0.06cm)
    block(width: 100%, height: 6mm, radius: 4pt, clip: true,
      fill: gradient.linear(slate-950, slate-900, slate-800, slate-700, slate-600, slate-500, slate-400, slate-300, slate-200, slate-100, slate-50),
    )
    v(0.03cm)
    text(5.5pt, fill: muted, font: "JetBrainsMono NF")[950 #h(1fr) 800 #h(1fr) 600 #h(1fr) 400 #h(1fr) 200 #h(1fr) 50]
  },
  {
    text(9pt, weight: "semibold", fill: txt)[Dark mode]
    v(0.06cm)
    text(7.5pt, fill: muted)[Dark theme key tokens:]
    v(0.1cm)
    block(
      width: 100%,
      radius: 8pt,
      clip: true,
      fill: slate-950,
      inset: 8pt,
      {
        grid(
          columns: (1fr, 1fr),
          row-gutter: 6pt,
          column-gutter: 8pt,
          {
            text(5.5pt, fill: slate-400, weight: "medium")[BG PRIMARY]
            linebreak()
            text(7.5pt, weight: "bold", fill: white, font: "JetBrainsMono NF")[\#020617]
          },
          {
            text(5.5pt, fill: slate-400, weight: "medium")[BG SECONDARY]
            linebreak()
            text(7.5pt, weight: "bold", fill: white, font: "JetBrainsMono NF")[\#0F172A]
          },
          {
            text(5.5pt, fill: slate-400, weight: "medium")[TEXT PRIMARY]
            linebreak()
            text(7.5pt, weight: "bold", fill: white, font: "JetBrainsMono NF")[\#F1F5F9]
          },
          {
            text(5.5pt, fill: slate-400, weight: "medium")[TEXT SECONDARY]
            linebreak()
            text(7.5pt, weight: "bold", fill: slate-300, font: "JetBrainsMono NF")[\#CBD5E1]
          },
          {
            text(5.5pt, fill: slate-400, weight: "medium")[BORDERS]
            linebreak()
            text(7.5pt, weight: "bold", fill: slate-700, font: "JetBrainsMono NF")[rgba(…, 0.12)]
          },
          {
            text(5.5pt, fill: slate-400, weight: "medium")[ACCENT]
            linebreak()
            text(7.5pt, weight: "bold", fill: mint, font: "JetBrainsMono NF")[\#A7F3D0]
          },
        )
      },
    )
    v(0.1cm)
    text(7pt, fill: muted)[
      Midnight base with petrol structure. Mint accent pops on dark surfaces.
    ]
  },
)

#page-footer()
#pagebreak()

// ─── PAGE 6: Typography ─────────────────────────────────────────

#glow(x: 215mm, y: -15mm, size: 120mm, color: brand-petrol, opacity: 4%)

#section-heading("Typography", "Type System")

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 22mm,
  {
    // Hero specimen
    text(40pt, weight: "bold", fill: gd, font: "Sora", tracking: -1pt)[Aico]
    v(0.03cm)
    text(6.5pt, fill: slate-400, weight: "medium", tracking: 0.15em)[SORA · BRAND + PRODUCT]
    v(0.15cm)
    // Weight ramp
    set par(leading: 0.5em)
    text(12pt, weight: "regular", fill: slate-500, font: "Sora")[Regular 400]
    linebreak()
    text(12pt, weight: "medium", fill: slate-600, font: "Sora")[Medium 500]
    linebreak()
    text(12pt, weight: "semibold", fill: slate-700, font: "Sora")[Semibold 600]
    linebreak()
    text(12pt, weight: "bold", fill: slate-800, font: "Sora")[Bold 700]
    linebreak()
    text(12pt, weight: "extrabold", fill: txt, font: "Sora")[ExtraBold 800]
    set par(leading: 0.65em)
    v(0.1cm)
    // Monospace specimen
    block(inset: 7pt, radius: 6pt, fill: slate-50, stroke: 0.5pt + slate-200, width: 100%,
      text(8.5pt, fill: slate-600, font: "JetBrainsMono NF")[const agent = await aico.deploy()],
    )
  },
  {
    // Type scale in gradient-border card
    gradient-border-card(inset: 9pt, {
      text(7pt, weight: "semibold", fill: brand-petrol, tracking: 0.12em)[TYPE SCALE]
      v(0.1cm)

      text(14pt, weight: "bold", fill: txt, font: "Sora")[Launch call agents]
      linebreak()
      text(6.5pt, fill: slate-400)[Display · 36--48pt Sora 700]
      v(0.08cm)

      text(11pt, weight: "semibold", fill: txt, font: "Sora")[Enterprise-Grade AI]
      linebreak()
      text(6.5pt, fill: slate-400)[Heading 1 · 26pt Sora 600]
      v(0.08cm)

      text(9pt, weight: "semibold", fill: txt)[Platform Features]
      linebreak()
      text(6.5pt, fill: slate-400)[Heading 2 · 18pt Sora 600]
      v(0.08cm)

      text(9pt, fill: txt)[Every conversation is compliant.]
      linebreak()
      text(6.5pt, fill: slate-400)[Body · 10pt Sora 400]
      v(0.08cm)

      text(7.5pt, weight: "medium", fill: muted)[AICOFLOW.COM]
      linebreak()
      text(6.5pt, fill: slate-400)[Caption · 8pt Sora 500]
    })
  },
)

#v(0.1cm)
#block(width: 100%, inset: (y: 4pt), {
  text(7.5pt, fill: slate-400)[
    Primary: #text(weight: "semibold", fill: slate-600)[Sora] (brand, display, UI, body) #h(16pt) Mono: #text(weight: "semibold", fill: slate-600)[JetBrains Mono] (code, data)
  ]
})

#page-footer()
#pagebreak()

// ─── PAGE 7: Visual Language ────────────────────────────────────

#glow(x: 215mm, y: -15mm, size: 120mm, color: brand-petrol, opacity: 4%)

#section-heading("Visual Language", "Design Elements")

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 14pt,
  {
    // Ambient glow
    block(
      width: 100%,
      height: 26mm,
      radius: 8pt,
      clip: true,
      fill: dark,
      {
        place(center + horizon, dx: -10mm,
          circle(radius: 12mm, stroke: none,
            fill: gradient.radial(brand-petrol.transparentize(78%), brand-petrol.transparentize(95%), brand-petrol.transparentize(100%)),
          ),
        )
        place(center + horizon, dx: 12mm, dy: -4mm,
          circle(radius: 10mm, stroke: none,
            fill: gradient.radial(brand-petrol.transparentize(75%), brand-petrol.transparentize(95%), brand-petrol.transparentize(100%)),
          ),
        )
      },
    )
    v(0.08cm)
    text(8pt, weight: "semibold", fill: txt)[Ambient glow]
    v(0.02cm)
    text(7pt, fill: muted)[Radial gradients at 5--20% opacity on dark surfaces.]
  },
  {
    // Gradient accents
    block(
      width: 100%,
      height: 26mm,
      radius: 8pt,
      clip: true,
      stroke: 0.5pt + slate-200,
      inset: 8pt,
      {
        v(1mm)
        block(width: 65%, height: 2.5pt, radius: 2pt, fill: gh)
        v(3mm)
        block(width: 100%, height: 7mm, radius: 4pt, fill: gd)
        v(3mm)
        block(width: 40%, height: 2.5pt, radius: 2pt, fill: gv)
      },
    )
    v(0.08cm)
    text(8pt, weight: "semibold", fill: txt)[Gradient accents]
    v(0.02cm)
    text(7pt, fill: muted)[0° horizontal, 135° diagonal, 180° vertical.]
  },
  {
    // Gradient border card demo
    block(width: 100%, height: 26mm, radius: 8pt, clip: true, fill: gd, {
      block(width: 100%, inset: 1.2pt, {
        block(width: 100%, height: 100%, inset: 8pt, radius: 7pt, fill: white, {
          v(1mm)
          text(8.5pt, weight: "semibold", fill: txt)[Gradient border]
          v(0.08cm)
          text(7.5pt, fill: muted)[1.2pt gradient stroke wraps the card for premium framing.]
        })
      })
    })
    v(0.08cm)
    text(8pt, weight: "semibold", fill: txt)[Border cards]
    v(0.02cm)
    text(7pt, fill: muted)[Gradient stroke via layered block technique.]
  },
)

#v(0.12cm)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 14pt,
  {
    text(8pt, weight: "semibold", fill: txt)[Gradient text]
    v(0.04cm)
    text(20pt, weight: "bold", fill: gh, font: "Sora", tracking: -0.5pt)[99.9%]
    v(0.04cm)
    text(7pt, fill: muted)[Hero metrics and stat values. Eye-catching without clutter.]
  },
  {
    text(8pt, weight: "semibold", fill: txt)[Footer strip]
    v(0.04cm)
    block(width: 100%, height: 2mm, radius: 1pt, fill: gh)
    v(1.5mm)
    block(width: 100%, height: 2mm, radius: 1pt, fill: gd)
    v(0.04cm)
    text(7pt, fill: muted)[2mm gradient bar at page bottom. Horizontal or diagonal.]
  },
  {
    text(8pt, weight: "semibold", fill: txt)[Pill badges]
    v(0.04cm)
    box(inset: (x: 8pt, y: 3pt), radius: 999pt,
      fill: mint.transparentize(88%), stroke: 0.5pt + mint.transparentize(70%),
      text(7pt, weight: "semibold", fill: brand-petrol)[Enterprise],
    )
    h(3pt)
    box(inset: (x: 8pt, y: 3pt), radius: 999pt,
      fill: success.transparentize(88%), stroke: 0.5pt + success.transparentize(70%),
      text(7pt, weight: "semibold", fill: success.darken(15%))[SOC 2],
    )
    v(0.04cm)
    text(7pt, fill: muted)[Pill radius, semantic fills at 12% opacity.]
  },
)

#page-footer()
#pagebreak()

// ─── PAGE 8: Tone of Voice ──────────────────────────────────────

#glow(x: 215mm, y: -15mm, size: 120mm, color: brand-petrol, opacity: 4%)
#glow(x: -10mm, y: 90mm, size: 100mm, color: brand-petrol, opacity: 3%)

#section-heading("Voice", "Tone of Voice")

#grid(
  columns: (1.3fr, 1fr),
  column-gutter: 22mm,
  {
    // Pull quote
    text(18pt, weight: "bold", fill: gd, font: "Sora", tracking: -0.3pt)[Direct. Technical. Relentless.]
    v(0.2cm)
    text(9pt, fill: slate-500, weight: "light")[
      We speak like engineers who ship production systems — direct, precise, zero fluff. Every claim is backed by architecture.
    ]
    v(0.25cm)
    grid(
      columns: (1fr, 1fr),
      column-gutter: 6pt,
      row-gutter: 6pt,
      ..for principle in (
        (title: "Direct", desc: "Say it in one sentence. Cut the rest."),
        (title: "Technical", desc: "SIP, LLMs, STT — specifics, not hand-waving."),
        (title: "Ambitious", desc: "We're replacing broken systems, not patching them."),
        (title: "Grounded", desc: "Every bold claim has architecture behind it."),
      ) {(
        block(
          width: 100%, inset: 7pt, radius: 7pt,
          fill: gradient.linear(white, slate-50, angle: 135deg),
          stroke: 0.5pt + slate-200.transparentize(30%),
          {
            text(8pt, weight: "semibold", fill: txt)[#principle.title]
            linebreak()
            text(7pt, fill: muted)[#principle.desc]
          },
        ),
      )}
    )
  },
  {
    text(9pt, weight: "semibold", fill: txt)[Writing examples]
    v(0.15cm)

    text(7.5pt, weight: "semibold", fill: success)[Do]
    v(0.05cm)
    block(
      width: 100%, inset: 6pt, radius: 5pt,
      stroke: (left: 3pt + success, rest: none),
      fill: success.transparentize(95%),
      text(7.5pt, fill: txt)["Launch call agents that sound like your best team member."],
    )
    v(0.06cm)
    block(
      width: 100%, inset: 6pt, radius: 5pt,
      stroke: (left: 3pt + success, rest: none),
      fill: success.transparentize(95%),
      text(7.5pt, fill: txt)["Go live with production-ready agents in less than a week."],
    )

    v(0.15cm)

    text(7.5pt, weight: "semibold", fill: danger)[Don't]
    v(0.05cm)
    block(
      width: 100%, inset: 6pt, radius: 5pt,
      stroke: (left: 3pt + danger, rest: none),
      fill: danger.transparentize(95%),
      text(7.5pt, fill: txt)["Our cutting-edge AI leverages state-of-the-art neural networks..."],
    )
    v(0.06cm)
    block(
      width: 100%, inset: 6pt, radius: 5pt,
      stroke: (left: 3pt + danger, rest: none),
      fill: danger.transparentize(95%),
      text(7.5pt, fill: txt)["We are the world's best AI platform for voice automation."],
    )
  },
)

#page-footer()
#pagebreak()

// ─── PAGE 9: Photography & Imagery ──────────────────────────────

#glow(x: 130mm, y: 50mm, size: 160mm, color: brand-petrol, opacity: 3%)

#section-heading("Imagery", "Photography & Imagery")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 24mm,
  {
    text(10pt, weight: "semibold", fill: txt)[Style guidelines]
    v(0.15cm)
    text(8.5pt, fill: muted)[
      Imagery should feel modern, professional, and human. Prefer real workplace photography over stock. Abstract visuals stay within the brand palette.
    ]
    v(0.2cm)
    bullet-item[Use authentic, well-lit workplace settings]
    bullet-item[Favour cool-toned colour grading (blue/teal cast)]
    bullet-item[Abstract data visualisations use the brand gradient]
    bullet-item[Avoid clip art, cartoons, or saturated stock photos]
    bullet-item[Dark backgrounds pair with glowing UI elements]
  },
  {
    text(10pt, weight: "semibold", fill: txt)[UI screenshots]
    v(0.1cm)
    bullet-item[Device mockups (browser frame, phone) at slight angles]
    bullet-item[Subtle drop shadow (15--20% opacity, 24px blur)]
    bullet-item[Dark or light background --- never a busy photo]
    bullet-item[Glassmorphism overlays for feature callouts]
    v(0.15cm)
    text(10pt, weight: "semibold", fill: txt)[Iconography]
    v(0.06cm)
    text(8pt, fill: muted)[
      Lucide icons, stroke style at 1.5px weight. Slate-500 default, Blue-500 for interactive.
    ]
    v(0.1cm)
    // Icon specimens
    block(width: 100%, inset: (x: 6pt, y: 5pt), radius: 8pt,
      fill: gradient.linear(white, slate-50, angle: 135deg),
      stroke: 0.5pt + slate-200.transparentize(30%),
      grid(
        columns: (1fr,) * 6,
        align: center,
        row-gutter: 2pt,
        msym("call"), msym("mic"), msym("shield"), msym("smart_toy"), msym("trending_up"), msym("settings"),
        text(5pt, fill: slate-400)[Call], text(5pt, fill: slate-400)[Mic], text(5pt, fill: slate-400)[Shield], text(5pt, fill: slate-400)[Agent], text(5pt, fill: slate-400)[Analytics], text(5pt, fill: slate-400)[Settings],
      ),
    )
  },
)

#page-footer()
#pagebreak()

// ─── PAGE 10: Back Cover ────────────────────────────────────────

#dark-bg()
#glow(x: 145mm, y: 10mm, size: 180mm, color: brand-petrol, opacity: 20%)
#glow(x: 25mm, y: 85mm, size: 140mm, color: brand-petrol, opacity: 14%)
#glow(x: 200mm, y: 100mm, size: 100mm, color: brand-petrol, opacity: 7%)

#align(center + horizon)[
  #image("/Assets/Logos/AICO.svg", width: 3.5cm)
  #v(0.8cm)
  #text(12pt, fill: slate-400, weight: "light", font: "Sora")[
    nikita\@aicoflow.com #h(14pt) | #h(14pt) aicoflow.com
  ]
  #v(0.3cm)
  #text(8pt, fill: slate-600)[Confidential. For internal and partner use.]
]

#footer-strip()
