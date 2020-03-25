# Getting started

verify-u implements the [OAuth 2.0](https://oauth.net/2/)-standard.

The flow consists of the following steps:

* Your application redirects your customer to our authorization endpoint, with the identification flow described as scope
* The customer proceeds with the verify-u identification
* The customer gets redirected back to your application, with a JSON Web Token (JWT) in its URL parameters
* Your application's backend uses the JWT as an access token to retrieve api responses for this identification