# Authentication

You can view your API keys under verify-u dashboard / developer.

API calls require Bearer authentication.

## Bearer Token

The `token` consists of your `secret_key` followed by a `:` (colon).

You need to encode this string in base64.

### Example:

`TEST_SECRET:` will be transformed to `VEVTVF9TRUNSRVQ6`

## Header

The content of the request header should look like:

`Authorization: Bearer <token>`

## Authenticated Request

`curl "http://localhost:4000/api/identifications" -H "Authorization: Bearer VEVTVF9TRUNSRVQ6"`
