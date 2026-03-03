#import "/Shared/Templates/presentation.typ": *

#let url = "aicoflow.com"
#let brand = "aico"

#show: presentation.with(
  title: "AICOYO Pitch Deck",
  brand: brand,
)

// ═══════════════════════════════════════════════════════════════
// SLIDE 1 — Title
// ═══════════════════════════════════════════════════════════════
#title-slide(
  title: "AICOYO",
  subtitle: [The Conversation Infrastructure. \ *Design. Deploy. Monitor. Transfer.*],
  brand: brand,
  url: url,
)

// ═══════════════════════════════════════════════════════════════
// SLIDE 2 — Problem
// ═══════════════════════════════════════════════════════════════
#two-col-slide(
  title: none,
  brand: brand,
  url: url,
  ratio: (1fr, 1.2fr),
  col-left: [
    #deco-ring(x: 72mm, y: -8mm, size: 38mm, thickness: 2pt, opacity: 14%, color: aico-mint)
    #deco-cross(x: -10mm, y: -2mm, size: 16mm, opacity: 18%, anchor: top + left)
    #deco-dots(x: -14mm, y: 66mm, cols: 5, rows: 4, gap: 5pt, size: 2.5pt, opacity: 25%)
    #deco-dot(x: 78mm, y: 74mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
    #deco-dot(x: -6mm, y: 38mm, size: 4pt, opacity: 18%, color: aico-petrol, anchor: top + left)
    #v(0.6cm)
    #slide-label[The Problem]
    #v(0.3cm)
    #hero-stat[68%][of customers hang up]
    #v(0.15cm)
    #text(10pt, fill: aico-muted)[before ever reaching a human agent]
    #v(0.4cm)
    #text(9pt, fill: aico-muted)[Rising staff costs · Talent shortage \ Agent turnover: 45%/yr \ 24/7 expectations vs. office hours]
  ],
  col-right: [
    #v(0.6cm)
    #_left-accent(height: 50mm)
    #block(inset: (left: 6mm))[
      #text(64pt, fill: aico-petrol, weight: "bold")[\u{201C}]
      #v(-1.0cm)
      #text(14pt, weight: "regular", fill: aico-text)[
        Contact centers spend \$1.3 trillion annually — yet customer satisfaction is at a decade low.
        Legacy IVR systems frustrate callers. First AI solutions are too expensive, provider-locked, or can't replace a full contact center.
      ]
      #v(0.4cm)
      #block(width: 30%, height: 2pt, fill: gradient-h, radius: 1pt)
      #v(0.2cm)
      #text(11pt, weight: "bold", fill: aico-text)[Deloitte]
      #linebreak()
      #text(9pt, fill: aico-muted)[Global Contact Center Survey, 2025]
    ]
  ],
)

// ═══════════════════════════════════════════════════════════════
// SLIDE 3 — Solution Overview
// ═══════════════════════════════════════════════════════════════
#stats-slide(
  title: [Agents That Pick Up the Phone],
  description: [
    Design conversational agents in a visual flow builder. Deploy them to phone lines, SMS, or web — and warm-transfer to human specialists when it matters.

    *Real telephony. Real conversations. Full human-AI collaboration.*
  ],
  stats: (
    (value: "< 300ms", label: "Voice latency", icon: msym("speed", size: 18pt)),
    (value: "24/7", label: "Availability", icon: msym("schedule", size: 18pt)),
    (value: "15+", label: "Flow node types", icon: msym("account_tree", size: 18pt)),
    (value: "5+", label: "LLM providers", icon: msym("model_training", size: 18pt)),
  ),
  brand: brand,
  url: url,
)

