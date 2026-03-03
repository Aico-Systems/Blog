#import "/Shared/Templates/presentation.typ": *

#let url = "aicoflow.com"
#let brand = "aico"

#show: presentation.with(
  title: "AICOYO Pitch Deck",
  brand: brand,
)

// ═══════════════════════════════════════════════════════════════
// FOLIE 1 — Titel
// ═══════════════════════════════════════════════════════════════
#title-slide(
  title: "AICOYO",
  subtitle: [Die Infrastruktur für Kundengespräche. \ *Designen. Deployen. Überwachen. Übergeben.*],
  brand: brand,
  url: url,
)

// ═══════════════════════════════════════════════════════════════
// FOLIE 2 — Problem
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
    #slide-label[Das Problem]
    #v(0.3cm)
    #hero-stat[68%][der Anrufer legen auf]
    #v(0.15cm)
    #text(10pt, fill: aico-muted)[bevor sie einen Menschen erreichen]
    #v(0.4cm)
    #text(9pt, fill: aico-muted)[Steigende Personalkosten · Fachkräftemangel \ Fluktuation: 45%/Jahr \ 24/7-Erwartung vs. Bürozeiten]
  ],
  col-right: [
    #v(0.6cm)
    #_left-accent(height: 50mm)
    #block(inset: (left: 6mm))[
      #text(64pt, fill: aico-petrol, weight: "bold")[\u{201C}]
      #v(-1.0cm)
      #text(14pt, weight: "regular", fill: aico-text)[
        Contact Center weltweit geben jährlich 1,3 Billionen USD aus — und die Kundenzufriedenheit ist auf einem 10-Jahres-Tief.
        Veraltete IVR-Systeme frustrieren Anrufer. Erste KI-Lösungen sind zu teuer, provider-gebunden oder ersetzen kein vollständiges Contact Center.
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
// FOLIE 3 — Lösung
// ═══════════════════════════════════════════════════════════════
#stats-slide(
  title: [Agenten, die ans Telefon gehen],
  description: [
    KI-Agenten im visuellen Flow-Builder bauen. Per Telefon, SMS oder Web deployen — und bei Bedarf nahtlos an menschliche Spezialisten übergeben.

    *Echte Telefonie. Echte Gespräche. Mensch und KI. Auf einer Leitung.*
  ],
  stats: (
    (value: "< 300ms", label: "Sprachlatenz", icon: msym("speed", size: 18pt)),
    (value: "24/7", label: "Verfügbarkeit", icon: msym("schedule", size: 18pt)),
    (value: "15+", label: "Flow-Node-Typen", icon: msym("account_tree", size: 18pt)),
    (value: "5+", label: "LLM-Anbieter", icon: msym("model_training", size: 18pt)),
  ),
  brand: brand,
  url: url,
)

// ═══════════════════════════════════════════════════════════════
// FOLIE 4 — So funktioniert's
// ═══════════════════════════════════════════════════════════════
#two-col-slide(
  title: [Vom Flow zum Telefonat in Minuten],
  subtitle: [Designen #sym.arrow.r Deployen #sym.arrow.r Überwachen #sym.arrow.r Übergeben],
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
    #feature-row(title: "Designen", description: "Visueller Flow-Builder mit 15+ Node-Typen", icon: msym("account_tree", size: 11pt))
    #v(3pt)
    #feature-row(title: "Deployen", description: "SIP-Trunk anbinden, Nummer zuweisen, live gehen", icon: msym("rocket_launch", size: 11pt))
    #v(3pt)
    #feature-row(title: "Überwachen", description: "Live-Transkripte, Variablen, Analytics", icon: msym("monitoring", size: 11pt))
    #v(3pt)
    #feature-row(title: "Übergeben", description: "Warm Transfer mit vollständigem KI-Kontext", icon: msym("swap_horiz", size: 11pt))
  ],
)

