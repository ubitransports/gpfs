---
currentMenu: index
---

# passenger_schools.txt

This file contains the associations between schools ([schools.txt](schools.txt.html)) and users ([passengers.txt](passengers.txt.html)).

## Description of columns

| Field name             |  Mandatory     |  Max length |  Description |
|---------------------------|:----------------:|------|--------------|
| passenger_id    | **Mandatory** |   -  | Identifier of the referenced user. |
| school_id       | **Mandatory** |   -  | Identifier of the referenced educational establishment. |
| internship_type | **Mandatory** |   -  | User regime. Accepted values: 0 = Not communicated, 1 = internal, 2 = half-boarder, 3 = external |
| class_level     | **Mandatory** |  **255** | Name of the class or level of the user.  |

## Example : 

```
passenger_id,school_id,internship_type,class_level
P1,SCHOOL1,2,Terminale ES
P2,SCHOOL2,2,Seconde B
```