// ═══════════════════════════════════════════════════════════════
// SLIDE 4 — How It Works
// ═══════════════════════════════════════════════════════════════
#two-col-slide(
  title: [Flow to Phone Call in Minutes],
  subtitle: [Design #sym.arrow.r Deploy #sym.arrow.r Monitor #sym.arrow.r Transfer],
  brand: brand,
  url: url,
  ratio: (1.4fr, 1fr),
  col-left: [
    #deco-square(x: -14mm, y: 62mm, size: 22mm, radius: 5pt, opacity: 8%, color: aico-mint, anchor: top + left)
    #deco-dots(x: 92mm, y: 2mm, cols: 4, rows: 3, gap: 4pt, size: 2pt, opacity: 22%)
    #deco-dot(x: -6mm, y: 58mm, size: 8pt, opacity: 22%, color: aico-signal, anchor: top + left)
    #screenshot("/Assets/Screenshots/flow-builder.png", width: 100%)
  ],
  col-right: [
    #deco-ring(x: 48mm, y: 56mm, size: 30mm, thickness: 1.5pt, opacity: 14%, color: aico-mint, anchor: top + left)
    #deco-cross(x: 56mm, y: 4mm, size: 12mm, opacity: 18%, anchor: top + left)
    #deco-dot(x: 60mm, y: 2mm, size: 4pt, opacity: 20%, color: aico-petrol, anchor: top + left)
    #v(0.1cm)
    #feature-row(title: "Design", description: "Visual flow builder with 15+ node types", icon: msym("account_tree", size: 11pt))
    #v(3pt)
    #feature-row(title: "Deploy", description: "Connect SIP trunk, assign number, go live", icon: msym("rocket_launch", size: 11pt))
    #v(3pt)
    #feature-row(title: "Monitor", description: "Live transcripts, variables, analytics", icon: msym("monitoring", size: 11pt))
    #v(3pt)
    #feature-row(title: "Transfer", description: "Warm handoff with full AI context brief", icon: msym("swap_horiz", size: 11pt))
  ],
)

// ═══════════════════════════════════════════════════════════════
// SLIDE 5 — Platform Features
// ═══════════════════════════════════════════════════════════════
#two-col-slide(
  title: [The Platform],
  subtitle: [Swap any provider. Ship to any channel. Sleep at night.],
  brand: brand,
  url: url,
  col-left: [
    #deco-ring(x: -16mm, y: 58mm, size: 34mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
    #deco-dots(x: 68mm, y: 62mm, cols: 4, rows: 4, gap: 5pt, size: 2.5pt, opacity: 25%)
    #deco-cross(x: 72mm, y: 2mm, size: 14mm, opacity: 18%)
    #deco-dot(x: -8mm, y: 54mm, size: 7pt, opacity: 22%, color: aico-signal, anchor: top + left)
    #slide-label[Voice Pipeline]
    #v(0.15cm)
    #feature-row(title: "Speech-to-Text", description: "Deepgram, Vosk, Whisper — swap anytime", icon: msym("mic", size: 11pt))
    #v(3pt)
    #feature-row(title: "LLM Reasoning", description: "OpenAI, Anthropic, Mistral, Groq — fallbacks", icon: msym("psychology", size: 11pt))
    #v(3pt)
    #feature-row(title: "Text-to-Speech", description: "ElevenLabs, Piper, Cartesia — natural voices", icon: msym("record_voice_over", size: 11pt))
    #v(3pt)
    #feature-row(title: "Telephony", description: "Telnyx, Twilio, Vonage — SIP trunks & numbers", icon: msym("call", size: 11pt))
  ],
  col-right: [
    #deco-square(x: 58mm, y: 56mm, size: 20mm, radius: 5pt, opacity: 8%, color: aico-petrol, anchor: top + left)
    #deco-dot(x: 66mm, y: 2mm, size: 8pt, opacity: 24%, color: aico-mint, anchor: top + left)
    #deco-dot(x: 70mm, y: 6mm, size: 3pt, opacity: 16%, color: aico-petrol, anchor: top + left)
    #slide-label[Enterprise Features]
    #v(0.15cm)
    #feature-row(title: "Multi-Tenant", description: "Org isolation, RBAC, row-level security", icon: msym("shield", size: 11pt))
    #v(3pt)
    #feature-row(title: "Memory", description: "Persistent user context — pgvector-powered", icon: msym("memory", size: 11pt))
    #v(3pt)
    #feature-row(title: "Tool System", description: "Connect to any API — CRM, ticketing, DBs", icon: msym("build", size: 11pt))
    #v(3pt)
    #feature-row(title: "Multi-Channel", description: "Voice, WebRTC, SMS, WhatsApp — one flow", icon: msym("devices", size: 11pt))
  ],
)

