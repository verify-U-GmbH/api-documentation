# HTTP Status Codes

The **verify-u** API uses standard HTTP response codes to indicate the success or failure of an API request.

Code 200 indicates success.

Codes in the 4xx range indicate an error returning the information requested.

Codes in the 5xx range indicate an internal server error on **verify-u** side.


#### **200 - OK**

Request successfully fulfilled.


#### **401 - Unauthorized**

No valid API Key provided.


#### **403 - Forbidden**

No permission granted to access this ressource.


#### **404 - Not Found**

No identification or resource found.


#### **500 - Server Errors**

Internal Server error.
