# Customer data

You can send additional customer data, that is required for identification, via OAuth "extras" field.

The following fields are supported:
***
| Field         	| Description                                    	| Format        	|
|---------------	|------------------------------------------------	|---------------	|
| `document_id` 	| Returned ID of [/documents/create](/documents) 	| UUID          	|
| `email`      	    | Email Address                           	        | String 	        |
| `msisdn`      	| Mobile Phone Number                            	| International 	|
| `iban`        	| Bank Account                                   	| IBAN          	|