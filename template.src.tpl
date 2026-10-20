___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Contimo",
  "brand": {
    "id": "brand_dummy",
    "displayName": "Contimo",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAUKADAAQAAAABAAAAUAAAAAAx4ExPAAAFMUlEQVR4Ae1Yi3HjNhC1M1eAOrjtIOogSAVRCbwKTh1IV4HcAd2BLxXQqcC+CqgO7FSge+9CZHZ2lh9JMCWReDPPAHYXi91HkB777i4jK5AVyApkBbICWYGsQFYgK5AVyAqMrcD92AeOdF7AOX+By+a8P5sxDwMVqBB3UFy07PsKu7T4Zm1+QPdawOCoUTQxNUbOZwVBt7w9bVjBoQVcm0DBmsLpGO6ZBQK6fAPZvBUGpl9Y4KcWp2zsceC6yx/jJjcuTeMUgTYPNYxRJM4jCkyinSMfhoCzQYVOtQA11uJ0/2TieCsZx3i9f431rEAhrAgvsNGuQWG0UCusS2Or9IY5zQXNxu9gFGlnBAhYRx/H2qxpE3C24I3SAnHOWxexwMT69XobA50xwFaBHCeNLbrTonAewAiKYP1c1zHAjIK1/nby03Dz4E0LDXmrLB5h0CJpcbhX+zjnqy+gBvNuQPps/FoH3uKct8A2VcNWgU9g6fgFtogCE8bGPcvoaEaKTN/BIe0BvGl4jfXZrEieAIypQC8Xb+IWvHks0IHXYJeNN7YPvHVtOR7g47mDcD8o6nJBbGTZkPPPoICcxxHT//GM2RdwD3ahhlNMwDPW30COs0EUOKBjCj0EgiB7+3ZDNuaY/xSg6PzGWRG5rsA1OPRhIHSeeEDbnoDaRpGfwAIUMMMoMETEKChjrxYLVCaKYxcacCAFegGjYHZkzFWAYhXgDmTBb6AtlmvaK5BxATwXX5GA+WqwBAX0IDCuwEeQsQeQtVwcggooBothUceSzRTgKdhgkz2P+WRAsiViwoC4DwvhjaNwtoFT12y8AI8B93jn8WGGYxKNHSs4sK34toY8u2fbDGyGNXj7tW09MNeoYbz6dUfxFXwsXEDeUg2uA7gFu3Js4O8Dcx0UnzH3cg7Jha3jQHCMVyQbKUH6j0GB4LZ8fAh94LmR8Xwv36Yv0Rh+PnGvuHO/N9KRl2d24QBnZNUECsYXZY9+fq8vChYQi4ljDZskqIo5mCvmjWPZk1vvqVQshX9y8hUqZtSp4LTYlB5pT4WARDp3nHfdwlrt4dziAYaYp7LOMdelKiQWtP2AAthkzB/Hdcc5+lWtW+K2sNPX9SBatqYxC9LEZuLYVuy5JxbOWVVHUvpiTW8dcSeJ96kj4TGuwgn+5thSmL4jyR8m0btZ66X2dYmk4/T+Ueb6NeHT5pPuKnaUoppDHjHGG8gxKe4TZKNQ9tX4G7ZVgtwpUgSVZI85mQwpXuGlU82zY7uU6UNr+S1BV56Arwny3kSKFAKK02kW0BGlzbRwHO+ObZKmFDfws1FmNuKx7xQCGv3usoBWkZ61FWzREz8pd4ob+K9RJAtoBOlb2hvIeOnbNBV/ihu4d8QQxzZJUwoBXx1llo4tm1oU4DdP/7HOedUSm80tClAwLeI1/TempeQ05hT/TGAl/4CBkwa8lWtw26xTD6WT8ItjuxmT9xp/1C1cQhV92zmvbkapjkIf4bON7TriT3WVzjnFqcmuaZ+gGN46K2KALRUEiWx+rmmfBLbowjZIUfnanQtBghq0+ctzE1/b/henSTbNXyqnQrDRE482+iYFQTdesxSxAgM4FPzltAG9TwPzrYYmurU4QcE1yCY90rcDA8jXm0IRAnJdgPS3CcecW3DSEHRXgZ6A59rWk1bONMdm60RC8oHwhs4Ogo7PEZLCFeDV4f4CFQWcSf4OSsMFxog9Ju/gK/gD/A7uwYysQFYgK5AVyApkBbICWYGsQFYgK5AV+KXAT4oHlExeY1gfAAAAAElFTkSuQmCC"
  },
  "description": "Allow to track conversions in Contimo from your server-side Google Tag Manager container.",
  "categories": [
    "AFFILIATE_MARKETING",
    "ADVERTISING",
    "CONVERSIONS",
    "ATTRIBUTION"
  ],
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "action",
    "displayName": "Action",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "init",
        "displayValue": "Init"
      },
      {
        "value": "track_conversion",
        "displayValue": "Track conversion"
      }
    ],
    "simpleValueType": true,
    "alwaysInSummary": true
  },
  {
    "type": "TEXT",
    "name": "account_id",
    "displayName": "Account ID",
    "simpleValueType": true,
    "help": "Copy it from Setup instructions on any event row in your campaign settings. Also used by Init to report Click ID capture back to Contimo.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "clickid_ttl",
    "displayName": "Click ID storage duration",
    "simpleValueType": true,
    "valueUnit": "days",
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "init",
        "type": "EQUALS"
      }
    ],
    "defaultValue": 30,
    "valueHint": "How many days Click ID will be persisted, to attribute conversions. When Click ID storage includes the Contimo backend, the same number of days (1-365) is also sent to Contimo as the backend record\u0027s ttl."
  },
  {
    "type": "SELECT",
    "name": "clickid_storage",
    "displayName": "Click ID storage",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "cookie",
        "displayValue": "Cookie (default)"
      },
      {
        "value": "cookie_and_backend",
        "displayValue": "Cookie + Contimo backend (requires Visitor ID)"
      },
      {
        "value": "backend",
        "displayValue": "Contimo backend only (requires Visitor ID)"
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "init",
        "type": "EQUALS"
      }
    ],
    "defaultValue": "cookie",
    "help": "Cookie (default) stores the Click ID only in a first-party cookie on this domain, as before. \"Cookie + Contimo backend\" writes the cookie and additionally sends the Visitor ID to Contimo, so a later conversion can be attributed there even without the cookie (e.g. a different device, or the cookie was cleared). \"Contimo backend only\" sends the Visitor ID to Contimo and does not write the cookie at all; conversions are then attributed via the page URL or the Visitor ID lookup. Both backend modes require the Visitor ID field below to be set; if it is missing or invalid, this tag falls back to cookie-only storage and logs a warning."
  },
  {
    "type": "TEXT",
    "name": "visitor_id",
    "displayName": "Visitor ID",
    "simpleValueType": true,
    "canBeEmptyString": true,
    "help": "Opaque string, 1-128 chars: letters, digits, _ . : - . Not hashed or normalised. E.g. the GA4 client ID. Required on Init when Click ID storage above is set to \"Cookie + Contimo backend\" (this cannot be enforced by the field editor here, so an invalid or missing value is logged and the tag falls back to cookie-only reporting instead of failing)."
  },
  {
    "type": "CHECKBOX",
    "name": "send_unattributed",
    "displayName": "Send unattributed events",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Still ping Contimo when no Click ID (and no Visitor ID match) is found. Such events appear in Event testing as unattributed."
  },
  {
    "type": "SELECT",
    "name": "conversion_type",
    "displayName": "Conversion type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "purchase",
        "displayValue": "Purchase"
      },
      {
        "value": "qualified_visit",
        "displayValue": "Qualified visit"
      },
      {
        "value": "lead",
        "displayValue": "Lead"
      },
      {
        "value": "custom_conversion_1",
        "displayValue": "Custom conversion 1"
      },
      {
        "value": "custom_conversion_2",
        "displayValue": "Custom conversion 2"
      },
      {
        "value": "custom_conversion_3",
        "displayValue": "Custom conversion 3"
      },
      {
        "value": "custom_conversion_4",
        "displayValue": "Custom conversion 4"
      },
      {
        "value": "custom_conversion_5",
        "displayValue": "Custom conversion 5"
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "track_conversion",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "revenue",
    "displayName": "Transaction revenue",
    "simpleValueType": true,
    "help": "Provide transaction revenue for ROAS analysis",
    "canBeEmptyString": true,
    "enablingConditions": [
      {
        "paramName": "conversion_type",
        "paramValue": "purchase",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "revenue_currency",
    "displayName": "Revenue currency",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "DKK",
        "displayValue": "DKK"
      },
      {
        "value": "EUR",
        "displayValue": "EUR"
      },
      {
        "value": "USD",
        "displayValue": "USD"
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "conversion_type",
        "paramValue": "purchase",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "transaction_id",
    "displayName": "Transaction ID",
    "simpleValueType": true,
    "help": "Transaction ID, needed to reconcile any conversion data",
    "canBeEmptyString": true,
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "track_conversion",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "params",
    "displayName": "Additional params (optional)",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Key",
        "name": "key",
        "type": "TEXT"
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
        "type": "TEXT"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "track_conversion",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advanced_settings",
    "displayName": "Contimo tag behavior",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "clickid_param",
        "displayName": "Click ID parameter name",
        "simpleValueType": true,
        "help": "Name of the URL query parameter that carries the Contimo Click ID. Used by Init to store the Click ID, and by Track conversion as a fallback when no cookie is present (single-page conversions).",
        "defaultValue": "sclid"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

// Imports
const getEventData       = require('getEventData');
const parseUrl           = require('parseUrl');
const getCookieValues    = require('getCookieValues');
const setCookie          = require('setCookie');
const sendHttpGet        = require('sendHttpGet');
const encodeUriComponent = require('encodeUriComponent');
const logToConsole       = require('logToConsole');
const makeNumber         = require('makeNumber');
const makeString         = require('makeString');
const getType            = require('getType');
const JSON                = require('JSON');

const COOKIE_NAME = 'contimo_sclid';

// Signal endpoint base URL. Substituted by build.sh from template.src.tpl (also in the
// send_http permission and the tests), so never edit the generated template.tpl.
const SIGNAL_BASE_URL = '__SIGNAL_BASE_URL__';

function signalUrl(accountId) {
  return SIGNAL_BASE_URL + '/c/' + encodeUriComponent(accountId);
}

// Conversion type travels as the numeric `a` param. Must stay in sync with the
// signal endpoint's EVENT_ACTIONS table (1 is the legacy generic conversion and
// is not offered by this template).
const ACTION_ALIASES = {
  lead: '2',
  qualified_visit: '3',
  purchase: '4',
  custom_conversion_1: '5',
  custom_conversion_2: '6',
  custom_conversion_3: '7',
  custom_conversion_4: '8',
  custom_conversion_5: '9'
};

// Reserved by the signal transport — see "Parameter reference" in the Contimo docs.
const RESERVED_PARAM_KEYS = ['u', 'pc', 'pt', 'pg', 'ap', 'op', 'cp'];

// signal's EVENT_ACTIONS["19"] = click_id_captured. Sent for every Click ID capture,
// test or real (no Epom sync either way, since this has no Epom action). For a
// t_-prefixed (signed Event testing) Click ID it also carries debug cp params saying
// where the Click ID was persisted, and signal routes it to the customer's test session.
const CLICK_ID_CAPTURED_ACTION = '19';

// signal's EVENT_ACTIONS["20"] = click_id_seen. Debug-only, sent ONLY for a t_-prefixed
// Click ID, so the test session shows when Init saw it (URL or cookie). signal rejects it
// for a real Click ID.
const CLICK_ID_SEEN_ACTION = '20';
const TEST_CLICK_ID_PREFIX = 't_';

// Reads the Click ID from the query string of the event's page URL.
// Covers the single-page case: on the landing page every event still
// carries ?<clickid_param>=... in page_location, even before any cookie
// round-trip has happened.
function getClickIdFromPageLocation(paramName) {
  const pageLocation = getEventData('page_location');
  if (!pageLocation) return null;
  const url = parseUrl(pageLocation);
  if (!url || !url.searchParams) return null;
  const value = url.searchParams[paramName];
  if (!value) return null;
  return getType(value) === 'array' ? value[0] : value;
}

// Fire-and-forget report to signal, sent for every captured Click ID. Consent is not
// checked here: gate this tag's firing with a consent trigger in GTM, the same way you
// would for any other tag.
// vid/ttlDays are only appended when Click ID storage includes the Contimo backend and a
// valid Visitor ID is available; pass vid as null/undefined to omit them.
// debugCp ([key, value] pairs, see appendDebugParams) is only appended for a test Click ID.
function reportClickIdCaptured(accountId, clickId, vid, ttlDays, debugCp) {
  if (!accountId) return;

  const params = [
    'clid=' + encodeUriComponent(clickId),
    'a=' + CLICK_ID_CAPTURED_ACTION
  ];
  if (vid) {
    params.push('vid=' + encodeUriComponent(vid));
    params.push('ttl=' + ttlDays);
  }
  if (isTestClickId(clickId)) {
    appendDebugParams(params, debugCp);
  }

  const url = signalUrl(accountId) + '?' + params.join('&');

  logToConsole('Contimo: reporting Click ID capture', url);
  sendHttpGet(url).then(
    function() {},
    function() { logToConsole('Contimo: Click ID capture report failed (non-fatal)'); }
  );
}

function isTestClickId(clickId) {
  return !!clickId && makeString(clickId).indexOf(TEST_CLICK_ID_PREFIX) === 0;
}

function getPageHost() {
  const pageLocation = getEventData('page_location');
  const url = pageLocation ? parseUrl(pageLocation) : null;
  return url && url.hostname ? url.hostname : '';
}

// Appends test-link debug params — cp.tag=sgtm plus each [key, value] pair as
// cp.<key>=<value> (empty values skipped) — to a signal query param list.
function appendDebugParams(params, cp) {
  params.push('cp.tag=sgtm');
  (cp || []).forEach(function(pair) {
    const value = pair[1];
    if (value === undefined || value === null || value === '') return;
    params.push('cp.' + pair[0] + '=' + encodeUriComponent(makeString(value)));
  });
}

// Fire-and-forget click_id_seen debug event. No-op for a real Click ID.
function reportClickIdSeen(accountId, clickId, cp) {
  if (!accountId || !isTestClickId(clickId)) return;

  const params = [
    'clid=' + encodeUriComponent(clickId),
    'a=' + CLICK_ID_SEEN_ACTION
  ];
  appendDebugParams(params, cp);

  const url = signalUrl(accountId) + '?' + params.join('&');

  logToConsole('Contimo: reporting test Click ID seen', url);
  sendHttpGet(url).then(
    function() {},
    function() { logToConsole('Contimo: Click ID seen report failed (non-fatal)'); }
  );
}

// Fire-and-forget report sent when a visitor lands without a Click ID at all. Only
// sent when the Visitor ID is present and "Send unattributed events" is on, so such
// landings are still visible (as unattributed) in Contimo's Event testing.
function reportUnattributed(accountId, vid) {
  if (!accountId) return;

  const url = signalUrl(accountId) +
    '?a=' + CLICK_ID_CAPTURED_ACTION + '&vid=' + encodeUriComponent(vid) + '&ua=1';

  logToConsole('Contimo: reporting landed without Click ID (unattributed)', url);
  sendHttpGet(url).then(
    function() {},
    function() { logToConsole('Contimo: unattributed report failed (non-fatal)'); }
  );
}

// Sandboxed server JS has no RegExp constructor / regex literal support in this
// context, so the Visitor ID allowlist is enforced character by character instead
// of with a pattern like /^[A-Za-z0-9_.:-]{1,128}$/.
function isAllowedVisitorIdChar(ch) {
  return (ch >= 'a' && ch <= 'z') ||
    (ch >= 'A' && ch <= 'Z') ||
    (ch >= '0' && ch <= '9') ||
    ch === '_' || ch === '.' || ch === ':' || ch === '-';
}

function trimSpaces(str) {
  let start = 0;
  let end = str.length;
  while (start < end && str.charAt(start) === ' ') start++;
  while (end > start && str.charAt(end - 1) === ' ') end--;
  return str.substring(start, end);
}

// Returns the trimmed Visitor ID when it is 1-128 chars of letters, digits,
// '_', '.', ':' or '-'; otherwise logs why it was rejected and returns null.
// The value is never hashed or normalised beyond this trim.
function sanitizeVisitorId(value) {
  if (value === undefined || value === null || value === '') return null;

  const str = trimSpaces(makeString(value));
  if (str.length === 0 || str.length > 128) {
    logToConsole('Contimo: invalid Visitor ID (must be 1-128 chars of letters, digits, "_", ".", ":" or "-"), ignoring: "' + str + '".');
    return null;
  }
  for (let i = 0; i < str.length; i++) {
    if (!isAllowedVisitorIdChar(str.charAt(i))) {
      logToConsole('Contimo: invalid Visitor ID (must be 1-128 chars of letters, digits, "_", ".", ":" or "-"), ignoring: "' + str + '".');
      return null;
    }
  }
  return str;
}

// Click ID storage modes:
//   cookie             - first-party cookie only (default, legacy behaviour)
//   cookie_and_backend - cookie AND Visitor ID -> Click ID record on the Contimo backend
//   backend            - Contimo backend only, no cookie is written
// Both backend modes need a valid Visitor ID; without one there is nothing to key the
// backend record on, so the tag degrades to cookie-only storage rather than losing the
// Click ID altogether.
// Returns { storage, fallback }: the effective mode and, when a backend mode had to be
// downgraded for lack of a Visitor ID, fallback = 'no_visitor_id' (reported on test links).
function resolveStorageMode(data, vid) {
  let storage = data.clickid_storage || 'cookie';
  let fallback = null;
  if (storage !== 'cookie' && storage !== 'cookie_and_backend' && storage !== 'backend') {
    logToConsole('Contimo: unknown Click ID storage "' + storage + '", using "cookie".');
    storage = 'cookie';
  }
  if (storage !== 'cookie' && !vid) {
    logToConsole('Contimo: Click ID storage "' + storage + '" requires a valid Visitor ID but none is configured; falling back to cookie-only storage.');
    storage = 'cookie';
    fallback = 'no_visitor_id';
  }
  return { storage: storage, fallback: fallback };
}

// Wire value of cp.storages for each effective storage mode.
const STORAGE_LISTS = {
  cookie: 'cookie',
  cookie_and_backend: 'cookie,backend',
  backend: 'backend'
};

function init(data) {
  const clickIdParam = data.clickid_param || 'sclid';
  const clickId = getClickIdFromPageLocation(clickIdParam);
  const vid = sanitizeVisitorId(data.visitor_id);
  const mode = resolveStorageMode(data, vid);
  const storage = mode.storage;

  if (!clickId) {
    // Debug only: a test Click ID already stored in the cookie (e.g. a later page of the
    // test visit) is reported as seen. Nothing is captured or re-stored from it.
    const cookies = getCookieValues(COOKIE_NAME);
    const cookieClickId = cookies && cookies.length ? cookies[0] : null;
    reportClickIdSeen(data.account_id, cookieClickId, [
      ['clid_source', 'cookie'],
      ['storages', STORAGE_LISTS[storage]],
      ['event_name', getEventData('event_name')],
      ['host', getPageHost()]
    ]);

    // A Click ID already in the cookie is an attributed visitor on a later page,
    // not an unattributed landing.
    if (!cookieClickId && data.send_unattributed && vid) {
      reportUnattributed(data.account_id, vid);
    }
    data.gtmOnSuccess();
    return;
  }

  const ttlDays = makeNumber(data.clickid_ttl) || 30;
  const useBackend = storage === 'cookie_and_backend' || storage === 'backend';
  const useCookie = storage === 'cookie' || storage === 'cookie_and_backend';

  reportClickIdSeen(data.account_id, clickId, [
    ['clid_source', 'url'],
    ['storages', STORAGE_LISTS[storage]],
    ['event_name', getEventData('event_name')],
    ['host', getPageHost()]
  ]);

  if (useCookie) {
    setCookie(COOKIE_NAME, clickId, {
      domain: 'auto',
      path: '/',
      'max-age': ttlDays * 24 * 60 * 60,
      secure: true,
      httpOnly: true,
      sameSite: 'lax'
    });
    logToConsole('Contimo: stored Click ID in cookie', clickId);
  } else {
    logToConsole('Contimo: Click ID stored on Contimo backend only (no cookie written)', clickId);
  }

  // Test links only: where the Click ID was persisted. The httpOnly cookie travels as a
  // response header and cannot be read back within this request, so cookie=written means
  // "Set-Cookie issued"; backend=sent means this very request carries the Visitor ID.
  reportClickIdCaptured(data.account_id, clickId, useBackend ? vid : null, ttlDays, [
    ['persisted', 1],
    ['storages', STORAGE_LISTS[storage]],
    ['cookie', useCookie ? 'written' : 'skipped'],
    ['backend', useBackend ? 'sent' : 'skipped'],
    ['cookie_domain', useCookie ? 'auto' : null],
    ['ttl_hours', ttlDays * 24],
    ['storage_fallback', mode.fallback],
    ['host', getPageHost()]
  ]);

  data.gtmOnSuccess();
}

// Builds the "Contimo: conversion ..." log line from the JSON response, so a miss is
// clearly visible in Preview even though it is never surfaced as a tag failure.
function logConversionResult(response) {
  let result = null;
  if (response && response.body) {
    result = JSON.parse(response.body);
  }

  if (!result) {
    logToConsole('Contimo: fired conversion (no parseable response)');
    return;
  }

  let message = 'Contimo: conversion ' + (result.attributed ? 'attributed' : 'NOT attributed');
  if (result.reason) {
    message += ' – ' + result.reason;
  }
  if (result.duplicate) {
    message += ' (duplicate)';
  }
  logToConsole(message);
}

function trackConversion(data) {
  // Retrieve Click ID: the event's own page URL first (freshest signal), then the
  // cookie (single-page conversions may not have a cookie yet or ever).
  let clickId = getClickIdFromPageLocation(data.clickid_param || 'sclid');
  if (!clickId) {
    const cookies = getCookieValues(COOKIE_NAME);
    clickId = cookies && cookies.length ? cookies[0] : null;
  }

  const vid = sanitizeVisitorId(data.visitor_id);

  if (!clickId && !vid && !data.send_unattributed) {
    // Nothing to fire
    data.gtmOnSuccess();
    return;
  }

  const action = ACTION_ALIASES[data.conversion_type];
  if (!action) {
    logToConsole('Contimo: unknown conversion type "' + data.conversion_type + '".');
    data.gtmOnFailure();
    return;
  }

  // Build URL
  let url = signalUrl(data.account_id);
  const params = [];
  if (clickId) {
    params.push('clid=' + encodeUriComponent(clickId));
  }
  params.push('a=' + action);
  if (vid) {
    params.push('vid=' + encodeUriComponent(vid));
  }
  if (data.send_unattributed) {
    params.push('ua=1');
  }

  // The endpoint expects currency to travel with value, so they go together or not
  // at all. An empty revenue field must not become v=0.
  if (data.conversion_type === 'purchase' && data.revenue) {
    params.push('v=' + encodeUriComponent(data.revenue));
    params.push('vc=' + encodeUriComponent(data.revenue_currency || ''));
  }

  if (data.transaction_id) {
    params.push('tid=' + encodeUriComponent(data.transaction_id));
  }

  (data.params || []).forEach(function(kv) {
    if (!kv.key) return;
    if (RESERVED_PARAM_KEYS.indexOf(kv.key) !== -1) {
      logToConsole('Contimo: skipping reserved parameter key "' + kv.key + '".');
      return;
    }
    params.push('cp.' + encodeUriComponent(kv.key) + '=' + encodeUriComponent(kv.value));
  });

  params.push('cp.source=gtm-server');

  url += '?' + params.join('&');
  logToConsole('Contimo: firing conversion', url);

  sendHttpGet(url, { headers: { Accept: 'application/json' } }).then(
    function(response) {
      logConversionResult(response);
      data.gtmOnSuccess();
    },
    function() { data.gtmOnFailure(); }
  );
}

if (data.action === 'init') {
  init(data);
} else if (data.action === 'track_conversion') {
  trackConversion(data);
} else {
  // Unrecognized action
  data.gtmOnFailure();
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "page_location"
              },
              {
                "type": 1,
                "string": "event_name"
              }
            ]
          }
        },
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "contimo_sclid"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "contimo_sclid"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "__SIGNAL_BASE_URL__/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Init stores Click ID as httpOnly cookie
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123&utm_source=x';

    const mockData = { action: 'init', clickid_param: 'sclid', clickid_ttl: 1 };

    runCode(mockData);

    assertThat(lastCookie.name).isEqualTo('contimo_sclid');
    assertThat(lastCookie.value).isEqualTo('ABC123');
    assertThat(lastCookie.options['max-age']).isEqualTo(1 * 24 * 60 * 60);
    assertThat(lastCookie.options.httpOnly).isEqualTo(true);
    assertThat(lastCookie.options.secure).isEqualTo(true);
    assertApi('gtmOnSuccess').wasCalled();
