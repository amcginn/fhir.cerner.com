module Cerner
  module Resources

    DSTU2_DOCUMENT_REFERENCE_DOCREF_SEARCH ||= {
      "resourceType": "Bundle",
      "id": "21392fef-2513-43de-aa6c-a51c27a26d31",
      "type": "searchset",
      "total": 4,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference?patient=1316024&created=ge2016-01-06&created=le2016-01-07"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/6589312",
          "resource": {
            "resourceType": "DocumentReference",
            "id": "6589312",
            "meta": {
              "versionId": "6589311",
              "lastUpdated": "2016-07-27T18:00:43.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Rheumatology Consultation&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Title&lt;/b&gt;: Rheumatology Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: Jan  6, 2016  9:10 A.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Auth (Verified)&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "type": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "34839-1"
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                  "code": "2820583",
                  "display": "Rheumatology Consultation",
                  "userSelected": true
                }
              ],
              "text": "Rheumatology Consultation"
            },
            "authenticator": {
              "reference": "Practitioner/2044324"
            },
            "created": "2016-01-06T09:10:14.000Z",
            "indexed": "2016-01-06T09:10:14.000Z",
            "status": "current",
            "docStatus": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/composition-status",
                  "code": "final",
                  "display": "Final"
                }
              ],
              "text": "Auth (Verified)"
            },
            "description": "Rheumatology Note",
            "content": [
              {
                "attachment": {
                  "contentType": "application/pdf",
                  "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-6589312",
                  "title": "Rheumatology Note"
                }
              }
            ],
            "context": {
              "encounter": {
                "reference": "Encounter/1309918"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/6589307",
          "resource": {
            "resourceType": "DocumentReference",
            "id": "6589307",
            "meta": {
              "versionId": "6589306",
              "lastUpdated": "2016-07-27T17:38:08.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Rheumatology Consultation&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Title&lt;/b&gt;: Rheumatology Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: Jan  6, 2016  9:10 A.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Auth (Verified)&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "type": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "34839-1"
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                  "code": "2820583",
                  "display": "Rheumatology Consultation",
                  "userSelected": true
                }
              ],
              "text": "Rheumatology Consultation"
            },
            "authenticator": {
              "reference": "Practitioner/2044324"
            },
            "created": "2016-01-06T09:10:14.000Z",
            "indexed": "2016-01-06T09:10:14.000Z",
            "status": "current",
            "docStatus": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/composition-status",
                  "code": "final",
                  "display": "Final"
                }
              ],
              "text": "Auth (Verified)"
            },
            "description": "Rheumatology Note",
            "content": [
              {
                "attachment": {
                  "contentType": "application/pdf",
                  "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-6589307",
                  "title": "Rheumatology Note"
                }
              }
            ],
            "context": {
              "encounter": {
                "reference": "Encounter/1309918"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/6589287",
          "resource": {
            "resourceType": "DocumentReference",
            "id": "6589287",
            "meta": {
              "versionId": "6589286",
              "lastUpdated": "2016-07-27T17:36:32.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Rheumatology Consultation&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Title&lt;/b&gt;: Rheumatology Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: Jan  6, 2016  9:10 A.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Auth (Verified)&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "type": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "34839-1"
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                  "code": "2820583",
                  "display": "Rheumatology Consultation",
                  "userSelected": true
                }
              ],
              "text": "Rheumatology Consultation"
            },
            "authenticator": {
              "reference": "Practitioner/2044324"
            },
            "created": "2016-01-06T09:10:14.000Z",
            "indexed": "2016-01-06T09:10:14.000Z",
            "status": "current",
            "docStatus": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/composition-status",
                  "code": "final",
                  "display": "Final"
                }
              ],
              "text": "Auth (Verified)"
            },
            "description": "Rheumatology Note",
            "content": [
              {
                "attachment": {
                  "contentType": "application/pdf",
                  "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-6589287",
                  "title": "Rheumatology Note"
                }
              }
            ],
            "context": {
              "encounter": {
                "reference": "Encounter/1309918"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/6589283",
          "resource": {
            "resourceType": "DocumentReference",
            "id": "6589283",
            "meta": {
              "versionId": "6589282",
              "lastUpdated": "2016-07-27T17:35:23.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Rheumatology Consultation&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Title&lt;/b&gt;: Rheumatology Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: Jan  6, 2016  9:10 A.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Auth (Verified)&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "type": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "34839-1"
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                  "code": "2820583",
                  "display": "Rheumatology Consultation",
                  "userSelected": true
                }
              ],
              "text": "Rheumatology Consultation"
            },
            "authenticator": {
              "reference": "Practitioner/2044324"
            },
            "created": "2016-01-06T09:10:14.000Z",
            "indexed": "2016-01-06T09:10:14.000Z",
            "status": "current",
            "docStatus": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/composition-status",
                  "code": "final",
                  "display": "Final"
                }
              ],
              "text": "Auth (Verified)"
            },
            "description": "Rheumatology Note",
            "content": [
              {
                "attachment": {
                  "contentType": "application/pdf",
                  "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-6589283",
                  "title": "Rheumatology Note"
                }
              }
            ],
            "context": {
              "encounter": {
                "reference": "Encounter/1309918"
              }
            }
          }
        }
      ]
    }

    DSTU2_DOCUMENT_REFERENCE_DOCREF_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "90db1def-39bd-491f-a26a-ce8049c9926a",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/$docref?patient=1316035&type=http%3A%2F%2Floinc.org%7C34133-9"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/b584c2b8-4d89-4b7b-a7a3-0d2cb68b2c46",
          "resource": {
            "resourceType": "DocumentReference",
            "id": "b584c2b8-4d89-4b7b-a7a3-0d2cb68b2c46",
            "subject": {
              "reference": "Patient/1316035"
            },
            "type": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "34133-9"
                }
              ],
              "text": "Summary of episode note"
            },
            "indexed": "2020-04-01T18:32:12Z",
            "status": "current",
            "content": [
              {
                "attachment": {
                  "contentType": "application/xml",
                  "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/$autogen-ccd-if?patient=1316035"
                },
                "format": [
                  {
                    "system": "urn:oid:1.3.6.1.4.1.19376.1.2.3",
                    "code": "urn:hl7-org:sdwg:ccda-structuredBody:2.1",
                    "display": "For documents following C-CDA constraints using a structured body."
                  }
                ]
              }
            ]
          }
        }
      ]
    }

    DSTU2_DOCUMENT_REFERENCE_DOCREF_BUNDLE_ENTRY ||= {
      "resourceType": "DocumentReference",
      "id": "7499283",
      "meta": {
        "versionId": "7499282",
        "lastUpdated": "2018-01-08T14:51:05.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Depart Summary&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Title&lt;/b&gt;: Physician Emergency department Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: Jan  3, 2018  7:30 A.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Auth (Verified)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verifying Provider&lt;/b&gt;: Portal, Portal&lt;/p&gt;&lt;/div&gt;"
      },
      "subject": {
        "reference": "Patient/1316024",
        "display": "PETERS, TIMOTHY"
      },
      "type": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "68608-9"
          },
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
            "code": "3374547",
            "display": "Depart Summary",
            "userSelected": true
          }
        ],
        "text": "Depart Summary"
      },
      "authenticator": {
        "reference": "Practitioner/4464007",
        "display": "Portal, Portal"
      },
      "created": "2018-01-03T07:30:20.000Z",
      "indexed": "2018-01-03T07:30:20.000Z",
      "status": "current",
      "docStatus": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/composition-status",
            "code": "final",
            "display": "Final"
          }
        ],
        "text": "Auth (Verified)"
      },
      "description": "Physician Emergency department Note",
      "content": [
        {
          "attachment": {
            "contentType": "application/pdf",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-7499283",
            "title": "Physician Emergency department Note"
          }
        }
      ],
      "context": {
        "encounter": {
          "reference": "Encounter/1621910"
        }
      }
    }

    DSTU2_DOCUMENT_REFERENCE_DOCREF_CREATE ||= {
      "resourceType": "DocumentReference",
      "subject": {
        "reference": "Patient/53663272"
      },
      "type": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "34840-9"
          }
        ]
      },
      "author": [
        {
          "reference": "Practitioner/21500981"
        }
      ],
      "indexed": "2015-11-18T18:00:00Z",
      "status": "current",
      "docStatus": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/composition-status",
            "code": "final"
          }
        ]
      },
      "description": "Rheumatology Note",
      "content": [
        {
          "attachment": {
            "contentType": "application/xhtml+xml;charset=utf-8",
            "data": "&lt;snipped for brevity>"
          }
        }
      ],
      "context": {
        "encounter": {
          "reference": "Encounter/4208059"
        },
        "period": {
          "end": "2015-08-20T09:10:14Z"
        }
      }
    }

  end
end
