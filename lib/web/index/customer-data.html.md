# Customer data

---

You can send additional customer data, that is required for identification, via OAuth "extras" field.

### Example extras <a name="example-extras"></a>

`{'document_id': 'b1fd52e4-5211-4d13-afa9-a3b741204579', 'msisdn': '918369110173'}`

---

### Supported fields <a name="supported-fields"></a>

<br >

| Field         | Description                                    | Format   |
| ------------- | ---------------------------------------------- | -------- |
| `document_id` | Returned ID of [/documents/create](/documents) | `UUID`   |
| `email`       | Email Address                                  | `String` |
| `msisdn`      | Mobile Phone (International E.164 format)      | `String` |
| `iban`        | Bank Account                                   | `IBAN`   |
