---
currentMenu: index
---

# passengers.txt

**/!\ This file is required.**

This file contains information concerning users who can use the transport network.

## Description of columns

| Field name           |  Mandatory     |  Max length | Description                                                                                       |
|---------------------------|:----------------:|------|---------------------------------------------------------------------------------------------------|
| passenger_id              |  **Mandatory** |   -  | Unique identifier that identifies the passenger.                                                  |
| passenger_file_number     |  **Mandatory** |  **255** | Passenger file number.                                                                            |
| passenger_firstname       |  **Mandatory** |  **255** | Passenger first name                                                                              |
| passenger_lastname        |  **Mandatory** |  **255** | Passenger last name                                                                               |
| passenger_gender_title    |  Optional       |  **30**  | Passenger title. It can be any text (example: Mrs, Miss, Mr...).                                  |
| passenger_dateofbirth     |  Optional       |   -  | Passenger birthdate in format [YYYYMMDD](types.html#Dates)                                        |
| passenger_gender          |  Optional       |   -  | Passener gender. Accepted values: 0 = prefer not to say, 1 = male, 2 = female                     |
| passenger_email           |  Optional       |  **255** | Email                                                                                             |
| passenger_mobile_phone    |  Optional       |  **255** | Mobile phone [in international format](types.html)                                                |
| passenger_home_phone      |  Optional       |  **255** | Home phone [in international format](types.html)                                                  |
| passenger_address_1       |  Optional       |  **255** | Address                                                                                           |
| passenger_address_2       |  Optional       |  **255** | Additional address                                                                                |
| passenger_address_3       |  Optional       |  **255** | Additional address                                                                                |
| passenger_address_zipcode |  Optional       |  **255** | Zipcode                                                                                           |
| passenger_address_city    |  Optional       |  **255** | City                                                                                              |
| passenger_address_country |  Optional       |  **255** | Country                                                                                           |
| passenger_picture_name    |  Optional       |   -  | Name of the picture to associate with the user profile with its extension. Example: `1235235.jpg` |
| additional_data           |  Optional       |   -  | Additional data linked to the user, in [JSON format](types.html#JSON)                             |

### Images

The images will be placed in a folder `pictures` at the root of the zip file, that is at the same level as the .txt files.

### Example with JSON additional_data

The additional_data field can contain **multiple key/value combinations**.
The content of the key and the value must be an **alphanumeric character** string .
```
"{""cle1"":""valeur1"",""cle2"":""valeur2"",""cle3"":""valeur3""}"
```

## Example :
```
passenger_id,passenger_file_number,passenger_firstname,passenger_lastname,passenger_gender_title,passenger_dateofbirth,passenger_gender,passenger_email,passenger_mobile_phone,passenger_home_phone,passenger_address_1,passenger_address_2,passenger_address_3,passenger_address_zipcode,passenger_address_city,passenger_address_country,passenger_picture_name,additional_data
P1,P0000001,John,Doe,M,19900331,1,john.doe@gmail.com,,,200 Bd de la resistance,,,71000,Mâcon,France,"","{""cle1"":""valeur1"",""cle2"":""valeur2"",""cle3"":""valeur3""}"
```