- name: Init without Click ID in URL does nothing
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?utm_source=x';

    const mockData = { action: 'init', clickid_param: 'sclid', clickid_ttl: 1 };

    runCode(mockData);

    assertApi('setCookie').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Init reports a signed test Click ID capture, using account_id
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=t_sess1_exp1_sig1';

    const mockData = { action: 'init', clickid_param: 'sclid', clickid_ttl: 1, account_id: 'ACC1' };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=t_sess1_exp1_sig1&a=19&cp.tag=sgtm&cp.persisted=1&cp.storages=cookie&cp.cookie=written&cp.backend=skipped&cp.cookie_domain=auto&cp.ttl_hours=24&cp.host=example.com';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertThat(lastCookie.value).isEqualTo('t_sess1_exp1_sig1');
    assertApi('gtmOnSuccess').wasCalled();
- name: Init reports a real (non-test) Click ID capture too
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123';

    const mockData = { action: 'init', clickid_param: 'sclid', clickid_ttl: 1, account_id: 'ACC1' };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=19';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertThat(lastCookie.value).isEqualTo('ABC123');
    assertApi('gtmOnSuccess').wasCalled();
- name: Init does not report Click ID capture when account_id is not set
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=t_sess1_exp1_sig1';

    const mockData = { action: 'init', clickid_param: 'sclid', clickid_ttl: 1 };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Init with cookie_and_backend storage sends Visitor ID and ttl AND writes the
    cookie
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      clickid_ttl: 45,
      account_id: 'ACC1',
      clickid_storage: 'cookie_and_backend',
      visitor_id: 'ga-client.123:456'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=19&vid=ga-client.123%3A456&ttl=45';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertThat(lastCookie.name).isEqualTo('contimo_sclid');
    assertThat(lastCookie.value).isEqualTo('ABC123');
    assertThat(lastCookie.options['max-age']).isEqualTo(45 * 24 * 60 * 60);
    assertApi('gtmOnSuccess').wasCalled();
