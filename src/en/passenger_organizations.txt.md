---
currentMenu: passenger_organizations.txt
---

# passenger_organizations.txt

This file contains the associations between the Organizing Authorities (AO) and the users [passengers.txt](passengers.txt.html).

## Description of columns

| Field name   |  Mandatory     | Max length | Description                                                                                                  |
|-----------------|:----------------:|--------------|--------------------------------------------------------------------------------------------------------------|
| passenger_id    | **Mandatory** | -            |Identifier of the referenced user. This field is defined in the [passengers.txt](passengers.txt.html). |
| organization_id | **Mandatory** | 256          | AO identifier.                                                                                    |

## Example : 

```
passenger_id,organization_id
P1,ORGA1
P2,ORGA2
P2,ORGA1
```
