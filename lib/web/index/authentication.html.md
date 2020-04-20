# Authentication

## API calls require Bearer authentication.

### Bearer Token

The Bearer `token` consists of your `secret_key` followed by a `:` (colon).

You need to encode this string in base64.

Example: 

`TEST_SECRET:` will be transformed to `VEVTVF9TRUNSRVQ6`

You can view your API keys in the [developer section](https://app.verify-u.com/business/developers) of the [verify-u dashboard](https://app.verify-u.com/business).

### Request header

The content of the request header should look like:

`Authorization: Bearer <token>`

### Authenticated Request

Example: 

`curl "http://localhost:4000/api/identifications" -H "Authorization: Bearer VEVTVF9TRUNSRVQ6"`