- name: Init with backend-only storage sends Visitor ID and ttl and does NOT write
    the cookie
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      clickid_ttl: 45,
      account_id: 'ACC1',
      clickid_storage: 'backend',
      visitor_id: 'ga-client.123:456'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=19&vid=ga-client.123%3A456&ttl=45';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('setCookie').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Init with cookie storage never sends Visitor ID even when one is configured
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      clickid_ttl: 30,
      account_id: 'ACC1',
      clickid_storage: 'cookie',
      visitor_id: 'ga-client.123:456'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=19';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertThat(lastCookie.value).isEqualTo('ABC123');
    assertApi('gtmOnSuccess').wasCalled();
- name: Invalid Visitor ID is dropped and logged, cookie_and_backend falls back to
    cookie-only
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      clickid_ttl: 30,
      account_id: 'ACC1',
      clickid_storage: 'cookie_and_backend',
      visitor_id: 'not a valid id!'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=19';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertThat(lastCookie.value).isEqualTo('ABC123');
    assertApi('logToConsole').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Backend-only storage without a Visitor ID falls back to writing the cookie
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      clickid_ttl: 30,
      account_id: 'ACC1',
      clickid_storage: 'backend'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=19';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertThat(lastCookie.value).isEqualTo('ABC123');
    assertApi('logToConsole').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Init reports an unattributed landing when no Click ID is found but Visitor
    ID is present
  code: |-
    _eventData['page_location'] = 'https://example.com/landing';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      account_id: 'ACC1',
      visitor_id: 'ga-client-123',
      send_unattributed: true
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?a=19&vid=ga-client-123&ua=1';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('setCookie').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Init does not report an unattributed landing when send_unattributed is off
  code: |-
    _eventData['page_location'] = 'https://example.com/landing';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      account_id: 'ACC1',
      visitor_id: 'ga-client-123',
      send_unattributed: false
    };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Init does not report an unattributed landing when a Click ID is already in the cookie
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';
    _eventData['page_location'] = 'https://example.com/checkout';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      account_id: 'ACC1',
      visitor_id: 'ga-client-123',
      send_unattributed: true
    };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Test Click ID in cookie with Visitor ID reports click_id_seen only, not an unattributed landing
  code: |-
    _cookies['contimo_sclid'] = 't_sess1_exp1_sig1';
    _eventData['page_location'] = 'https://example.com/checkout';
    _eventData['event_name'] = 'page_view';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      account_id: 'ACC1',
      visitor_id: 'ga-client-123',
      send_unattributed: true
    };

    runCode(mockData);

    assertThat(httpUrls).isEqualTo([
      '__SIGNAL_BASE_URL__/c/ACC1?clid=t_sess1_exp1_sig1&a=20&cp.tag=sgtm&cp.clid_source=cookie&cp.storages=cookie&cp.event_name=page_view&cp.host=example.com'
    ]);
    assertApi('gtmOnSuccess').wasCalled();
