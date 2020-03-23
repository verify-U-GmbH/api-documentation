# Authorization

API calls require Bearer authentication. The content of the header should look like: 

`Authorization: Bearer <token>`

The `token` must be your secret_key followed by a colon in base64 encoding.

Example for secret key "TEST_SECRET":

`TEST_SECRET:` will be transformed to `VEVTVF9TRUNSRVQ6`

Final header will be:

`Authorization: Bearer VEVTVF9TRUNSRVQ6`