// ═══════════════════════════════════════════════════════════════
// FOLIE 5 — Plattform-Features
// ═══════════════════════════════════════════════════════════════
#two-col-slide(
  title: [Die Plattform],
  subtitle: [Jeden Anbieter tauschen. Jeden Kanal bespielen. Ruhig schlafen.],
  brand: brand,
  url: url,
  col-left: [
    #deco-ring(x: -16mm, y: 58mm, size: 34mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
    #deco-dots(x: 68mm, y: 62mm, cols: 4, rows: 4, gap: 5pt, size: 2.5pt, opacity: 25%)
    #deco-cross(x: 72mm, y: 2mm, size: 14mm, opacity: 18%)
    #deco-dot(x: -8mm, y: 54mm, size: 7pt, opacity: 22%, color: aico-signal, anchor: top + left)
    #slide-label[Voice Pipeline]
    #v(0.15cm)
    #feature-row(title: "Speech-to-Text", description: "Deepgram, Vosk, Whisper — jederzeit tauschbar", icon: msym("mic", size: 11pt))
    #v(3pt)
    #feature-row(title: "LLM-Reasoning", description: "OpenAI, Anthropic, Mistral, Groq — mit Fallbacks", icon: msym("psychology", size: 11pt))
    #v(3pt)
    #feature-row(title: "Text-to-Speech", description: "ElevenLabs, Piper, Cartesia — natürliche Stimmen", icon: msym("record_voice_over", size: 11pt))
    #v(3pt)
    #feature-row(title: "Telefonie", description: "Telnyx, Twilio, Vonage — SIP-Trunks & Nummern", icon: msym("call", size: 11pt))
  ],
  col-right: [
    #deco-square(x: 58mm, y: 56mm, size: 20mm, radius: 5pt, opacity: 8%, color: aico-petrol, anchor: top + left)
    #deco-dot(x: 66mm, y: 2mm, size: 8pt, opacity: 24%, color: aico-mint, anchor: top + left)
    #deco-dot(x: 70mm, y: 6mm, size: 3pt, opacity: 16%, color: aico-petrol, anchor: top + left)
    #slide-label[Enterprise-Features]
    #v(0.15cm)
    #feature-row(title: "Multi-Tenant", description: "Mandantentrennung, RBAC, Row-Level Security", icon: msym("shield", size: 11pt))
    #v(3pt)
    #feature-row(title: "Memory", description: "Persistenter Nutzerkontext — pgvector-basiert", icon: msym("memory", size: 11pt))
    #v(3pt)
    #feature-row(title: "Tool-System", description: "Anbindung an jede API — CRM, Ticketing, DBs", icon: msym("build", size: 11pt))
    #v(3pt)
    #feature-row(title: "Multi-Channel", description: "Voice, WebRTC, SMS, WhatsApp — ein Flow", icon: msym("devices", size: 11pt))
  ],
)

