# Getting started

---

### Register account <a name="register-account"></a>

First, you need a verify-u business account. [Register now](https://app.verify-u.com/auth/register).

To setup the identification flow to your needs, add [identification channels](channels) in your business dashboard.

**verify-u** implements the [OAuth 2.0](https://oauth.net/2/)-standard. The identification flow consists of the following steps:

- Your application redirects your customer to our authorization endpoint, with the identification flow described as scope
- The customer proceeds with the verify-u identification
- After identification he is redirected back to your application, with a identification ID parameter appended to the destination URI
- Your application's backend uses the identification ID as request parameter to retrieve API responses for this identification

<br >

---

### Create authorization request <a name="create-authorization-request"></a>

The parameters described on [authorization](authorization) are used to create the authorization request.
Build the target URL like the following and direct the user’s browser to it:

```
https://app.verify-u.com/auth?
redirect_uri=https://example-app.com/callback
&client_id=EXAMPLE_ID
&scope=default
&response_type=code
&state=random_state_1234
```

<br >

---

### Store identification ID <a name="store-identification-id"></a>

After the customer finished the identification process, he is redirected back to your application with the following parameters appended:

```
https://example-app.com/callback?
token_type=bearer
&code=123e4567-e89b-12d3-a456-426655440000
&state=random_state_99557
&scope=default
```

Make sure you store the returned identification ID, appended as `code` parameter to your `redirect_uri`.

It is required to make calls to our [API](authentication) for identification details.
