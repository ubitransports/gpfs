---
currentMenu: index
---

# schools.txt

This file contains information concerning educational establishments.

## Description of columns

| Field name          |  Mandatory    | Description                                                                                                    |
|------------------------|:------------:|----------------------------------------------------------------------------------------------------------------|
| school_id              | **Mandatory** | Unique identifier of the school.                                                                               |
| school_name            | **Mandatory** | School name                                                                                                    |
| school_shortname       | **Mandatory** | School short name.                                                                                             |
| school_address_1       | Optional     | School address.                                                                                                |
| school_address_2       | Optional     | School additional address.                                                                                     |
| school_address_3       | Optional     | School additional address.                                                                                     |
| school_address_zipcode | Optional     | Zipcode                                                                                                        |
| school_address_city    | Optional     | City                                                                                                           |
| school_address_country | Optional     | Country                                                                                                        |
| school_email           | Optional     | Email of the school                                                                                            |
| school_lat             | Optional     | Latitude of the school. Must be filled in with the [WGS 84 geo system](https://fr.wikipedia.org/wiki/WGS_84).  |
| school_lon             | Optional     | Longitude of the school. Must be filled in with the [WGS 84 geo system](https://fr.wikipedia.org/wiki/WGS_84). |
| school_open_on         | Optional     | Weekly opening days of the school in binary format of 7 characters. See examples below.                  |

### Field `school_open_on` and binary format

The field `school_open_on`must be expressed in 7 characters corresponding to the 7 days of the week and using the value 0 or 1.

For example:
* open Monday to Friday : `1111100`
* opening Monday-Tuesday-Thursday-Friday : `1101100`

By default all days are inactive (`0000000`)

## Example
```
school_id,school_name,school_shortname,school_address_1,school_address_2,school_address_3,school_address_zipcode,school_address_city,school_address_country,school_email,school_lat,school_lon,school_open_on
SCHOOL1,Lycée PSS,PSS,1 rue de la mairie,,,71000,Mâcon,France,lycee.pss@gmail.com,46.3062,4.8313,1111100
```
