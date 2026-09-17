# Conversion Tracking in Contimo with server-side Google Tag Manager

This is the **server container** counterpart of the [Contimo web template](https://github.com/contimo/contimo-gtm-template). The conversion request to `signal.contimo.app` is built and fired **from your tagging server**, not from the visitor's browser.

## Prerequisites

- A server-side GTM container receiving events from your website (typically via the built-in **GA4 client**). Every incoming event must carry the page URL (`page_location`), which the GA4 client provides automatically.

## Setup

1. **Install the Contimo Template**
   - In your server container, go to Templates and import this template (or add it from the Community Template Gallery).

2. **Configure the Contimo Tag for Page Views (Init)**
   - Create a new tag using the Contimo template.
   - Set the **Action** parameter to `Init`.
   - Enter your **Account ID** (copy it from Setup instructions on any event row in your campaign settings). It is required on every tag instance, since Init also reports Click ID capture back to Contimo.
   - Keep the **Click ID parameter name** as `sclid` (or set your custom one).
   - Set the **Click ID storage duration** (days) to control the attribution lookback window.
   - Choose **Click ID storage**:
     - `Cookie (default)` — the Click ID is stored only in the first-party `contimo_sclid` cookie, as before.
     - `Cookie + Contimo backend` — additionally sends the **Visitor ID** to Contimo, so a conversion can still be attributed there without the cookie (e.g. a different device/browser, or the cookie was cleared). Requires **Visitor ID** to be set; if it is missing or invalid, the tag logs a warning and falls back to cookie-only reporting instead of failing.
   - Optionally set a **Visitor ID** — an opaque, stable per-visitor identifier such as the GA4 client ID (see [Visitor ID](#visitor-id) below). It is used by both the Init and Track conversion tags.
   - Optionally enable **Send unattributed events** to still ping Contimo when a visitor lands without a Click ID (as long as a Visitor ID is present) — this shows up as an unattributed event in Event testing rather than being silently dropped.
   - Trigger: all `page_view` events.

   When a visitor lands with `?sclid=...` in the URL, the tag stores the Click ID in a first-party, `httpOnly` cookie (`contimo_sclid`) set from the server response. Because the cookie is set via HTTP (not JavaScript), it is not subject to Safari ITP's 7-day cap on script-written cookies.

3. **Set Up the Conversion Tag**
   - Create another tag using the Contimo template.
   - Set the **Action** parameter to `Track conversion`.
   - Enter your **Account ID** (copy it from Setup instructions on any event row in your campaign settings).
   - Choose the conversion type (`Purchase`, `Qualified visit`, `Lead`, or a custom conversion) and, for purchases, revenue and currency (map them from event data, e.g. `value` and `currency`). Optionally provide a **Transaction ID** to reconcile conversion data.
   - Optionally set the same **Visitor ID** as on the Init tag, and/or enable **Send unattributed events**, to widen how a conversion can be matched (see below).
   - Trigger: your conversion event (e.g. `purchase`).

## Visitor ID

The **Visitor ID** field is an opaque string, 1-128 characters, made only of letters, digits, and `_ . : -` (e.g. the GA4 client ID). It is never hashed or normalised beyond trimming whitespace — send it exactly as your identifier is formed. An invalid value is dropped and logged; the tag then behaves as if no Visitor ID had been set.

## Click ID resolution order

The **Track conversion** tag resolves an identifier for the conversion in this order:

1. **Page URL** — the query string of the conversion event's own `page_location` (e.g. `?sclid=...`). This is the freshest signal and always wins when present, even over an existing cookie.
2. **Cookie** — the `contimo_sclid` cookie, when the page URL carries no Click ID.
3. **Visitor-ID lookup** — when neither of the above yields a Click ID, but a Visitor ID is provided, Contimo looks up a matching record on the backend (only available when the Init tag reported a Visitor ID with **Click ID storage** set to `Cookie + Contimo backend`).

If none of the three resolves and **Send unattributed events** is off, the conversion tag does not fire a request at all (as before). With it on, a request is still sent (`ua=1`) so the miss is visible, instead of being silently dropped.

### Deduplication and TTL

- A conversion that the backend has already seen for the same Click ID/Visitor ID and event is flagged `duplicate` in the response and logged accordingly — it is not treated as a tag failure.
- **Click ID storage duration** (`clickid_ttl`) controls both how long the `contimo_sclid` cookie lives and, when **Click ID storage** is `Cookie + Contimo backend`, how many days (1-365, default 30) the backend keeps the Visitor ID record available for lookup.

## Single-page conversions

Conversions that happen on the landing page itself — before any navigation — are fully supported, via the page-URL step of the resolution order above: on the landing page the URL still contains `?sclid=...`, so the conversion is attributed even if the cookie has not completed a round-trip yet (or was not set at all).

## Consent (TCF)

Contimo is registered under **TCF vendor ID 1299**. The template itself does not inspect consent signals — consent enforcement is the site's responsibility. Control when the `Init` tag fires using your consent management setup (e.g. a trigger condition or exception based on your CMP's consent state), so the click-ID cookie is only set for consented visitors. Same-page conversions still work without the cookie via the URL fallback described above.

## Notes

- The server tag reports `cp.source=gtm-server` so you can distinguish server-side conversions from web-tag conversions (`cp.source=gtm`) in Contimo.
- The cookie name (`contimo_sclid`) is distinct from the web template's `contimo_clickId`, so both templates can run side by side without interfering.
- The Track conversion tag reads the JSON response from Contimo and logs a clear `Contimo: conversion attributed`/`Contimo: conversion NOT attributed – <reason>` line, so a miss is visible in GTM Preview even though it is never surfaced as a tag failure.
