---
currentMenu: reference
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
| passenger_gender_title    |  Optionnel       |  **30**  |  Civilité de l'usager. Il peut s'agir de n'importe quel texte (exemple : Mme, Mlle, M...). |
| passenger_dateofbirth     |  Optionnel       |   -  |  Date de naissance de l'usager au format [YYYYMMDD](types.html#Dates) |
| passenger_gender          |  Optionnel       |   -  |  Sexe de l'usager.  Valeurs acceptées :  0 = Non communiqué, 1 = homme, 2 = femme |
| passenger_email           |  Optionnel       |  **255** |  Adresse email de contact de l'usager |
| passenger_mobile_phone    |  Optionnel       |  **255** |  Numéro de téléphone portable de l'usager, [au format international](types.html) |
| passenger_home_phone      |  Optionnel       |  **255** |  Numéro de téléphone du domicile de l'usager, [au format international](types.html) |
| passenger_address_1       |  Optionnel       |  **255** |  Adresse postale de l'usager |
| passenger_address_2       |  Optionnel       |  **255** |  Complément d'adresse postale |
| passenger_address_3       |  Optionnel       |  **255** |  Complément d'adresse postale |
| passenger_address_zipcode |  Optionnel       |  **255** |  Code postal de l'usager |
| passenger_address_city    |  Optionnel       |  **255** |  Ville d'habitation de l'usager |
| passenger_address_country |  Optionnel       |  **255** |  Pays d'habitation de l'usager |
| passenger_picture_name    |  Optionnel       |   -  |  Nom de l'image à associer au profil de l'usager avec son extension. Exemple: `1235235.jpg` |
| passenger_anonymous       |  Optionnel       |   -  |  true ou false. Si true, les champs firstname, lastname, email, address, date of birth ne sont pas obligatoires. Si false, les champs firstname, lastname, date of birth sont obligatoires. Si vide ou inexistant, alors false est la valeur par défaut |
| additional_data           |  Optionnel       |   -  |  Données complémentaires liées à l'usager, au [format JSON](types.html#JSON)  |

### Prise en charge des images

Les images seront à placer dans un dossier `pictures` à la racine de l'archive, c'est-à-dire au même niveau que les fichiers .txt

### Exemple de JSON de additional_data

Le champ additional_data peut contenir **plusieurs combinaisons de clé/valeur**.
Le contenu de la cle et de la valeur doit être une chaine de **caractères alphanumériques**.
```
"{""cle1"":""valeur1"",""cle2"":""valeur2"",""cle3"":""valeur3""}"
```

## Exemple :
```
passenger_id,passenger_file_number,passenger_firstname,passenger_lastname,passenger_gender_title,passenger_dateofbirth,passenger_gender,passenger_email,passenger_mobile_phone,passenger_home_phone,passenger_address_1,passenger_address_2,passenger_address_3,passenger_address_zipcode,passenger_address_city,passenger_address_country,passenger_picture_name,passenger_anonymous,additional_data
P1,P0000001,John,Doe,M,19900331,1,john.doe@gmail.com,,,200 Bd de la resistance,,,71000,Mâcon,France,"",false,"{""cle1"":""valeur1"",""cle2"":""valeur2"",""cle3"":""valeur3""}"
```
