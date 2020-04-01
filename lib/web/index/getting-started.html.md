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
    https://app.verify-u.com/auth?
    redirect_uri=https://example-app.com/callback
    &client_id=EXAMPLE_ID
    &scope=default
    &response_type=code
    &state=random_state_1234
    ```

4. Store JWT Token

    After the customer finished the identification process, he is redirect back to your application with the following parameters appended:

    ```
    https://example-app.com/callback?
    token_type=bearer
    &code=xxxxx.yyyyy.zzzzz
    &state=random_state_99557
    &scope=default
    ```

    Make sure you store the returned JWT (OAuth 2.0 Bearer Token), appended as `code` parameter to your `redirect_uri`. 

    It is required to make calls to our [API](authentication) for identification details.