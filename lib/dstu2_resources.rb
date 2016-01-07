module Cerner
  module Resources
    
    DSTU2_OPEN_METADATA ||= {
      "resourceType": "Conformance",
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;Generated Conformance Statement&lt;/div&gt;"
      },
      "url": "https://fhir-open.sandboxcernerpowerchart.com/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata",
      "name": "Cerner Conformance Statement",
      "status": "draft",
      "publisher": "Cerner",
      "date": "2015-12-03T00:00:00+00:00",
      "description": "Describes capabilities of this server",
      "kind": "instance",
      "fhirVersion": "1.0.2",
      "acceptUnknown": "no",
      "format": [
        "json"
      ],
      "rest": [
        {
          "mode": "server",
          "documentation": "All the functionality defined in FHIR",
          "security": {
            "cors": true
          },
          "resource": [
            {
              "type": "AllergyIntolerance",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "Who the sensitivity is for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "Certainty of the allergy or intolerance"
                }
              ]
            },
            {
              "type": "Condition",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient who has the condition. It is a required field if subject field is not given"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition",
                  "modifier": [
                    "not"
                  ]
                }
              ]
            },
            {
              "type": "DocumentReference",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient the document is about"
                },
                {
                  "name": "type",
                  "type": "token",
                  "documentation": "The type of the document"
                }
              ]
            },
            {
              "type": "MedicationOrder",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list dispenses for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"
                },
                {
                  "name": "timing-boundsperiod-end",
                  "type": "date",
                  "documentation": "The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The number of items to include in a page. Currently ignored if querying for active or draft statuses"
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list statements for. It is a required field."
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication statement status values separated by commas."
                },
                {
                  "name": "effectivedate",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                }
              ]
            },
            {
              "type": "Patient",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"
                },
                {
                  "name": "birthdate",
                  "type": "date",
                  "documentation": "The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"
                },
                {
                  "name": "identifier",
                  "type": "token",
                  "documentation": "A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"
                },
                {
                  "name": "name",
                  "type": "string",
                  "documentation": "A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"
                },
                {
                  "name": "telecom",
                  "type": "string",
                  "documentation": "The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return"
                }
              ]
            }
          ]
        }
      ]
    }

    DSTU2_AUTH_METADATA ||= {
      "resourceType": "Conformance",
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;Generated Conformance Statement&lt;/div&gt;"
      },
      "url": "https://fhir.sandboxcernerpowerchart.com/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata",
      "name": "Cerner Conformance Statement",
      "status": "draft",
      "publisher": "Cerner",
      "date": "2015-12-03T00:00:00+00:00",
      "description": "Describes capabilities of this server",
      "kind": "instance",
      "fhirVersion": "1.0.2",
      "acceptUnknown": "no",
      "format": [
        "json"
      ],
      "rest": [
        {
          "mode": "server",
          "documentation": "All the functionality defined in FHIR",
          "security": {
            "extension": [
              {
                "url": "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris",
                "extension": [
                  {
                    "url": "token",
                    "valueUri": "https://authorization.sandboxcerner.com/realms/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/smart/token"
                  },
                  {
                    "url": "authorize",
                    "valueUri": "https://authorization.sandboxcerner.com/realms/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/smart/authorize"
                  }
                ]
              }
            ],
            "cors": true,
            "service": [
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/restful-security-service",
                    "code": "SMART-on-FHIR"
                  }
                ],
                "text": "OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/)."
              }
            ],
            "description": "OAuth2 plus SMART extensions"
          },
          "resource": [
            {
              "type": "AllergyIntolerance",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "Who the sensitivity is for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "Certainty of the allergy or intolerance"
                }
              ]
            },
            {
              "type": "Condition",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient who has the condition. It is a required field if subject field is not given"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition",
                  "modifier": [
                    "not"
                  ]
                }
              ]
            },
            {
              "type": "DocumentReference",
              "interaction": [
                {
                  "code": "create"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient the document is about"
                },
                {
                  "name": "type",
                  "type": "token",
                  "documentation": "The type of the document"
                }
              ]
            },
            {
              "type": "MedicationOrder",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list dispenses for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"
                },
                {
                  "name": "timing-boundsperiod-end",
                  "type": "date",
                  "documentation": "The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The number of items to include in a page. Currently ignored if querying for active or draft statuses"
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list statements for. It is a required field."
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication statement status values separated by commas."
                },
                {
                  "name": "effectivedate",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                }
              ]
            },
            {
              "type": "Patient",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"
                },
                {
                  "name": "birthdate",
                  "type": "date",
                  "documentation": "The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"
                },
                {
                  "name": "identifier",
                  "type": "token",
                  "documentation": "A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"
                },
                {
                  "name": "name",
                  "type": "string",
                  "documentation": "A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"
                },
                {
                  "name": "telecom",
                  "type": "string",
                  "documentation": "The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return"
                }
              ]
            }
          ]
        }
      ]
    }

    DSTU2_PATIENT_1 ||= { 
      "resourceType" => "Patient",
      "id" => "20940091",
      "text" => {
        "status" => "generated",
        "div" =>
          "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Pond, Melody&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 2012-04-25&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "extension" => [{
                        "url" => "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
                        "valueDateTime" => "2012-04-25T16:30:00.000Z"
                      }],
      "identifier" => [{
                         "use" => "usual",
                         "type" => {
                           "coding" => [{
                                          "system" => "http://hl7.org/fhir/v2/0203",
                                          "code" => "MR",
                                          "display" => "Medical record number"
                                        }],
                           "text" => "Medical record number"
                         },
                         "value" => "10001185"
                       }],
      "active" => true,
      "name" => [{
                   "use" => "usual",
                   "text" => "Pond, Melody",
                   "family" => ["Pond"],
                   "given" => ["Melody"]
                 }],
      "gender" => "male",
      "birthDate" => "2012-04-25",
      "deceasedBoolean" => false,
      "contact" => [{
                      "relationship" => [{
                                           "coding" => [{
                                                          "system" => "http://hl7.org/fhir/patient-contact-relationship",
                                                          "code" => "parent",
                                                          "display" => "Parent"
                                                        }],
                                           "text" => "Parent"
                                         }],
                      "name" => {
                        "text" => "Williams, Rory"
                      }
                    }],
      "careProvider" => [{
                           "reference" => "Practitioner/1448008", "display" => "Kovarian, Madame"
                         }]
    }

    DSTU2_PATIENT_2 ||= {
      "resourceType" => "Patient",
      "id" => "6219231",
      "text" => {
        "status" => "generated",
        "div" =>
          "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Pond, Annabeth&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 2003-02-02&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Marital Status&lt;/b&gt;: Never Married&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "extension" => [{
                        "url" => "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
                        "valueDateTime" => "2003-02-03T00:00:00.000Z"
                      }],
      "identifier" => [{
                         "use" => "usual",
                         "type" => {
                           "coding" => [{
                                          "system" => "http://hl7.org/fhir/v2/0203",
                                          "code" => "MR",
                                          "display" => "Medical record number"
                                        }],
                           "text" => "Medical record number"
                         },
                         "value" => "809723498234"
                       }],
      "active" => true,
      "name" => [{
                   "use" => "usual",
                   "text" => "Pond, Annabeth",
                   "family" => ["Pond"],
                   "given" => ["Annabeth"]
                 }],
      "telecom" => [{
                      "system" => "phone", "value" => "(111) 111-1111", "use" => "home"
                    }],
      "gender" => "female",
      "birthDate" => "2003-02-02",
      "deceasedBoolean" => false,
      "address" => [{
                      "use" => "home",
                      "text" => "123123123123\nParkville, MO 64152\nUSA",
                      "line" => ["123123123123"],
                      "city" => "Parkville",
                      "state" => "MO",
                      "postalCode" => "64152"
                    }],
      "maritalStatus" => {
        "coding" => [{
                       "system" => "http://hl7.org/fhir/marital-status",
                       "code" => "S",
                       "display" => "Never Married"
                     }],
        "text" => "Never Married"
      }
    }

    DSTU2_PATIENT_BUNDLE ||= {
      "resourceType" => "Bundle",
      "id" => "08638e55-cb75-4a66-b306-5e3c3938ef3f",
      "type" => "searchset",
      "total" => 2,
      "link" => [{
                   "relation" => "self",
                   "url" =>
                     "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Pond&start=0&_count=20"
                 }],
      "entry" => [{
                    "fullUrl" =>
                      "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/20940091",
                    "resource" => DSTU2_PATIENT_1
                  }, {
                    "fullUrl" =>
                      "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/6219231",
                    "resource" => DSTU2_PATIENT_2
                  }]}

    DSTU2_MEDICATION_ORDER_ACTIVE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "d85381ff-57a9-47a7-a855-2196da2b2308",
      "type": "searchset",
      "total": 7,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=2744010&status=active"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566157",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566157",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Procardia XL 30 mg oral tablet, extended release&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 30 mg, 1 tab(s), Oral, Daily, 30 tab(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2765117",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "207772",
                      "display": "24 HR Nifedipine 30 MG Extended Release Oral Tablet [Procardia]"
                    }
                  ],
                  "text": "Procardia XL 30 mg oral tablet, extended release"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2765117",
              "display": "Procardia XL 30 mg oral tablet, extended release"
            },
            "dosageInstruction": [
              {
                "text": "30 mg, 1 tab(s), Oral, Daily, 30 tab(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "Daily"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 30,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2765117",
                "display": "Procardia XL 30 mg oral tablet, extended release"
              },
              "quantity": {
                "value": "30",
                "units": "tab(s)"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566159",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566159",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: predniSONE 5 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 5 mg, 1 tabs, Oral, Daily, tabs, PRN: Instruct&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2767469",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "763179",
                      "display": "{48 (Prednisone 5 MG Oral Tablet) } Pack"
                    }
                  ],
                  "text": "predniSONE 5 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2767469",
              "display": "predniSONE 5 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "5 mg, 1 tabs, Oral, Daily, tabs, PRN: Instruct",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z",
                      "end": "2014-09-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "Daily"
                  }
                },
                "asNeededCodeableConcept": {
                  "text": "Instruct"
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 5,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2767469",
                "display": "predniSONE 5 mg oral tablet"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/14203884",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "14203884",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Aspercreme 10% topical lotion&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 1 boxes, GTUBE, 10x/Day, 2 boxes, 0 Refill(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "5213029",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "1101829",
                      "display": "trolamine salicylate 100 MG/ML Topical Lotion [Aspercreme]"
                    }
                  ],
                  "text": "Aspercreme 10% topical lotion"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/1400009",
              "display": "Who, Doctor"
            },
            "medicationReference": {
              "reference": "#5213029",
              "display": "Aspercreme 10% topical lotion"
            },
            "dosageInstruction": [
              {
                "text": "1 boxes, GTUBE, 10x/Day, 2 boxes, 0 Refill(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-05-21T20:36:00.000Z"
                    }
                  },
                  "code": {
                    "text": "10x/Day"
                  }
                },
                "route": {
                  "text": "GTUBE"
                },
                "doseQuantity": {
                  "value": 1,
                  "units": "boxes"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#5213029",
                "display": "Aspercreme 10% topical lotion"
              },
              "numberOfRepeatsAllowed": 0,
              "quantity": {
                "value": "2",
                "units": "boxes"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/17865897",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "17865897",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: albuterol 2 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 2 mg, 1 tab(s), Oral, QID, 120 tab(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2748635",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "197316",
                      "display": "Albuterol 2 MG Oral Tablet"
                    }
                  ],
                  "text": "albuterol 2 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/3270007",
              "display": "Howser, Doogie"
            },
            "medicationReference": {
              "reference": "#2748635",
              "display": "albuterol 2 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "2 mg, 1 tab(s), Oral, QID, 120 tab(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-03-11T20:38:00.000Z"
                    }
                  },
                  "code": {
                    "text": "QID"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 2,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2748635",
                "display": "albuterol 2 mg oral tablet"
              },
              "quantity": {
                "value": "120",
                "units": "tab(s)"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/18937899",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "18937899",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Colace&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 50 mg = 1 caps, Oral, q4hr, order duration: 5 days, first dose dttm: 07/31/15 18:00:00 CDT, stop date 08/05/15 17:59:00 CDT&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "4318409",
                "code": {
                  "text": "Colace"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/1616012",
              "display": "House, Gregory"
            },
            "medicationReference": {
              "reference": "#4318409",
              "display": "Colace"
            },
            "dosageInstruction": [
              {
                "text": "50 mg = 1 caps, Oral, q4hr, order duration: 5 days, first dose dttm: 07/31/15 18:00:00 CDT, stop date 08/05/15 17:59:00 CDT",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-07-31T23:00:00.000Z",
                      "end": "2015-08-05T22:59:00.000Z"
                    }
                  },
                  "code": {
                    "text": "q4hr"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 50,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#4318409",
                "display": "Colace"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566161",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566161",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: methotrexate 10 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 10 mg, 1 tab(s), Oral, qWeek, 1 tabs&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2763106",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "105586",
                      "display": "Methotrexate 10 MG Oral Tablet"
                    }
                  ],
                  "text": "methotrexate 10 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2763106",
              "display": "methotrexate 10 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "10 mg, 1 tab(s), Oral, qWeek, 1 tabs",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z",
                      "end": "2014-09-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "qWeek"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 10,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2763106",
                "display": "methotrexate 10 mg oral tablet"
              },
              "quantity": {
                "value": "1",
                "units": "tabs"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566163",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566163",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Zocor 10 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 340 mg, 34 tabs, Oral, Once a day (at bedtime), tabs&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2768849",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "104490",
                      "display": "Simvastatin 10 MG Oral Tablet [Zocor]"
                    }
                  ],
                  "text": "Zocor 10 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2768849",
              "display": "Zocor 10 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "340 mg, 34 tabs, Oral, Once a day (at bedtime), tabs",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "Once a day (at bedtime)"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 340,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2768849",
                "display": "Zocor 10 mg oral tablet"
              }
            }
          }
        }
      ]
    }

    DSTU2_MEDICATION_ORDER_INACTIVE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "ed51a825-e6d1-463e-922b-50ced0cf315b",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=1316020&status=completed&_count=5"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=1316020&status=completed&_count=5&timing-boundsperiod-end=le2015-02-10T16%3A20%3A25.000Z&context=14199276"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/14201768",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "14201768",
            "meta": {
              "versionId": "3"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: aspirin 325 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 1.0 tabs, Oral, Daily, 100.0 tabs, PRN: Instruct, 0 Refill(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: completed&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2750107",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "212033",
                      "display": "Aspirin 325 MG Oral Tablet"
                    }
                  ],
                  "text": "aspirin 325 mg oral tablet"
                }
              }
            ],
            "status": "completed",
            "patient": {
              "reference": "Patient/1316020"
            },
            "prescriber": {
              "reference": "Practitioner/1314013",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2750107",
              "display": "aspirin 325 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "1.0 tabs, Oral, Daily, 100.0 tabs, PRN: Instruct, 0 Refill(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-04-14T15:45:00.000Z",
                      "end": "2015-06-18T22:35:21.000Z"
                    }
                  },
                  "code": {
                    "text": "Daily"
                  }
                },
                "asNeededCodeableConcept": {
                  "text": "Instruct"
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 1,
                  "units": "tabs"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2750107",
                "display": "aspirin 325 mg oral tablet"
              },
              "numberOfRepeatsAllowed": 0,
              "quantity": {
                "value": 100,
                "units": "tabs"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/14192976",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "14192976",
            "meta": {
              "versionId": "3"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Nyquil Liquicap oral capsule&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 1.0 tabs, Oral, 1-2x/Day, 10.0 tabs, 10 Refill(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: completed&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2749728",
                "code": {
                  "text": "Nyquil Liquicap oral capsule"
                }
              }
            ],
            "status": "completed",
            "patient": {
              "reference": "Patient/1316020"
            },
            "prescriber": {
              "reference": "Practitioner/1590015",
              "display": "who, Doctor"
            },
            "medicationReference": {
              "reference": "#2749728",
              "display": "Nyquil Liquicap oral capsule"
            },
            "dosageInstruction": [
              {
                "text": "1.0 tabs, Oral, 1-2x/Day, 10.0 tabs, 10 Refill(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-09-23T14:50:00.000Z",
                      "end": "2015-05-22T00:41:40.000Z"
                    }
                  },
                  "code": {
                    "text": "1-2x/Day"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 1,
                  "units": "tabs"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2749728",
                "display": "Nyquil Liquicap oral capsule"
              },
              "numberOfRepeatsAllowed": 10,
              "quantity": {
                "value": 10,
                "units": "tabs"
              }
            }
          }
        }
      ]
    }
    
  end
end 