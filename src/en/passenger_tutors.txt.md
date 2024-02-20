---
currentMenu: passenger_tutors.txt
---

# passenger_tutors.txt

This file contains information concerning the legal guardians of users defined in the [passengers.txt](passengers.txt.html).

## Description of columns

| Field name             |  Mandatory     |  Max length | Description                                                                                                                     |
|---------------------------|:----------------:|------|---------------------------------------------------------------------------------------------------------------------------------|
| tutor_id              |  **Mandatory**   |   -  | Unique identifier of the tutor.                                                                                                 |
| passenger_id          |  **Mandatory**   |   -  | Identifier of the user associated with this tutor.                                                                              |
| tutor_firstname       |  **Mandatory**   |  **255** | First name of the tutor.                                                                                                        |
| tutor_lastname        |  **Mandatory**   |  **255** | First name of the tutor.                                                                                                        |
| tutor_gender_title    |  Optionnel   |  **30**  | Title of the tutor; It can be any text (example: Mrs, Miss, Mr...).                                                             |
| tutor_parent_link     |  Optionnel   |   -  | Relationship between the user and the tutor. Accepted values: 0 = not communicated, 1 = mother, 2 = father, 3 = legal guardian. |
| tutor_email           |  Optionnel   |  **255** | Email of the tutor                                                                                                              |
| tutor_mobile_phone    |  Optionnel   |  **255** | Mobile phone number of the tutor, [in international format](types.html).                                                        |
| tutor_home_phone      |  Optionnel   |  **255** | Home phone number of the tutor, [in international format](types.html).                                                          |
| tutor_work_phone      |  Optionnel   |  **255** | Work phone number of the tutor, [in international format](types.html).                                                          |
| tutor_dateofbirth     |  Optionnel   |   -  | Birthdate of the tutor in format [YYYYMMDD](types.html#Dates).                                                                  |
| tutor_address_1       |  Optionnel   |   -  | Address of the tutor.                                                                                                           |
| tutor_address_2       |  Optionnel   |   -  | Additional address of the tutor.                                                                                                |
| tutor_address_3       |  Optionnel   |   -  | Additional address of the tutor.                                                                                                |
| tutor_address_zipcode |  Optionnel   |   -  | Zipcode of the tutor.                                                                                                           |
| tutor_address_city    |  Optionnel   |   -  | City of the tutor.                                                                                                              |
| tutor_address_country |  Optionnel   |   -  | Country of the tutor.                                                                                                           |

## Example :
```
tutor_id,passenger_id,tutor_firstname,tutor_lastname,tutor_gender_title,tutor_parent_link,tutor_email,tutor_mobile_phone,tutor_home_phone,tutor_work_phone,tutor_dateofbirth,tutor_address_1,tutor_address_2,tutor_address_3,tutor_address_zipcode,tutor_address_city,tutor_address_country
T1,P1,Paul,Doe,M,2,paul.doe@gmail.com,+33600000000,,,19600601,36 rue du pont,,,71000,Mâcon,France
```
