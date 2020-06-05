# Authorization

The OAuth config can be reached at [https://app.verify-u.com/oauthconfig](https://app.verify-u.com/oauthconfig)

To create the authorization request you need to set the following parameters:

### Request Parameters <a name="request-parameters"></a>

<br >

#### **client_id**

The Public API key for your application.

You find this value at the [developer page](https://app.verify-u.com/business/developers).

#### **redirect_uri**

A website URI endpoint of your choice.

This is where **verify-u** redirects the user after completing the identification flow.

#### **scope**

Name of your selected [identification channel](https://app.verify-u.com/business/channel).

The selected identification channel controls the identification flow for your user.

#### **response_type**

Value must be: `code`

Tells the authorization server that the application is initiating the authorization code flow.

#### **state**

You can encode a `reference_id` of your choice which will help you couple a client with a specific identification.

It is required to add a `uuid` afterwards, separated by a colon.

Example:

client_reference_id:b1fd52e4-5211-4d13-afa9-a3b741204579

A string of your choice that will be returned by **verify-u** as a URI parameter to your application.

The state parameter is used for correlating requests and responses and preventing [cross-site request forgery attacks](https://tools.ietf.org/html/rfc6749#section-10.12).

#### **extras**

Optional value.

Additional [client data](client-data) you may need to provide for the identification flow.
