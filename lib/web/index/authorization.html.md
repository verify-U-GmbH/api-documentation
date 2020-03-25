# Authorization

The OAuth config can be reached at `https://selfid.verify-u.com/oauthconfig`

To create the authorization request you need to set the following parameters:

### Request Parameters

| Field           	| Description                                                                                    	|
|-----------------	|------------------------------------------------------------------------------------------------	|
| `client_id`     	| Public identifier you received after registering your business                                 	|
| `redirect_uri`  	| URI to return the user to after identification is complete                                     	|
| `scope`         	| Identification channel which controls the flow                                                 	|
| `response_type` 	| Tells the authorization server which grant to execute                                          	|
| `state`         	| Random string used to prevent CSRF attacks.                                                    	|
| `extras`        	| Additional customer information you want to provide during the identification                  	|