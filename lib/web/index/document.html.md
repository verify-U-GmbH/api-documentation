# Create Document

---

Creates a single contract document PDF to be signed by the customer during the identification.
Store the returned document_id and couple it with the identification request for the corresponding user.

For these requests, set your request header to:

`Content-Type: multipart/form-data`

---

### Path

POST `https://verify-u.com/api/documents/create/`

---

### Parameters

Request body parameters:

| Field         | Description                  |
| ------------- | ---------------------------- |
| `description` | document description / title |
| `data`        | contract PDF                 |

<br >

---

### Returns

`document_id`

---

### Response

Returns a document_id after the file was successfully saved.

Returns an error otherwise.
