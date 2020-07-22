# Schufa audit

Schufa is the General Credit Protection Association in Germany.

It provides fraud detection for **german customers** by comparing the names and addresses of a client with the consumer data stored in the SCHUFA-database.

You can enable the Schufa audit service option in the [identification channels](channels) section of your business dashboard.

<div class="alert">
    Requires an ID document containing the card holders address. A Passport will not be sufficient.
</div>

### Create Schufa audit call <a name="create-schufa-audit-call"></a>

As soon as the client's address data has been collected by uploading an ID document, you can create the Schufa audit request via `/audit/{id}` call.

In return you will receive the audit result state as either `ACCEPTED` or `REJECTED`.

Refer to the [API reference](api-reference) for details on how to make the API call.

<br >

### Receive Schufa audit result <a name="receive-schufa-audit-result"></a>

You will be able to fetch the result of a previous Schufa audit request at any time by calling `identifications/audit/{id}`.

Refer to the [API reference](api-reference) for details on how to make the API call.