// ═══════════════════════════════════════════════════════════════
// FOLIE 6 — Mensch-KI-Kollaboration
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Der Mensch bleibt im Loop. Immer.],
  subtitle: [Überwachen. Eingreifen. Übernehmen — live bei jedem Anruf.],
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
    accent-card(title: "Live-Monitoring")[
      Gespräche in Echtzeit verfolgen: Transkript-Stream, Agent-Status,
      Flow-Position und alle Session-Variablen auf einen Blick.
    ],
    accent-card(title: "Warm Transfer")[
      Die KI brieft den Spezialisten mit vollem Kontext vor der Übergabe.
      Kein „Bitte schildern Sie Ihr Anliegen erneut." Nahtlose Übernahme.
    ],
    accent-card(title: "Agent Assist")[
      Die KI bleibt in der Leitung und hilft: schlägt Antworten vor,
      ruft Kundendaten ab, führt Follow-up-Aktionen aus.
    ],
    accent-card(title: "Eskalationsregeln")[
      Konfigurierbar: Stimmungsabfall, Themen-Match,
      Konfidenz-Schwelle oder Kundenwunsch.
    ],
  )
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 7 — Use Cases
// ═══════════════════════════════════════════════════════════════
#two-col-slide(
  title: [Was in der ersten Woche entsteht],
  subtitle: [Jeder Kanal. Jede Branche. Ab Tag eins.],
  brand: brand,
  url: url,
  col-left: [
    #deco-ring(x: 60mm, y: 54mm, size: 38mm, thickness: 2pt, opacity: 14%, color: aico-mint, anchor: top + left)
    #deco-dots(x: -10mm, y: 64mm, cols: 4, rows: 4, gap: 5pt, size: 2.5pt, opacity: 24%)
    #deco-square(x: 70mm, y: -2mm, size: 18mm, radius: 4pt, opacity: 8%, color: aico-petrol)
    #deco-cross(x: -6mm, y: 2mm, size: 12mm, opacity: 16%, anchor: top + left)
    #deco-dot(x: 74mm, y: 56mm, size: 8pt, opacity: 22%, color: aico-signal, anchor: top + left)
    #deco-dot(x: -8mm, y: 60mm, size: 4pt, opacity: 18%, color: aico-petrol, anchor: top + left)
    #slide-label[Anwendungsfälle]
    #v(0.15cm)
    #feature-row(title: "Inbound-Support", description: "Triage, Weiterleitung, Lösung — 24/7, jede Sprache", icon: msym("support_agent", size: 11pt))
    #v(3pt)
    #feature-row(title: "Schadenaufnahme", description: "Strukturierte Daten über natürliche Gespräche", icon: msym("assignment", size: 11pt))
    #v(3pt)
    #feature-row(title: "Terminvereinbarung", description: "Buchen, bestätigen, erinnern — kalenderintegriert", icon: msym("event", size: 11pt))
    #v(3pt)
    #feature-row(title: "Outbound-Kampagnen", description: "Erinnerungen, Umfragen, Inkasso — skalierbar", icon: msym("campaign", size: 11pt))
    #v(0.15cm)
    #grid(columns: (auto, auto), column-gutter: 5pt, tag("Dokumentenverarbeitung"), tag("Analytics"))
  ],
  col-right: [
    #slide-label[Zielbranchen]
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
      icon-card("shield", "Versicherung"),
      icon-card("local_hospital", "Gesundheitswesen"),
      icon-card("account_balance", "Finanzdienstleistung"),
      icon-card("cell_tower", "Telekommunikation"),
      icon-card("storefront", "Handel"),
    )
    #v(0.2cm)
    #slide-label[Kanäle]
    #v(0.1cm)
    #grid(
      columns: (auto, auto, auto, auto),
      column-gutter: 5pt,
      tag("Telefon / SIP"),
      tag("WebRTC"),
      tag("SMS"),
      tag("WhatsApp"),
    )
  ],
)

