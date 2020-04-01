# Getting started

1. First, you need a verify-u business account. [Register now](http://app.verify-u.com/auth/register).

2. To setup the identification flow to your needs, add [identification channels](channels) in your business dashboard.

    verify-u implements the [OAuth 2.0](https://oauth.net/2/)-standard. The identification flow consists of the following steps:

    * Your application redirects your customer to our authorization endpoint, with the identification flow described as scope
    * The customer proceeds with the verify-u identification
    * After identification he is redirected back to your application, with a JSON Web Token (JWT) parameter appended to the destination URI
    * Your application's backend uses the JWT as an access token to retrieve api responses for this identification

3. Create authorization request

    The parameters described on [authorization](authorization) are used to create the authorization request. 
    Build the target URL like the following and direct the user’s browser to it:

    ```
    http://app.verify-u.com/auth?
    redirect_uri=https://example-app.com/callback
    &client_id=EXAMPLE_ID
    &scope=default
    &response_type=code
    &state=random_state_1234
    ```