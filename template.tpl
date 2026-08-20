___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


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
    "help": "Copy it from Setup instructions on any event row in your campaign settings.",
    "enablingConditions": [
      {
        "paramName": "action",
        "paramValue": "track_conversion",
        "type": "EQUALS"
      }
    ],
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
    "valueHint": "How many days Click ID will be persisted, to attribute conversions"
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
const getType            = require('getType');

const COOKIE_NAME = 'contimo_sclid';

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

function init(data) {
  const clickIdParam = data.clickid_param || 'sclid';
  const clickId = getClickIdFromPageLocation(clickIdParam);
  if (!clickId) {
    data.gtmOnSuccess();
    return;
  }

  const ttlDays = makeNumber(data.clickid_ttl) || 30;
  setCookie(COOKIE_NAME, clickId, {
    domain: 'auto',
    path: '/',
    'max-age': ttlDays * 24 * 60 * 60,
    secure: true,
    httpOnly: true,
    sameSite: 'lax'
  });
  logToConsole('Contimo: stored Click ID', clickId);
  data.gtmOnSuccess();
}

function trackConversion(data) {
  // Retrieve Click ID: cookie first, then the event's own page URL
  // (single-page conversion fallback).
  const cookies = getCookieValues(COOKIE_NAME);
  let clickId = cookies && cookies.length ? cookies[0] : null;
  if (!clickId) {
    clickId = getClickIdFromPageLocation(data.clickid_param || 'sclid');
  }

  if (!clickId) {
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
  let url = 'https://signal.contimo.app/c/' + encodeUriComponent(data.account_id);
  const params = [
    'clid=' + encodeUriComponent(clickId),
    'a=' + action
  ];

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

  sendHttpGet(url).then(
    function() { data.gtmOnSuccess(); },
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
                "string": "https://signal.contimo.app/*"
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

    const expectedUrl = 'https://signal.contimo.app/c/ACC1?clid=ABC123&a=4&v=10&vc=DKK&tid=T-42&cp.source=gtm-server';

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

    const expectedUrl = 'https://signal.contimo.app/c/ACC1?clid=ABC123&a=3&cp.source=gtm-server';

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

    const expectedUrl = 'https://signal.contimo.app/c/ACC1?clid=ABC123&a=2&cp.source=gtm-server';

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

    const expectedUrl = 'https://signal.contimo.app/c/ACC1?clid=ABC123&a=4&cp.source=gtm-server';

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

    const expectedUrl = 'https://signal.contimo.app/c/ACC1?clid=ABC%26123&a=4&v=10&vc=DKK&cp.a=b%3D&cp.source=gtm-server';

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

    const expectedUrl = 'https://signal.contimo.app/c/ACC1?clid=ABC123&a=3&cp.ok=1&cp.source=gtm-server';

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
- name: Single-page conversion falls back to page URL when no cookie
  code: |-
    _eventData['page_location'] = 'https://example.com/landing?sclid=XYZ789';

    const mockData = {
      action: 'track_conversion',
      account_id: 'ACC1',
      conversion_type: 'qualified_visit',
      clickid_param: 'sclid'
    };

    const expectedUrl = 'https://signal.contimo.app/c/ACC1?clid=XYZ789&a=3&cp.source=gtm-server';

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
  mock('sendHttpGet', (url) => {
    lastHttpUrl = url;
    return {
      then: (onSuccess, onFailure) => {
        onSuccess({ statusCode: 200, headers: {}, body: '' });
      }
    };
  });


___NOTES___

Created on 8/18/2026. Server-side counterpart of the Contimo web template.


