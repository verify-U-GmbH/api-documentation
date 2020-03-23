# E-signatures

Retrieves the contract document PDF signed by the customer by digital signature.

#### Path
***
`https://verify-u.com/api/identifications/esign/{jwt}`

#### Parameters
***
`JWT Token`

#### Returns
***
Signed document in PDF format

#### Response
***
Returns a binary file if the customer successfully signed the transferred contract.

Returns an error otherwise.