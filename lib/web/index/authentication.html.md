# Authentication

## All API calls require Basic authentication

### Basic authentication <a name="basic-authentication"></a>

The authentication string is simply a base64 encoded version of

`<public_key>:<secret_key>`

Example:

`TEST_PUB:TEST_SECRET` will be transformed to `VEVTVF9QVUI6VEVTVF9TRUNSRVQ=`

You can view your API keys in the [developer section](https://app.verify-u.com/business/developers) of the [verify-u dashboard](https://app.verify-u.com/business).

---

### Request header <a name="request-header"></a>

The content of the request header should look like:

`Authorization: Basic <authentication_string>`

---

### Authenticated Request <a name="authenticated-request"></a>

Example:

`curl "https://app.verify-u.com/api/identifications" -H "Authorization: Basic VEVTVF9QVUI6VEVTVF9TRUNSRVQ="`
