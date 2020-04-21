# E-signatures

---

Retrieves the contract document PDF signed by the customer by digital signature.

### Path

GET `https://verify-u.com/api/identifications/esign/{id}`

---

### Parameters

`Identification ID`

---

### Returns

Signed document in PDF format

---

### Response

Returns a binary file if the customer successfully signed the transferred contract.

Returns an error otherwise.
