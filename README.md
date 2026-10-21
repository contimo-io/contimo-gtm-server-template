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
     - `Cookie + Contimo backend` — writes the cookie **and** sends the **Visitor ID** to Contimo, so a conversion can still be attributed there without the cookie (e.g. a different device/browser, or the cookie was cleared).
     - `Contimo backend only` — sends the **Visitor ID** to Contimo and does **not** write the cookie. Conversions are then attributed via the page URL or the Visitor-ID lookup only. Use this when the cookie cannot be relied upon (e.g. the server container response does not reach the browser as a first-party cookie).
     - Both backend modes require **Visitor ID** to be set; if it is missing or invalid, the tag logs a warning and falls back to cookie-only storage instead of failing.
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
3. **Visitor-ID lookup** — when neither of the above yields a Click ID, but a Visitor ID is provided, Contimo looks up a matching record on the backend (only available when the Init tag reported a Visitor ID with **Click ID storage** set to `Cookie + Contimo backend` or `Contimo backend only`).

If none of the three resolves and **Send unattributed events** is off, the conversion tag does not fire a request at all (as before). With it on, a request is still sent (`ua=1`) so the miss is visible, instead of being silently dropped.

### Deduplication and TTL

- Contimo deduplicates conversions on **Transaction ID**: a second conversion with the same account, the same conversion type and the same `transaction_id` is flagged `duplicate` in the response and logged accordingly, and is not counted again. Conversions without a Transaction ID are not deduplicated, and events from Event testing sessions are never deduplicated. A duplicate is not treated as a tag failure.
- **Click ID storage duration** (`clickid_ttl`) controls both how long the `contimo_sclid` cookie lives (when one is written) and, when **Click ID storage** includes the Contimo backend, how many days (1-365, default 30) the backend keeps the Visitor ID record available for lookup.

## Single-page conversions

Conversions that happen on the landing page itself — before any navigation — are fully supported, via the page-URL step of the resolution order above: on the landing page the URL still contains `?sclid=...`, so the conversion is attributed even if the cookie has not completed a round-trip yet (or was not set at all).

## Consent (TCF)

Contimo is registered under **TCF vendor ID 1299**. The template itself does not inspect consent signals — consent enforcement is the site's responsibility. Control when the `Init` tag fires using your consent management setup (e.g. a trigger condition or exception based on your CMP's consent state), so the click-ID cookie is only set for consented visitors. Same-page conversions still work without the cookie via the URL fallback described above.

## Debugging with test links

When the landing URL carries a Contimo **test** Click ID (issued by Event testing, prefixed `t_`), the `Init` tag also reports two debug events to Contimo, which show up in the Event testing session. Real Click IDs never trigger them.

- `click_id_seen`: `Init` saw a test Click ID. `cp.clid_source` is `url` (landing page) or `cookie` (a later page, read from `contimo_sclid`), plus `cp.storages`, `cp.event_name` and `cp.host`.
- `click_id_captured`: `Init` took the test Click ID from the landing URL, and where it was persisted. `cp.storages` (`cookie`, `cookie,backend` or `backend`), `cp.cookie` (`written`/`skipped`), `cp.backend` (`sent`/`skipped`), `cp.cookie_domain`, `cp.ttl_hours`, and `cp.storage_fallback=no_visitor_id` when a backend mode fell back to cookie-only because the Visitor ID was missing or invalid. (The same event is sent for real Click IDs too, without these debug details.)

If neither event shows up, the `Init` tag did not fire for that request (check its trigger and consent conditions in GTM Preview). Both events need **Account ID** to be set on the `Init` tag.

### Detailed logging (Debug only)

Under **Contimo tag behavior**, the **Detailed logging (Debug only)** checkbox (default off, both actions) makes the tag send one extra debug event to Contimo whenever it cannot find a Click ID (neither in the page URL nor in the `contimo_sclid` cookie), so it shows up in all live Event testing sessions of this account. Use it only while debugging: it adds one request per such hit. It needs **Account ID** and does not change the tag's normal behaviour or its success/failure result.

- `Init`: `Contimo Tag inited with no Click ID`
- `Track conversion`: `Contimo Tag track <conversion type> with no Click ID` (e.g. `purchase`, `lead`), sent even when the tag then sends nothing else.

The event is `a=21` with `cp.message`, `cp.context` (`init` or `track`), `cp.event` (track only), `cp.tag=sgtm`, `cp.host`, and `vid` when a Visitor ID is set; it carries no Click ID. Signal (foresight) must support action 21 for it to appear.

## Notes

- The server tag reports `cp.source=gtm-server` so you can distinguish server-side conversions from web-tag conversions (`cp.source=gtm`) in Contimo.
- The cookie name (`contimo_sclid`) is distinct from the web template's `contimo_clickId`, so both templates can run side by side without interfering.
- The Track conversion tag reads the JSON response from Contimo and logs a clear `Contimo: conversion attributed`/`Contimo: conversion NOT attributed – <reason>` line, so a miss is visible in GTM Preview even though it is never surfaced as a tag failure.
