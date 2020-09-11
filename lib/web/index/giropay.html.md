# Giropay

Giropay is a service used to verify the existence of a clients' bank account directly online.

The client performs this verification with his familiar online banking credentials entirely online without having to register for giropay first. 

The Giropay service consists of two steps which are added to the basic identification flow:

- Enter IBAN number
- Bank account verification by PIN-TAN method

You can add the Giropay bank account verification service to the identification flow in the [identification channels](channels) section of your business dashboard.

If you have already collected the clients' IBAN, you may provide **verify-u** with it beforehand:

### Append IBAN number to authorization <a name="append-iban-number"></a>

Expand your [authorization](authorization) request with the clients' `IBAN`.

For this, add the [client data](client-data) object as an additional parameter named `extras`.