// ═══════════════════════════════════════════════════════════════
// SLIDE 6 — Human-AI Collaboration
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Humans in the Loop. Always.],
  subtitle: [Your specialists monitor, intervene, and collaborate with AI — live on every call],
  brand: brand,
  url: url,
)[
  #deco-ring(x: 174mm, y: 50mm, size: 32mm, thickness: 2pt, opacity: 14%, color: aico-petrol, anchor: top + left)
  #deco-square(x: -14mm, y: 48mm, size: 24mm, radius: 5pt, opacity: 10%, color: aico-mint, anchor: top + left)
  #deco-dots(x: 172mm, y: 2mm, cols: 4, rows: 3, gap: 5pt, size: 2.5pt, opacity: 24%)
  #deco-cross(x: -10mm, y: 2mm, size: 16mm, opacity: 18%, anchor: top + left)
  #deco-dot(x: 178mm, y: 48mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
  #deco-dot(x: -10mm, y: 44mm, size: 4pt, opacity: 18%, color: aico-petrol, anchor: top + left)
  #v(0.2cm)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 14pt,
    row-gutter: 14pt,
    accent-card(title: "Live Monitoring")[
      Watch calls in real-time: transcript stream, agent state,
      flow position, and all session variables at a glance.
    ],
    accent-card(title: "Warm Transfer")[
      AI briefs the specialist with full context before handoff.
      No "please repeat your issue." Seamless takeover.
    ],
    accent-card(title: "Agent Assist")[
      AI stays on the line to help: suggests responses,
      pulls customer data, handles follow-up actions.
    ],
    accent-card(title: "Escalation Rules")[
      Configure when to transfer: sentiment drop, topic match,
      confidence threshold, or customer request.
    ],
  )
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 7 — Use Cases
// ═══════════════════════════════════════════════════════════════
#two-col-slide(
  title: [What Gets Built in Week One],
  subtitle: [Every channel. Every vertical. From day one.],
  brand: brand,
  url: url,
  col-left: [
    #deco-ring(x: 60mm, y: 54mm, size: 38mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
    #deco-dots(x: -10mm, y: 64mm, cols: 4, rows: 4, gap: 5pt, size: 2.5pt, opacity: 24%)
    #deco-square(x: 70mm, y: -2mm, size: 18mm, radius: 4pt, opacity: 8%, color: aico-petrol)
    #deco-cross(x: -6mm, y: 2mm, size: 12mm, opacity: 16%, anchor: top + left)
    #deco-dot(x: 74mm, y: 56mm, size: 8pt, opacity: 22%, color: aico-signal, anchor: top + left)
    #deco-dot(x: -8mm, y: 60mm, size: 4pt, opacity: 18%, color: aico-petrol, anchor: top + left)
    #slide-label[Use Cases]
    #v(0.15cm)
    #feature-row(title: "Inbound Support", description: "Triage, route, resolve — 24/7, any language", icon: msym("support_agent", size: 11pt))
    #v(3pt)
    #feature-row(title: "Claims & Intake", description: "Structured data via natural conversation", icon: msym("assignment", size: 11pt))
    #v(3pt)
    #feature-row(title: "Appointments", description: "Schedule, confirm, remind — calendar-integrated", icon: msym("event", size: 11pt))
    #v(3pt)
    #feature-row(title: "Outbound Campaigns", description: "Reminders, surveys, collections at scale", icon: msym("campaign", size: 11pt))
    #v(0.15cm)
    #grid(columns: (auto, auto), column-gutter: 5pt, tag("Doc Processing"), tag("Analytics"))
  ],
  col-right: [
    #slide-label[Target Verticals]
    #v(0.15cm)
    #let icon-card(icon, label) = card[
      #grid(columns: (auto, 1fr), column-gutter: 5pt, align: horizon,
        msym(icon, size: 10pt), [#label])
    ]
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 5pt,
      row-gutter: 5pt,
      icon-card("directions_car", "Automotive"),
      icon-card("shield", "Insurance"),
      icon-card("local_hospital", "Healthcare"),
      icon-card("account_balance", "Financial Services"),
      icon-card("cell_tower", "Telecom"),
      icon-card("storefront", "Retail"),
    )
    #v(0.2cm)
    #slide-label[Channels]
    #v(0.1cm)
    #grid(
      columns: (auto, auto, auto, auto),
      column-gutter: 5pt,
      tag("Phone / SIP"),
      tag("WebRTC"),
      tag("SMS"),
      tag("WhatsApp"),
    )
  ],
)

