# Introduction


**verify-u** is an online platform for identity verification,
e-signature issuance, and presence confirmation. It consist of [OAuth 2.0](https://oauth.net/2/)-based 
flow and a [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) 
API for maximum flexibility in delivering a compliant identification solution for 
the needs of your enterprise.

Our functionality can be generally divided into the following products, 
which can be mixed and matched to your onboarding and/or compliance requirements:

* Automatic identification (one-time or reusable)
* Video identification (one-time or reusable)
* eIDAS (EU 910/2014) qualified electronic signature issuance
* Presence confirmation

To tailor the platform to your specific use-case, please review each concept below: 

### One-time identification <a name="onetime-identification"></a> 

One-time identification is the most commonly used method to onboard a client. 
In this scenario a client is redirected to identification provider's website 
for data processing. The client performs the necessary actions and is then 
redirected back to company's website with results of identification. 

This method of identification provides what most seamless experience for the user, 
but the data extracted from identification cannot be reused for other identifications. 
One-time identification by definition implies redundancy of identifications, 
which in turn slows down the average onboarding time for all parties involved.	

***

### Reusable identification <a name="reusable-identification"></a> 

Reusable identification addresses the limitations of one-time identification by
creating an account with identification provider's service for storage and control of
personal data during client's identification session. On subsequent identifications with
other businesses, the client is able to simply grant consent to any business to 
process their personal data. 

This method of identification is ideal for quick registration scenarios where 
social login is employed and where only partial user data is required to confirm that 
the user is a real person.

***

### Automatic identification <a name="automatic-identification"></a> 

Automatic identification is a fully automated identification flow used to identify a physical person.
It consists of three steps:

* Identification document upload (passport, driver's license, ID card) for picture and data extraction
* Face detection for identification document photo comparison
* Liveness detection for confirmation of user's presence

This method of identification is best used for onboarding scenarios where simplified due diligence
can be used.

***

### Video identification <a name="video-identification"></a> 

Video identification is a partially automated identification flow used to identify a physical person.
It consists of two steps:

* Identification document upload (passport, driver's license, ID card) for picture and data extraction
* Video session with a live agent who performs a face-2-face identification 

This method of identification is best used for onboarding scenarios where regulatory and compliance 
requirements must be met.

***

### Electronic signature <a name="e-sign"></a> 

Electronic signature is a process of issuing a short term electronic certificate for applying 
qualified electronic signature (QES) on PDF document. It consists of two steps:

* A video identification session 
* Generation of electronic signature by SMS PIN 
 
This both a method of identification and a way of entry into a legally binding contract with a client.
The generation of electronic signature for an identification is reusable, which allows both parties
to amend the current contract and enter into new agreements.     

***

### Presence confirmation <a name="presence"></a> 

Presence confirmation is a way method of verifying that an existing client with a successful 
identification is alive and present during an authorization action. 
It consists of a liveness check similar to one used in [automatic identification](#reusable-identification)
and is meant to be used in two-factor authentication scenarios, including 
[PSD2 SCA](https://en.wikipedia.org/wiki/Strong_customer_authentication) 
scenarios to confirm inherence of the user (something they are).