---
currentMenu: passenger_profiles.txt
---

# passenger_profiles.txt

This file contains the associations between profiles ([profiles.txt](profiles.txt.html)) and the users ([passengers.txt](passengers.txt.html)).

## Description des colonnes

| Field name      |   Mandatory   | Description                                             |
|-----------------|:-------------:|---------------------------------------------------------|
| passenger_id    | **Mandatory** | Unique user identifier.                                 |
| profil_id       | **Mandatory** | Name of the profile associated with the user.           |
| profil_start_on |   Optional    | Effective date in format [YYYYMMDD](types.html#Dates).  |
| profil_end_on   |   Optional    | Expiration date in format [YYYYMMDD](types.html#Dates). |

## Example : 

```
passenger_id,profil_id,profil_start_on,profil_end_on
P1,1,20160101,20161231
P2,1,20160101,20160331
```