- name: Test Click ID in URL reports click_id_seen, then click_id_captured with persist
    details
  code: |-
    _eventData['page_location'] = 'https://shop.example.com/landing?sclid=t_sess1_exp1_sig1';
    _eventData['event_name'] = 'page_view';

    const mockData = { action: 'init', clickid_param: 'sclid', clickid_ttl: 2, account_id: 'ACC1' };

    runCode(mockData);

    assertThat(httpUrls).isEqualTo([
      '__SIGNAL_BASE_URL__/c/ACC1?clid=t_sess1_exp1_sig1&a=20&cp.tag=sgtm&cp.clid_source=url&cp.storages=cookie&cp.event_name=page_view&cp.host=shop.example.com',
      '__SIGNAL_BASE_URL__/c/ACC1?clid=t_sess1_exp1_sig1&a=19&cp.tag=sgtm&cp.persisted=1&cp.storages=cookie&cp.cookie=written&cp.backend=skipped&cp.cookie_domain=auto&cp.ttl_hours=48&cp.host=shop.example.com'
    ]);
    assertThat(lastCookie.value).isEqualTo('t_sess1_exp1_sig1');
    assertApi('gtmOnSuccess').wasCalled();
- name: Test Click ID capture reports backend-only storage with Visitor ID
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=t_sess1_exp1_sig1';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      clickid_ttl: 30,
      account_id: 'ACC1',
      clickid_storage: 'backend',
      visitor_id: 'ga-1'
    };

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo('__SIGNAL_BASE_URL__/c/ACC1?clid=t_sess1_exp1_sig1&a=19&vid=ga-1&ttl=30&cp.tag=sgtm&cp.persisted=1&cp.storages=backend&cp.cookie=skipped&cp.backend=sent&cp.ttl_hours=720&cp.host=example.com');
- name: Test Click ID capture reports the backend fallback when Visitor ID is missing
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=t_sess1_exp1_sig1';

    const mockData = {
      action: 'init',
      clickid_param: 'sclid',
      clickid_ttl: 1,
      account_id: 'ACC1',
      clickid_storage: 'cookie_and_backend'
    };

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo('__SIGNAL_BASE_URL__/c/ACC1?clid=t_sess1_exp1_sig1&a=19&cp.tag=sgtm&cp.persisted=1&cp.storages=cookie&cp.cookie=written&cp.backend=skipped&cp.cookie_domain=auto&cp.ttl_hours=24&cp.storage_fallback=no_visitor_id&cp.host=example.com');
- name: Test Click ID in cookie only reports click_id_seen from cookie and stores
    nothing
  code: |-
    _cookies['contimo_sclid'] = 't_sess1_exp1_sig1';
    _eventData['page_location'] = 'https://example.com/checkout';
    _eventData['event_name'] = 'page_view';

    const mockData = { action: 'init', clickid_param: 'sclid', account_id: 'ACC1' };

    runCode(mockData);

    assertThat(httpUrls).isEqualTo([
      '__SIGNAL_BASE_URL__/c/ACC1?clid=t_sess1_exp1_sig1&a=20&cp.tag=sgtm&cp.clid_source=cookie&cp.storages=cookie&cp.event_name=page_view&cp.host=example.com'
    ]);
    assertApi('setCookie').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Real Click ID capture carries no debug params and no click_id_seen
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=ABC123';

    const mockData = { action: 'init', clickid_param: 'sclid', account_id: 'ACC1' };

    runCode(mockData);

    assertThat(httpUrls).isEqualTo(['__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=19']);
