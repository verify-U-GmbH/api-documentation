# Authentication

## All API calls require Basic authentication

### Basic authentication <a name="basic-authentication"></a>

The basic auth **username** is your `secret_key`, encoded in base64.

No password value is used.

You can view your API keys in the [developer section](https://app.verify-u.com/business/developers) of the [verify-u dashboard](https://app.verify-u.com/business).

---

### Request header <a name="request-header"></a>

Your request authorization header should look like:

`Authorization: Basic <auth_username>`

---

### Authenticated Request <a name="authenticated-request"></a>

Example:

`curl "https://app.verify-u.com/api/identifications" -H "Authorization: Basic VEVTVF9TRUNSRVQ="`
