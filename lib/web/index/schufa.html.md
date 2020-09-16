# Schufa check

Schufa is the General Credit Protection Association in Germany.

It provides fraud detection for **german customers** by comparing client data with the consumer data stored in the SCHUFA-database.

You can enable the Schufa check service option in the [identification channels](channels) section of your business dashboard.

We offer the following two Schufa check methods:

### Ident check <a name="ident-check"></a>

Ident check validates a client's personal data with the SCHUFA-database.

This check requires first name, last name, address and date of birth from the client.

### Bank check <a name="bank-check"></a>

Bank check confirms that a client is actually the sole owner of a given bank account.

Simply add the client's IBAN to the request parameters.

### Create Schufa check call <a name="create-schufa-check-call"></a>

As soon as the client's address data has been collected by uploading an ID document, you can create the Schufa audit request via `/schufa/{id}` call.

In return you will receive the check result state as either `ACCEPTED` or `REJECTED`.

Refer to the [API reference](api-reference) for details on how to make the API call.

### Receive Schufa check result <a name="receive-schufa-check-result"></a>

You will be able to fetch the result of a previous Schufa check request at any time by calling `identifications/schufa/{id}`.

Refer to the [API reference](api-reference) for details on how to make the API call.
