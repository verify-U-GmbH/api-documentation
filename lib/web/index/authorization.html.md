# Authorization

---

The OAuth config can be reached at `https://selfid.verify-u.com/oauthconfig`

To create the authorization request you need to set the following parameters:

### Request Parameters <a name="request-parameters"></a>

<br >

| Field           | Description                                                                                    | Format   |
| --------------- | ---------------------------------------------------------------------------------------------- | -------- |
| `client_id`     | Public API key you find at [developers page](https://app.verify-u.com/business/developers)     | `String` |
| `redirect_uri`  | Your website URI to return the user to after identification is complete                        | `String` |
| `scope`         | Name of your [identification channel](https://app.verify-u.com/business/channel)               | `String` |
| `response_type` | Tells the authorization server that the application is initiating the authorization code flow. | `String` |
| `state`         | Random string used to prevent CSRF attacks.                                                    | `String` |
| `extras`        | Additional [customer data](/customer-data) you want to provide during the identification       | `Object` |