- name: Real Click ID in cookie sends nothing on Init
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';
    _eventData['page_location'] = 'https://example.com/checkout';

    const mockData = { action: 'init', clickid_param: 'sclid', account_id: 'ACC1' };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
- name: Test Click ID without account_id sends no debug events
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=t_sess1_exp1_sig1';

    const mockData = { action: 'init', clickid_param: 'sclid' };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
    assertThat(lastCookie.value).isEqualTo('t_sess1_exp1_sig1');
- name: Fire conversion (purchase) from cookie
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'purchase',
      revenue: '10',
      revenue_currency: 'DKK',
      transaction_id: 'T-42'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=4&v=10&vc=DKK&tid=T-42&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('gtmOnSuccess').wasCalled();
- name: Fire conversion (qualified_visit) from cookie
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=3&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('gtmOnSuccess').wasCalled();
- name: Fire conversion (lead) from cookie
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'lead'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=2&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('gtmOnSuccess').wasCalled();
- name: Empty revenue is not sent as value
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'purchase',
      revenue: '',
      revenue_currency: 'DKK'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=4&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
- name: Url-escapes Click ID and custom parameters
  code: |-
    _cookies['contimo_sclid'] = 'ABC&123';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'purchase',
      revenue: '10',
      revenue_currency: 'DKK',
      params: [
        { key: 'a', value: 'b=' }
      ]
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC%26123&a=4&v=10&vc=DKK&cp.a=b%3D&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
- name: Skips reserved and empty custom parameter keys
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      params: [
        { key: 'pc', value: 'reserved' },
        { key: '', value: 'no-key' },
        { key: 'ok', value: '1' }
      ]
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=ABC123&a=3&cp.ok=1&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
- name: Unknown conversion type fails
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'bogus'
    };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
    assertApi('gtmOnFailure').wasCalled();
