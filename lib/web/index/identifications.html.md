# Identifications


Retrieves the last 10 identifications as a list.

Provide the JWT Token from the identification.

#### Path
***
`https://verify-u.com/api/identifications`

#### Parameters

***
No parameters required

#### Returns
***
List of the last 10 identifications

#### Response
***
```json
[
  {
    "age_permission": true,
    "date_created": "2020-03-20",
    "full_name_permission": true,
    "gender_permission": true,
    "id": "string",
    "passport_permission": true,
    "state": "string",
    "video_permission": true
  }
]
```
