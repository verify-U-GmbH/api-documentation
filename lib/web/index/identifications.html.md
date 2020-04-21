# Single Identification

---

Retrieves a single identification by identification ID.

### Path

GET `https://verify-u.com/api/identifications/{id}`

---

### Parameters

`Identification ID`

---

### Returns

Returns client profile data

---

### Response

Example:

```json
{
  "data_permissions": [
    {
      "id_document_permission": true,
      "video_permission": true
    }
  ],
  "id_document": [
    {
      "country": "string",
      "date_of_birth": "2020-03-23",
      "gender": "string",
      "first_name": "string",
      "last_name": "string",
      "id_document_number": "string",
      "issue_date": "2020-03-23",
      "expiration_date": "2020-03-23",
      "mrz": "string"
    }
  ],
  "identification": [
    {
      "customer_id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "date_created": "2020-03-23",
      "identification_date": "2020-03-23",
      "rejected": true,
      "rejection_cause": "string",
      "state": "string"
    }
  ],
  "basic_information": [
    {
      "first_name": "string",
      "last_name": "string",
      "date_of_birth": "2020-03-23",
      "gender": "string",
      "country": "string"
    }
  ],
  "address": [
    {
      "house_number": "string",
      "street": "string",
      "country": "string",
      "postal_code": "string",
      "city": "string"
    }
  ]
}
```
