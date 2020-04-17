# Documents

Send the contract document PDF to be signed by the customer.

## Path

---

`https://verify-u.com/api/documents/create/`

## Parameters

---

| Field         | Description                  | Format |
| ------------- | ---------------------------- | ------ |
| `description` | document description / title | String |
| `data`        | contract PDF                 | binary |

---

## Returns

---

`document_id`

## Response

---

Returns a document_id after the file was successfully saved.

Returns an error otherwise.