- name: Conversion uses page URL when no cookie is present
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=XYZ789';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      clickid_param: 'sclid'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=XYZ789&a=3&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('gtmOnSuccess').wasCalled();
- name: URL wins over cookie when both are present
  code: |-
    _cookies['contimo_sclid'] = 'FROM-COOKIE';
    _eventData['page_location'] = 'https://example.com/landing?sclid=FROM-URL';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      clickid_param: 'sclid'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?clid=FROM-URL&a=3&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('gtmOnSuccess').wasCalled();
- name: No Click ID anywhere - nothing is fired
  code: |-
    _eventData['page_location'] = 'https://example.com/landing';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit'
    };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Conversion resolves via Visitor ID when no Click ID is found anywhere
  code: |-
    _eventData['page_location'] = 'https://example.com/landing';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      visitor_id: 'ga-client-123'
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?a=3&vid=ga-client-123&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('gtmOnSuccess').wasCalled();
- name: Conversion sends unattributed ping when neither Click ID nor Visitor ID is
    found and send_unattributed is on
  code: |-
    _eventData['page_location'] = 'https://example.com/landing';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      send_unattributed: true
    };

    const expectedUrl = '__SIGNAL_BASE_URL__/c/ACC1?a=3&ua=1&cp.source=gtm-server';

    runCode(mockData);

    assertThat(lastHttpUrl).isEqualTo(expectedUrl);
    assertApi('gtmOnSuccess').wasCalled();
