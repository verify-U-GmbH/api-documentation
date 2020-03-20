# Passports

Retrieves the ID document image file uploaded by the customer.

Provide the JWT Token from the identification.

#### Path
***
`https://verify-u.com/api/identifications/iddocument/:id`

#### Parameters
***
`JWT Token`

#### Returns
***
ID document in PNG forat

#### Response
***
Returns a binary file of the customers ID document used for identification.

Returns an error otherwise.