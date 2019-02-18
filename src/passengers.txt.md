---
currentMenu: passengers.txt
---

# passengers.txt

**/!\ Ce fichier est obligatoire.**

Ce fichier contient les informations concernant les usagers pouvant utiliser le réseau de transport.

## Description des colonnes

| Nom du champ             |  Obligatoire     |  Longueur max |  Description |
|---------------------------|:----------------:|------|--------------|
| passenger_id              |  **Obligatoire** |   -  |  Identifiant unique qui identifie l'usager. |
| passenger_file_number     |  **Obligatoire** |  **255** |  Numéro de dossier de l'usager. |
| passenger_firstname       |  **Obligatoire** |  **255** |  Prénom de l'usager |
| passenger_lastname        |  **Obligatoire** |  **255** |  Nom de l'usager |
| passenger_gender_title    |  Optionnel       |  **30**  |  Civilité de l'usager. Il peut contenir n'importe quel texte. |
| passenger_dateofbirth     |  Optionnel       |   -  |  Date de naissance de l'usager au format YYYYMMDD (Ex: 19880722) |
| passenger_gender          |  Optionnel       |   -  |  Sexe de l'usager.  Valeurs acceptées :  0 = Non communiqué, 1 = homme, 2 = femme |
| passenger_email           |  Optionnel       |  **255** |  Adresse email de contact de l'usager |
| passenger_mobile_phone    |  Optionnel       |  **255** |  Numéro de téléphone portable de l'usager, au format international (Ex: +33600000000) |
| passenger_home_phone      |  Optionnel       |  **255** |  Numéro de téléphone du domicile de l'usager, au format international (Ex: +33400000000) |
| passenger_address_1       |  Optionnel       |  **255** |  Adresse postale de l'usager |
| passenger_address_2       |  Optionnel       |  **255** |  Complément d'adresse postale |
| passenger_address_3       |  Optionnel       |  **255** |  Complément d'adresse postale |
| passenger_address_zipcode |  Optionnel       |  **255** |  Code postal de l'usager |
| passenger_address_city    |  Optionnel       |  **255** |  Ville d'habitation de l'usager |
| passenger_address_country |  Optionnel       |  **255** |  Pays d'habitation de l'usager |
| passenger_picture_name    |  Optionnel       |   -  |  Nom de l'image à associer au profil de l'usager avec son extension. Les images seront à placer dans un dossier "pictures" au même niveau que les fichiers .txt | 


## Exemple :
```
passenger_id,passenger_file_number,passenger_firstname,passenger_lastname,passenger_gender_title,passenger_dateofbirth,passenger_gender,passenger_email,passenger_mobile_phone,passenger_home_phone,passenger_address_1,passenger_address_2,passenger_address_3,passenger_address_zipcode,passenger_address_city,passenger_address_country,passenger_picture_name
P1,P0000001,John,Doe,M,19900331,1,john.doe@gmail.com,,,200 Bd de la resistance,,71000,Mâcon,France,
```