// ═══════════════════════════════════════════════════════════════
// SLIDE 8 — Market Size
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [A \$12B Market — Growing 22% p.a.],
  subtitle: [Contact Center AI is the fastest-growing segment in enterprise software],
  brand: brand,
  url: url,
)[
  #deco-ring(x: 174mm, y: 52mm, size: 34mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
  #deco-square(x: -14mm, y: 54mm, size: 24mm, radius: 5pt, opacity: 8%, color: aico-petrol, anchor: top + left)
  #deco-dots(x: 176mm, y: 2mm, cols: 4, rows: 3, gap: 5pt, size: 2.5pt, opacity: 22%)
  #deco-cross(x: -10mm, y: 2mm, size: 14mm, opacity: 18%, anchor: top + left)
  #deco-dot(x: 180mm, y: 50mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
  #deco-dot(x: -8mm, y: 50mm, size: 4pt, opacity: 18%, color: aico-petrol, anchor: top + left)
  #v(0.1cm)
  // TAM / SAM / SOM cards
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 10pt,
    card[
      #slide-label[TAM]
      #v(0.1cm)
      #text(22pt, weight: "bold", fill: aico-petrol)[7–12B]
      #text(9pt, fill: aico-muted)[ USD (2030)]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Global Contact Center AI \ CAGR 18–24%]
    ],
    highlight-card[
      #slide-label[SAM]
      #v(0.1cm)
      #text(22pt, weight: "bold", fill: aico-petrol)[400–800M]
      #text(9pt, fill: aico-muted)[ EUR]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[DACH Voice AI \ SMB & Mid-Market]
    ],
    card[
      #slide-label[SOM]
      #v(0.1cm)
      #text(22pt, weight: "bold", fill: aico-petrol)[20–50M]
      #text(9pt, fill: aico-muted)[ EUR]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Automotive + Insurance \ DACH (Year 3)]
    ],
  )

  #v(0.25cm)

  #banner-bar(
    (label: "Car dealerships DE", value: "~36,000"),
    (label: "Voice AI DACH 2030", value: "~800M EUR"),
    (label: "AI Customer Service", value: "47.8B USD (2030)"),
    (label: "GDPR advantage", value: "US cloud locked out"),
  )
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 9 — Competition
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Why AICOYO Wins],
  subtitle: [No competitor offers provider freedom, on-premise, live monitoring, and open core combined],
  brand: brand,
  url: url,
)[
  #deco-square(x: 170mm, y: 52mm, size: 28mm, radius: 6pt, opacity: 8%, color: aico-mint, anchor: top + left)
  #deco-ring(x: -14mm, y: 58mm, size: 32mm, thickness: 2pt, opacity: 14%, color: aico-petrol, anchor: top + left)
  #deco-dots(x: 176mm, y: 2mm, cols: 3, rows: 4, gap: 5pt, size: 2.5pt, opacity: 22%)
  #deco-dot(x: -8mm, y: 54mm, size: 8pt, opacity: 25%, color: aico-signal, anchor: top + left)
  #v(0.1cm)
  #block(width: 100%, inset: 0pt)[
    #set text(8pt)
    #table(
      columns: (1.4fr, 1fr, 1fr, 1fr, 1fr),
      align: (left, center, center, center, center),
      stroke: 0.5pt + aico-border,
      inset: 6pt,
      fill: (x, y) => if y == 0 { aico-light } else if x == 1 { aico-mint.transparentize(85%) } else { white },
      table.header(
        text(weight: "bold")[Feature],
        text(weight: "bold", fill: aico-petrol)[AICOYO],
        [Synthflow],
        [Vapi],
        [Retell AI],
      ),
      [Funding], text(weight: "bold")[Bootstrapped], [30M USD], [25M USD], [\~10M USD],
      [Provider Freedom], text(fill: rgb("#16A34A"), weight: "bold")[Yes (all)], [Limited], [Yes], [Limited],
      [On-Premise (5 min)], text(fill: rgb("#16A34A"), weight: "bold")[Yes], [No], [No], [No],
      [Live Monitoring], text(fill: rgb("#16A34A"), weight: "bold")[Yes], [Limited], [No], [No],
      [GDPR / EU-native], text(fill: rgb("#16A34A"), weight: "bold")[Yes], [Partial], [No], [Partial],
      [Open Core (planned)], text(fill: rgb("#16A34A"), weight: "bold")[Yes], [No], [No], [No],
    )
  ]
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 10 — Traction
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Traction],
  subtitle: [Feature-complete platform, paying customers, strategic partnerships],
  brand: brand,
  url: url,
)[
  #deco-ring(x: 174mm, y: 52mm, size: 34mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
  #deco-square(x: -14mm, y: 56mm, size: 22mm, radius: 5pt, opacity: 8%, color: aico-petrol, anchor: top + left)
  #deco-dots(x: -12mm, y: 2mm, cols: 4, rows: 3, gap: 5pt, size: 2.5pt, opacity: 24%)
  #deco-cross(x: 178mm, y: 62mm, size: 14mm, opacity: 18%)
  #deco-dot(x: 180mm, y: 50mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
  #v(0.1cm)
  #banner-bar(
    (label: "MRR", value: "~2,000 USD"),
    (label: "Gross Margin", value: "80%"),
    (label: "Uptime", value: "100% (3 mo.)"),
    (label: "Platform", value: "Feature-complete"),
  )

  #v(0.2cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    row-gutter: 10pt,
    accent-card(title: "2 Paying Customers")[
      Autohaus Reit & Autohaus Brunkhorst (Automotive). \
      ~1,000 USD MRR each + ~4,000 USD setup fee. \
      Acquired via direct sales (cold outreach & network).
    ],
    accent-card(title: "BAUCH Group — 50–100K EUR")[
      Strategic investor from Ingolstadt/Audi region. \
      Verbal commitment without demo. Equity cap at 5%. \
      Access to the automotive ecosystem.
    ],
    accent-card(title: "FIASCO GmbH — LOI")[
      Distribution partner for insurance vertical. \
      Revenue-share model — 0% equity, no cap table impact. \
      Enterprise deals: 5,000–10,000 EUR MRR/customer.
    ],
    accent-card(title: "Solo-Founder Build")[
      Entire platform built in 8–12 months as solo developer. \
      Replacement cost: 250K–310K EUR (agency estimate). \
      Stack: Svelte, Python, LiveKit, PostgreSQL, Docker.
    ],
  )
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 11 — Business Model & Pricing
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Business Model & Pricing],
  subtitle: [Hybrid SaaS model: monthly subscriptions + one-time setup fees],
  brand: brand,
  url: url,
)[
  #deco-square(x: -16mm, y: 54mm, size: 26mm, radius: 6pt, opacity: 8%, color: aico-mint, anchor: top + left)
  #deco-ring(x: 172mm, y: -4mm, size: 34mm, thickness: 2pt, opacity: 14%, color: aico-petrol)
  #deco-dots(x: -12mm, y: 2mm, cols: 4, rows: 3, gap: 5pt, size: 2.5pt, opacity: 24%)
  #deco-cross(x: 178mm, y: 62mm, size: 14mm, opacity: 18%)
  #deco-dot(x: -10mm, y: 50mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
  #deco-dot(x: 178mm, y: -2mm, size: 4pt, opacity: 18%, color: aico-mint, anchor: top + left)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 10pt,
    card[
      #text(11pt, weight: "bold", fill: aico-text)[Starter]
      #v(0.1cm)
      #text(20pt, weight: "bold", fill: aico-petrol)[500–900 €]
      #text(8pt, fill: aico-muted)[ \/ month]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Single dealership, SMB \ Setup: 2,000–3,000 €]
    ],
    highlight-card[
      #grid(columns: (1fr, auto), align: horizon,
        text(11pt, weight: "bold", fill: aico-text)[Professional],
        box(inset: (x: 6pt, y: 2pt), radius: 8pt, fill: gradient-d,
          text(6.5pt, weight: "bold", fill: white)[RECOMMENDED]),
      )
      #v(0.1cm)
      #text(20pt, weight: "bold", fill: aico-petrol)[1,500–2,500 €]
      #text(8pt, fill: aico-muted)[ \/ month]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Dealer groups, mid-size businesses \ Setup: 5,000 €]
    ],
    card[
      #text(11pt, weight: "bold", fill: aico-text)[Enterprise]
      #v(0.1cm)
      #text(20pt, weight: "bold", fill: aico-petrol)[5,000–10,000 €]
      #text(8pt, fill: aico-muted)[ \/ month]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Insurance, large contact centers \ Setup: 10,000–15,000 €]
    ],
  )

  #v(0.2cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    block(inset: 10pt, radius: 8pt, fill: aico-light, width: 100%, {
      grid(columns: (auto, 1fr), column-gutter: 8pt, align: horizon,
        text(10pt, weight: "bold", fill: aico-text)[Unit Economics],
        text(9pt, fill: aico-muted)[Avg. 2,500 EUR/customer · 80% gross margin · LTV/CAC >8x (target)],
      )
    }),
    block(inset: 10pt, radius: 8pt, fill: aico-light, width: 100%, {
      grid(columns: (auto, 1fr), column-gutter: 8pt, align: horizon,
        text(10pt, weight: "bold", fill: aico-text)[Open Core],
        text(9pt, fill: aico-muted)[Base platform open source · Enterprise features paid (GitLab model)],
      )
    }),
  )

  #v(0.15cm)
  #text(8pt, fill: aico-muted)[All tiers include: SSO & RBAC · Call recording · GDPR compliance · API access · On-premise available]
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 12 — Financial Projections
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Financial Projections],
  subtitle: [3 scenarios — avg. 2,500 EUR/customer, churn 10% SMB / 5% enterprise factored in],
  brand: brand,
  url: url,
)[
  #deco-ring(x: 174mm, y: 52mm, size: 36mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
  #deco-square(x: -14mm, y: 54mm, size: 24mm, radius: 5pt, opacity: 8%, color: aico-petrol, anchor: top + left)
  #deco-dots(x: -10mm, y: 2mm, cols: 4, rows: 3, gap: 5pt, size: 2.5pt, opacity: 22%)
  #deco-dot(x: 180mm, y: 50mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
  #v(0.1cm)
  #block(width: 100%, inset: 0pt)[
    #set text(8.5pt)
    #table(
      columns: (1.6fr, 1fr, 1fr, 1fr),
      align: (left, center, center, center),
      stroke: 0.5pt + aico-border,
      inset: 7pt,
      fill: (x, y) => if y == 0 { aico-light } else if x == 2 { aico-mint.transparentize(85%) } else { white },
      table.header(
        text(weight: "bold")[Metric],
        [Pessimistic],
        text(weight: "bold", fill: aico-petrol)[Realistic],
        [Optimistic],
      ),
      [Customers M12 (net)], [8–12], text(weight: "bold")[\~28], [35–40],
      [MRR M12], [10–15K EUR], text(weight: "bold")[\~35K EUR], [50–60K EUR],
      [Customers M24 (net)], [18–25], text(weight: "bold")[\~86], [100–120],
      [ARR M24], [400–600K EUR], text(weight: "bold")[\~1.44M EUR], [1.8–2.2M EUR],
      [Customers M36 (net)], [25–35], text(weight: "bold")[\~135], [170–200],
      [*ARR M36*], [500–800K EUR], text(weight: "bold")[\~2.0M EUR], [3.0–4.0M EUR],
      [*Company Value (5× ARR)*], [2.5–4.0M EUR], text(weight: "bold")[\~10M EUR], [15–20M EUR],
    )
  ]

  #v(0.15cm)
  #text(8pt, fill: aico-muted)[3 independent growth channels: Direct Sales (Philipp Kaiser) · Partnerships (FIASCO, revenue share) · Inbound & PLG (open core) \ Break-even at MRR \~11,000 EUR = 8–10 customers — in the realistic scenario between month 9 and 14]
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 13 — Team
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Team],
  subtitle: [Lean team with deep technical and sales execution],
  brand: brand,
  url: url,
)[
  #deco-ring(x: 176mm, y: 54mm, size: 32mm, thickness: 2pt, opacity: 14%, color: aico-petrol, anchor: top + left)
  #deco-square(x: -14mm, y: 52mm, size: 22mm, radius: 5pt, opacity: 8%, color: aico-mint, anchor: top + left)
  #deco-dots(x: 174mm, y: 2mm, cols: 4, rows: 3, gap: 5pt, size: 2.5pt, opacity: 24%)
  #deco-cross(x: -10mm, y: 2mm, size: 14mm, opacity: 18%, anchor: top + left)
  #deco-dot(x: -8mm, y: 48mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
  #v(0.1cm)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    row-gutter: 12pt,
    accent-card(title: "Nikita Friesen — CEO & CTO")[
      Fullstack developer, 2 startup exits (drones, payments). \
      Built the entire platform solo (8–12 months). \
      Stack: Svelte, Python, LiveKit, Docker, K8s, PostgreSQL.
    ],
    accent-card(title: "Philipp Kaiser — Head of Sales")[
      Engineer with sales experience, automotive network. \
      Won the first 2 paying customers. \
      15% equity — 36-month performance vesting tied to KPIs.
    ],
    accent-card(title: "FIASCO GmbH — Distribution Partner")[
      Established network in the insurance industry. \
      LOI signed — revenue share only. \
      0% equity — no cap table impact.
    ],
    accent-card(title: "BAUCH Group — Strategic Investor")[
      Engineering & manufacturing (Ingolstadt/Audi region). \
      50–100K EUR investment commitment. Equity cap 5%. \
      Strategic access to the automotive ecosystem.
    ],
  )

  #v(0.1cm)
  #text(8pt, fill: aico-muted)[Cap table (post-seed): Nikita 74–80% · Philipp up to 15% (vesting) · BAUCH 3–5% · ESOP 5–8% · FIASCO 0%]
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 14 — The Ask
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [The Ask],
  subtitle: [Seed round to scale sales, marketing, and product development],
  brand: brand,
  url: url,
)[
  #deco-ring(x: 174mm, y: 52mm, size: 36mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
  #deco-square(x: -14mm, y: 54mm, size: 24mm, radius: 5pt, opacity: 8%, color: aico-petrol, anchor: top + left)
  #deco-dots(x: -12mm, y: 62mm, cols: 4, rows: 4, gap: 5pt, size: 2.5pt, opacity: 24%)
  #deco-cross(x: 178mm, y: 2mm, size: 14mm, opacity: 18%)
  #deco-dot(x: 180mm, y: 50mm, size: 8pt, opacity: 24%, color: aico-signal, anchor: top + left)
  #deco-dot(x: -8mm, y: 50mm, size: 4pt, opacity: 18%, color: aico-petrol, anchor: top + left)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    {
      block(width: 100%, inset: 10pt, radius: 8pt, fill: aico-light, {
        text(20pt, weight: "bold", fill: aico-petrol)[200,000 – 500,000 EUR]
        linebreak()
        v(2pt)
        text(8.5pt, fill: aico-muted)[Seed round · Pre-money 2–3M EUR · Equity 6–17%]
      })
      v(6pt)
      block(width: 100%, inset: 8pt, radius: 8pt, stroke: 0.5pt + aico-border, {
        grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 5pt,
          text(8pt, weight: "bold", fill: aico-text)[Runway:],
          text(8pt, fill: aico-muted)[12–16 months],
          text(8pt, weight: "bold", fill: aico-text)[Confirmed:],
          text(8pt, fill: aico-muted)[BAUCH Group (50–100K EUR)],
          text(8pt, weight: "bold", fill: aico-text)[Replacement:],
          text(8pt, fill: aico-muted)[250K–310K EUR (platform rebuild cost)],
          text(8pt, weight: "bold", fill: aico-text)[Valuation:],
          text(8pt, fill: aico-muted)[Realistic 2.0–3.0M EUR],
        )
      })
    },
    {
      slide-label[Use of Funds (at 300K)]
      v(4pt)
      feature-row(title: "Sales & Distribution (35–40%)", description: "105–120K · Sales team, CRM, commissions", icon: msym("trending_up", size: 11pt))
      v(2pt)
      feature-row(title: "Product Development (25–30%)", description: "75–90K · Open core, enterprise features", icon: msym("code", size: 11pt))
      v(2pt)
      feature-row(title: "Marketing (15–20%)", description: "45–60K · Website, content, trade shows", icon: msym("campaign", size: 11pt))
      v(2pt)
      feature-row(title: "Ops & Buffer (15–20%)", description: "45–60K · GmbH, legal, accounting, infra, contingency", icon: msym("settings", size: 11pt))
    },
  )
]

// ═══════════════════════════════════════════════════════════════
// SLIDE 15 — Closing
// ═══════════════════════════════════════════════════════════════
#closing-slide(
  title: "Your customers are on hold. Let's fix that.",
  contact: "nikita@aicoflow.com",
  brand: brand,
  url: url,
)
