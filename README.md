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
   - Keep the **Click ID parameter name** as `sclid` (or set your custom one).
   - Set the **Click ID storage duration** (days) to control the attribution lookback window.
   - Trigger: all `page_view` events.

   When a visitor lands with `?sclid=...` in the URL, the tag stores the Click ID in a first-party, `httpOnly` cookie (`contimo_sclid`) set from the server response. Because the cookie is set via HTTP (not JavaScript), it is not subject to Safari ITP's 7-day cap on script-written cookies.

3. **Set Up the Conversion Tag**
   - Create another tag using the Contimo template.
   - Set the **Action** parameter to `Track conversion`.
   - Enter your **Account ID** (copy it from Setup instructions on any event row in your campaign settings).
   - Choose the conversion type (`Purchase`, `Qualified visit`, `Lead`, or a custom conversion) and, for purchases, revenue and currency (map them from event data, e.g. `value` and `currency`). Optionally provide a **Transaction ID** to reconcile conversion data.
   - Trigger: your conversion event (e.g. `purchase`).

## Single-page conversions

Conversions that happen on the landing page itself — before any navigation — are fully supported. The conversion tag resolves the Click ID in two steps:

1. From the `contimo_sclid` cookie, if present.
2. **Fallback:** from the query string of the conversion event's own `page_location`. On the landing page the URL still contains `?sclid=...`, so the conversion is attributed even if the cookie has not completed a round-trip yet (or was not set at all).

## Consent (TCF)

Contimo is registered under **TCF vendor ID 1299**. The template itself does not inspect consent signals — consent enforcement is the site's responsibility. Control when the `Init` tag fires using your consent management setup (e.g. a trigger condition or exception based on your CMP's consent state), so the click-ID cookie is only set for consented visitors. Same-page conversions still work without the cookie via the URL fallback described above.

## Notes

- The server tag reports `cp.source=gtm-server` so you can distinguish server-side conversions from web-tag conversions (`cp.source=gtm`) in Contimo.
- The cookie name (`contimo_sclid`) is distinct from the web template's `contimo_clickId`, so both templates can run side by side without interfering.
