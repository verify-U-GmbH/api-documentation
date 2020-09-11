# Getting started

### Step 1: Register business account <a name="register-account"></a>

[Register here](https://app.verify-u.com/auth/register) to create 
your business account. Successful registration will grant access
to [dashboard](https://app.verify-u.com/auth/register) with the following functionality:
 
 - Access to API keys
 - Identification channel creation and management
 - Identification reports and customer data retreival
 - Account balance and profile management

### Step 2: Create an identification channel <a name="api-keys"></a>

To setup the identification flow to your needs, add identification channels in your business dashboard. Identification allow you to:
 - Select either automatic (selfID) or face-to-face (f2f) identification flows
 - Add acceptable id-document types
 - Configure demo mode for testing

**verify-u** implements the [OAuth 2.0](https://oauth.net/2/)-standard. The identification flow consists of the following steps:

- Your application redirects your client to our authorization endpoint, with the identification flow described as scope
- The client proceeds with the verify-u identification
- After identification he is redirected back to your application, with a identification ID parameter appended to the destination URI
- Your application's backend uses the identification ID as request parameter to retrieve API responses for this identification

### Create authorization request <a name="create-authorization-request"></a>

The parameters described on [authorization](authorization) are used to create the authorization request.
Build the target URL like the following and direct the user’s browser to it:

```
https://app.verify-u.com/identification?
redirect_uri=https://example-app.com/callback
&client_id=EXAMPLE_ID
&scope=default
&response_type=code
&state=reference_id:b1fd52e4-5211-4d13-afa9-a3b741204579
```

### Store identification ID <a name="store-identification-id"></a>

After the client finished the identification process, he is redirected back to your application with the following parameters appended:

```
https://example-app.com/callback?
token_type=bearer
&code=123e4567-e89b-12d3-a456-426655440000
&state=reference_id:b1fd52e4-5211-4d13-afa9-a3b741204579
&scope=default
```

Make sure you store the returned identification ID, appended as `code` parameter to your `redirect_uri`.

### Receive identification details <a name="receive-identification-details"></a>

Make use of the identification ID in your calls to our [API](api-introduction) to receive the user details for this identification.
