# Customer data

---

You can send additional customer data, that is required for identification, via OAuth `extras` field.

### Example object <a name="example-extras"></a>

`{"document_id": "b1fd52e4-5211-4d13-afa9-a3b741204579", "msisdn": "+918369110173"}`

---

### Supported fields <a name="supported-fields"></a>

<br >

#### **document_id**

Document ID of the contract document to be signed by your customer.

The document ID is returned as UUID by **verify-u** after making an API call to /documents/create.

Please refer to our [API reference](reference) for detailed information.

Example: `b1fd52e4-5211-4d13-afa9-a3b741204579`

#### **email**

Customer email address.

Example: `jsmith@example.com`

#### **msisdn**

Customer mobile phone number.

Must be provided in international E.164 format, starting with a `+`.

Example: `+4915123456789`

#### **iban**

International Bank Account Number.

The IBAN must not contain spaces when transmitted electronically.

Example: `DE02120300000000202051`
