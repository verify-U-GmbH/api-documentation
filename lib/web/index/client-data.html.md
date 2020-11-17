# Client data

You can send additional client data used during the identification process.

## General parameters <a name="supported-parameters"></a>

### **locale**

Identification process language.

Switches the template texts for identification to the desired language.

Supported values: `de` `en`

### **email**

Client email address.

Example: `jsmith@example.com`

### **phone_number**

Client mobile phone number.

Must be provided in international E.164 format, starting with a `+`.

Example: `+4915123456789`

### **iban**

Client International Bank Account Number.

The IBAN must not contain spaces when transmitted electronically.

Example: `DE02120300000000202051`

## Parameters used in signature process

### **document_id**

Document Id of the contract document to be signed by your client.

The document Id is returned as UUID by **verify-u** after making an API call to /documents/create.

Please refer to our [API reference](reference) for detailed information.

Example: `b1fd52e4-5211-4d13-afa9-a3b741204579`

If a client needs to sign multiple documents, send all document Ids as an array.

Example: `[‘d1506eb4-051f-4b59-a707-074f28494f25’, ‘436bafe8-b764-4f0c-a77a-6f6b203fda37’]`

### **first_name**

First name of the designated signee.

The given value must match with the first name received from the ID document.

Example: `John`

### **last_name**

Last name of the designated signee.

The given value must match with the last name received from the ID document.

Example: `Doe`
