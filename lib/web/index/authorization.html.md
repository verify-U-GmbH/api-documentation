# Authorization

The OAuth config can be reached at `https://selfid.verify-u.com/oauthconfig`

To create the authorization request you need to set the following parameters:

### Request Parameters

| Field           	| Description                                                                                    	| Format   	|
|-----------------	|------------------------------------------------------------------------------------------------	|----------	|
| `client_id`     	| Public identifier you received after registering your business                                 	| `String` 	|
| `redirect_uri`  	| URI to return the user to after identification is complete                                     	| `String` 	|
| `scope`         	| Identification channel which controls the flow                                                 	| `String` 	|
| `response_type` 	| Tells the authorization server that the application is initiating the authorization code flow. 	| `String` 	|
| `state`         	| Random string used to prevent CSRF attacks.                                                    	| `String` 	|
| `extras`        	| Additional [customer data](/customer-data) you want to provide during the identification         	| `Object` 	|