- name: Conversion does not fire when send_unattributed is off and nothing is found
  code: |-
    _eventData['page_location'] = 'https://example.com/landing';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      send_unattributed: false
    };

    runCode(mockData);

    assertApi('sendHttpGet').wasNotCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Logs when a conversion comes back attributed
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';
    mock('sendHttpGet', (url) => {
      lastHttpUrl = url;
      return {
        then: (onSuccess) => {
          const body = '{"ok":true,"attributed":true,"source":"clid"}';
          onSuccess({ statusCode: 200, headers: {}, body: body });
        }
      };
    });

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit'
    };

    runCode(mockData);

    assertApi('logToConsole').wasCalledWith('Contimo: conversion attributed');
    assertApi('gtmOnSuccess').wasCalled();
- name: Logs a clear reason when a conversion comes back NOT attributed
  code: |-
    _eventData['page_location'] = 'https://example.com/landing';
    mock('sendHttpGet', (url) => {
      lastHttpUrl = url;
      return {
        then: (onSuccess) => {
          onSuccess({ statusCode: 200, headers: {}, body: JSON.stringify({ ok: true, attributed: false, source: 'none', reason: 'visitor_id_not_found' }) });
        }
      };
    });

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      visitor_id: 'ga-client-123'
    };

    runCode(mockData);

    assertApi('logToConsole').wasCalledWith('Contimo: conversion NOT attributed – visitor_id_not_found');
    assertApi('gtmOnSuccess').wasCalled();
