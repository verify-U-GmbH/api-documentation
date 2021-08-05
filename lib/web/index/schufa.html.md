# Schufa check

Schufa is the General Credit Protection Association in Germany.

It provides fraud detection for **german customers** by comparing client data with the consumer data stored in the SCHUFA-database.

You can enable the Schufa check service option in the [identification channels](channels) section of your business dashboard.

After that, you will be able to store your Schufa account credentials in the **settings** section.

We offer the following two Schufa check methods:

### Bank check <a name="bank-check"></a>

Bank check confirms during the identification process that a client is actually the sole owner of a given bank account.

In order to fulfill the Schufa request, the client needs to additionally provide his address details and IBAN account during the identification process.

### Create Schufa check call <a name="create-schufa-check-call"></a>

As soon as the client's address data has been collected by uploading an ID document, you can also create the Schufa audit request via `/schufa/{id}` call.

In return you will receive the check result state as either `ACCEPTED` or `REJECTED`.

Refer to the [API reference](api-reference) for details on how to make the API call.

### Receive Schufa check result <a name="receive-schufa-check-result"></a>

You will be able to fetch the result of a previous Schufa check request at any time by calling `identifications/schufa/{id}`.

Refer to the [API reference](api-reference) for details on how to make the API call.
