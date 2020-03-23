# Getting started

verify-u implements the OAuth2 standard.

The OAuth config can be reached at `https://selfid.verify-u.com/oauthconfig`

The flow consists of the following steps:

* Your application redirects your customer to our authorization endpoint, with the KYC level described as a set of scopes
* The customer proceeds with the verify-u KYC identification
* The customer gets redirected back to your application, with a JSON Web Token (JWT) in its URL parameters
* Your application's backend uses the JWT as an access token to retrieve api responses for this identification