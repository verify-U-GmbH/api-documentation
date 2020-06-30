# Electronic signature

Electronic signature is a process of issuing a short term electronic certificate for applying
qualified electronic signature (QES) on PDF document.

It consists of two steps which are added to the basic identification flow:

- A video identification session
- Generation of electronic signature by SMS PIN

You can add the Electronic signature service to the identification flow in the [identification channels](channels) section of your business dashboard.

<br >

In order to make use the Electronic signature module, you need to follow these required steps:

### Send contract document <a name="send-contract-document"></a>

First you need to provide us with the client's contract document file via `documents/create` call.
In return you will receive a `document_id` pointing to this contract document.

Refer to the [API reference](api-reference) for details on how to make the API call.

<br >

### Append document Id to authorization <a name="append-document-id"></a>

Expand your [authorization](authorization) request with the received `document_id`.

For this, add the [client data](client-data) object as an additional parameter named `extras`.

<br >

### Receive signed document <a name="receive-signed-document"></a>

After the client successfully finished the identification with Electronic Signature, you will be able to fetch the signed document by calling `identifications/esign/{id}`.

Refer to the [API reference](api-reference) for details on how to make the API call.