- name: Logs duplicate when the response flags a duplicate
  code: |-
    _cookies['contimo_sclid'] = 'ABC123';
    mock('sendHttpGet', (url) => {
      lastHttpUrl = url;
      return {
        then: (onSuccess) => {
          onSuccess({ statusCode: 200, headers: {}, body: JSON.stringify({ ok: true, attributed: true, source: 'clid', duplicate: true }) });
        }
      };
    });

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit'
    };

    runCode(mockData);

    assertApi('logToConsole').wasCalledWith('Contimo: conversion attributed (duplicate)');
    assertApi('gtmOnSuccess').wasCalled();
setup: |-
  const logToConsole = require('logToConsole');

  let _eventData = {};
  mock('getEventData', (key) => _eventData[key]);

  let _cookies = {};
  mock('getCookieValues', (name) => _cookies[name] ? [_cookies[name]] : []);

  let lastCookie = {};
  mock('setCookie', (name, value, options) => {
    lastCookie = { name: name, value: value, options: options };
  });

  let lastHttpUrl;
  let httpUrls = [];
  mock('sendHttpGet', (url) => {
    lastHttpUrl = url;
    httpUrls.push(url);
    return {
      then: (onSuccess, onFailure) => {
        onSuccess({ statusCode: 200, headers: {}, body: '' });
      }
    };
  });


___NOTES___

Created on 8/18/2026. Server-side counterpart of the Contimo web template.
