# Electronic signature

Electronic signature is a process of issuing a short term electronic certificate for applying
qualified electronic signature (QES) on PDF document.

The following step is added to the basic identification flow:

- Generation of electronic signature by SMS PIN

You can add the Electronic signature service to the identification flow in the [identification channels](channels) section of your business dashboard.

In order to make use of the Electronic signature module, you need to follow these required steps:

### Send contract document <a name="send-contract-document"></a>

First you need to provide us with the client's contract document file via `/documents` call.
In return you will receive a `document_id` pointing to this contract document.

Refer to the [API reference](api-reference) for details on how to make the API call.

It is possible to repeat this step in order to transfer multiple contract documents for a single client.

### Append client data to authorization <a name="append-client-data"></a>

Expand your [authorization](authorization) request with the received `document_id` the client's `first_name` and `last_name`.

For this, refer to the [client data](client-data) page and add those additional parameter to your request.

### Receive signed document <a name="receive-signed-document"></a>

After the client successfully finished the identification with Electronic Signature, you will be able to fetch the signed document by calling `identifications/e-sign/{id}`.

Refer to the [API reference](api-reference) for details on how to make the API call.