// ═══════════════════════════════════════════════════════════════
// FOLIE 8 — Marktgröße
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Ein 12-Mrd.-USD-Markt — 22% Wachstum p.a.],
  subtitle: [Das schnellste Wachstumssegment in Enterprise-Software],
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
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 10pt,
    card[
      #slide-label[TAM]
      #v(0.1cm)
      #text(22pt, weight: "bold", fill: aico-petrol)[7–12 Mrd.]
      #text(9pt, fill: aico-muted)[ USD (2030)]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Globaler Contact Center AI-Markt \ CAGR 18–24%]
    ],
    highlight-card[
      #slide-label[SAM]
      #v(0.1cm)
      #text(22pt, weight: "bold", fill: aico-petrol)[400–800 Mio.]
      #text(9pt, fill: aico-muted)[ EUR]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[DACH Voice AI \ KMU & Mittelstand]
    ],
    card[
      #slide-label[SOM]
      #v(0.1cm)
      #text(22pt, weight: "bold", fill: aico-petrol)[20–50 Mio.]
      #text(9pt, fill: aico-muted)[ EUR]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Automotive + Versicherung \ DACH (Jahr 3)]
    ],
  )

  #v(0.25cm)

  #banner-bar(
    (label: "Kfz-Betriebe DE", value: "~36.000"),
    (label: "Voice AI DACH 2030", value: "~800 Mio. EUR"),
    (label: "AI Customer Service", value: "47,8 Mrd. USD (2030)"),
    (label: "DSGVO-Vorteil", value: "US-Cloud aussperren"),
  )
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 9 — Wettbewerb
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Warum AICOYO gewinnt],
  subtitle: [Kein Wettbewerber bietet Provider-Freiheit, On-Premise, Live-Monitoring und Open Core gleichzeitig],
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
        text(weight: "bold")[Merkmal],
        text(weight: "bold", fill: aico-petrol)[AICOYO],
        [Synthflow],
        [Vapi],
        [Retell AI],
      ),
      [Funding], text(weight: "bold")[Bootstrapped], [30 Mio. USD], [25 Mio. USD], [\~10 Mio. USD],
      [Provider-Freiheit], text(fill: rgb("#16A34A"), weight: "bold")[Ja (alle)], [Begrenzt], [Ja], [Begrenzt],
      [On-Premise (5 Min.)], text(fill: rgb("#16A34A"), weight: "bold")[Ja], [Nein], [Nein], [Nein],
      [Live-Monitoring], text(fill: rgb("#16A34A"), weight: "bold")[Ja], [Begrenzt], [Nein], [Nein],
      [DSGVO / EU-nativ], text(fill: rgb("#16A34A"), weight: "bold")[Ja], [Teilweise], [Nein], [Teilweise],
      [Open Core (geplant)], text(fill: rgb("#16A34A"), weight: "bold")[Ja], [Nein], [Nein], [Nein],
    )
  ]
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 10 — Traction
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Traction],
  subtitle: [Feature-complete Plattform, zahlende Kunden, strategische Partnerschaften],
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
    (label: "MRR", value: "~2.000 USD"),
    (label: "Bruttomarge", value: "80%"),
    (label: "Uptime", value: "100% (3 Mo.)"),
    (label: "Plattform", value: "Feature-complete"),
  )

  #v(0.2cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    row-gutter: 10pt,
    accent-card(title: "2 zahlende Kunden")[
      Autohaus Reit & Autohaus Brunkhorst (Automotive). \
      Je \~1.000 USD MRR + \~4.000 USD Setup-Fee. \
      Gewonnen über Direct Sales (Kaltakquise & Netzwerk).
    ],
    accent-card(title: "BAUCH Group — 50–100K EUR")[
      Strategischer Investor aus dem Raum Ingolstadt/Audi. \
      Mündliche Zusage ohne Demo. Equity-Cap bei 5%. \
      Zugang zum Automotive-Ökosystem.
    ],
    accent-card(title: "FIASCO GmbH — LOI")[
      Vertriebspartner für die Versicherungsbranche. \
      Revenue-Share-Modell — 0% Equity, kein Cap-Table-Impact. \
      Enterprise-Deals: 5.000–10.000 EUR MRR/Kunde.
    ],
    accent-card(title: "Solo-Founder-Build")[
      Gesamte Plattform in 8–12 Monaten als Solo-Entwickler. \
      Replacement Cost: 250K–310K EUR (Agentur-Bewertung). \
      Stack: Svelte, Python, LiveKit, PostgreSQL, Docker.
    ],
  )
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 11 — Geschäftsmodell & Pricing
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Geschäftsmodell & Pricing],
  subtitle: [SaaS + Setup. Monatlich skalierbar.],
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
      #text(8pt, fill: aico-muted)[ \/ Monat]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Einzelnes Autohaus, KMU \ Setup: 2.000–3.000 €]
    ],
    highlight-card[
      #grid(columns: (1fr, auto), align: horizon,
        text(11pt, weight: "bold", fill: aico-text)[Professional],
        box(inset: (x: 6pt, y: 2pt), radius: 8pt, fill: gradient-d,
          text(6.5pt, weight: "bold", fill: white)[EMPFOHLEN]),
      )
      #v(0.1cm)
      #text(20pt, weight: "bold", fill: aico-petrol)[1.500–2.500 €]
      #text(8pt, fill: aico-muted)[ \/ Monat]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Autohaus-Gruppen, mittlere Betriebe \ Setup: 5.000 €]
    ],
    card[
      #text(11pt, weight: "bold", fill: aico-text)[Enterprise]
      #v(0.1cm)
      #text(20pt, weight: "bold", fill: aico-petrol)[5.000–10.000 €]
      #text(8pt, fill: aico-muted)[ \/ Monat]
      #v(0.1cm)
      #text(8pt, fill: aico-muted)[Versicherungen, große Contact Center \ Setup: 10.000–15.000 €]
    ],
  )

  #v(0.2cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    block(inset: 10pt, radius: 8pt, fill: aico-light, width: 100%, {
      grid(columns: (auto, 1fr), column-gutter: 8pt, align: horizon,
        text(10pt, weight: "bold", fill: aico-text)[Unit Economics],
        text(9pt, fill: aico-muted)[Ø 2.500 EUR/Kunde · 80% Bruttomarge · LTV/CAC >8x (Ziel)],
      )
    }),
    block(inset: 10pt, radius: 8pt, fill: aico-light, width: 100%, {
      grid(columns: (auto, 1fr), column-gutter: 8pt, align: horizon,
        text(10pt, weight: "bold", fill: aico-text)[Open Core],
        text(9pt, fill: aico-muted)[Basis Open Source · Enterprise-Features kostenpflichtig (GitLab-Modell)],
      )
    }),
  )

  #v(0.15cm)
  #text(8pt, fill: aico-muted)[Alle Tiers: SSO & RBAC · Call Recording · DSGVO-Compliance · API-Zugang · On-Premise verfügbar]
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 12 — Finanzprojektion
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Finanzprojektion],
  subtitle: [3 Szenarien — Ø 2.500 EUR/Kunde, Churn 10% SMB / 5% Enterprise einkalkuliert],
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
        text(weight: "bold")[Metrik],
        [Pessimistisch],
        text(weight: "bold", fill: aico-petrol)[Realistisch],
        [Optimistisch],
      ),
      [Kunden M12 (netto)], [8–12], text(weight: "bold")[\~28], [35–40],
      [MRR M12], [10–15K EUR], text(weight: "bold")[\~35K EUR], [50–60K EUR],
      [Kunden M24 (netto)], [18–25], text(weight: "bold")[\~86], [100–120],
      [ARR M24], [400–600K EUR], text(weight: "bold")[\~1,44 Mio. EUR], [1,8–2,2 Mio. EUR],
      [Kunden M36 (netto)], [25–35], text(weight: "bold")[\~135], [170–200],
      [*ARR M36*], [500–800K EUR], text(weight: "bold")[\~2,0 Mio. EUR], [3,0–4,0 Mio. EUR],
      [*Firmenwert (5× ARR)*], [2,5–4,0 Mio. EUR], text(weight: "bold")[\~10 Mio. EUR], [15–20 Mio. EUR],
    )
  ]

  #v(0.15cm)
  #text(8pt, fill: aico-muted)[3 unabhängige Wachstumskanäle: Direct Sales (Philipp Kaiser) · Partnerships (FIASCO, Revenue Share) · Inbound & PLG (Open Core) \ Break-Even bei MRR \~11.000 EUR = 8–10 Kunden — im realistischen Szenario zwischen Monat 9 und 14]
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 13 — Team
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Team],
  subtitle: [Klein, schnell, liefert.],
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
      Fullstack-Entwickler, 2 Startup-Exits (Drohnen, Payment). \
      Gesamte Plattform solo gebaut (8–12 Mo.). \
      Stack: Svelte, Python, LiveKit, Docker, K8s, PostgreSQL.
    ],
    accent-card(title: "Philipp Kaiser — Head of Sales")[
      Ingenieur mit Vertriebserfahrung, Automotive-Netzwerk. \
      Hat die ersten 2 zahlenden Kunden gewonnen. \
      15% Equity — 36-Mo. Performance-Vesting an KPIs gebunden.
    ],
    accent-card(title: "FIASCO GmbH — Vertriebspartner")[
      Etabliertes Netzwerk in der Versicherungsbranche. \
      LOI unterzeichnet — ausschließlich Revenue Share. \
      0% Equity — kein Cap-Table-Impact.
    ],
    accent-card(title: "BAUCH Group — Strategischer Investor")[
      Ingenieur- & Fertigungsunternehmen (Raum Ingolstadt/Audi). \
      50–100K EUR Investitionszusage. Equity-Cap 5%. \
      Strategischer Zugang zum Automotive-Ökosystem.
    ],
  )

  #v(0.1cm)
  #text(8pt, fill: aico-muted)[Cap Table (Post-Seed): Nikita 74–80% · Philipp bis 15% (Vesting) · BAUCH 3–5% · ESOP 5–8% · FIASCO 0%]
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 14 — Der Ask
// ═══════════════════════════════════════════════════════════════
#slide(
  title: [Das Investment],
  subtitle: [Seed-Runde zur Skalierung von Vertrieb, Marketing und Produktentwicklung],
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
        text(20pt, weight: "bold", fill: aico-petrol)[200.000 – 500.000 EUR]
        linebreak()
        v(2pt)
        text(8.5pt, fill: aico-muted)[Seed-Runde · Pre-Money 2–3 Mio. EUR · Equity 6–17%]
      })
      v(6pt)
      block(width: 100%, inset: 8pt, radius: 8pt, stroke: 0.5pt + aico-border, {
        grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 5pt,
          text(8pt, weight: "bold", fill: aico-text)[Runway:],
          text(8pt, fill: aico-muted)[12–16 Monate],
          text(8pt, weight: "bold", fill: aico-text)[Bestätigt:],
          text(8pt, fill: aico-muted)[BAUCH Group (50–100K EUR)],
          text(8pt, weight: "bold", fill: aico-text)[Replacement:],
          text(8pt, fill: aico-muted)[250K–310K EUR (Plattform-Nachbau)],
          text(8pt, weight: "bold", fill: aico-text)[Bewertung:],
          text(8pt, fill: aico-muted)[Realistisch 2,0–3,0 Mio. EUR],
        )
      })
    },
    {
      slide-label[Mittelverwendung (bei 300K)]
      v(4pt)
      feature-row(title: "Vertrieb & Sales (35–40%)", description: "105–120K · Sales-Team, CRM, Provisionen", icon: msym("trending_up", size: 11pt))
      v(2pt)
      feature-row(title: "Produktentwicklung (25–30%)", description: "75–90K · Open Core, Enterprise-Features", icon: msym("code", size: 11pt))
      v(2pt)
      feature-row(title: "Marketing (15–20%)", description: "45–60K · Website, Content, Messen", icon: msym("campaign", size: 11pt))
      v(2pt)
      feature-row(title: "Ops & Puffer (15–20%)", description: "45–60K · GmbH, Recht, Buchhaltung, Infra, Unvorhergesehenes", icon: msym("settings", size: 11pt))
    },
  )
]

// ═══════════════════════════════════════════════════════════════
// FOLIE 15 — Closing
// ═══════════════════════════════════════════════════════════════
#closing-slide(
  title: "Ihre Kunden warten. Wir nicht.",
  contact: "nikita@aicoflow.com",
  brand: brand,
  url: url,
)
