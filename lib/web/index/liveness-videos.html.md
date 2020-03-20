# Liveness videos

Retrieves the video file from the facetoface call between agent and customer.

Provide the JWT Token from the identification.

#### Path
***
`https://verify-u.com/api/identifications/video/:id`

#### Parameters
***
`JWT Token`

#### Returns
***
Liveness video in MP4 or MKV format

#### Response
***
Returns a binary file of the customers recorded video call.

Returns an error otherwise.