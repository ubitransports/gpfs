---
currentMenu: passenger_tutors.txt
---

# passenger_tutors.txt

Ce fichier contient les informations concernant les responsables légaux des usagers définis dans le fichier [passengers.txt](passengers.txt.html).

## Description des colonnes

| Nom du champ             |  Obligatoire     |  Longueur max |  Description |
|---------------------------|:----------------:|------|--------------|
| tutor_id              |  **Obligatoire**   |   -  | Identifiant unique du responsable légal. |
| passenger_id          |  **Obligatoire**   |   -  | Identifiant de l'usager associé à ce responsable légal. |
| tutor_firstname       |  **Obligatoire**   |  **255** | Prénom du responsable légal. |
| tutor_lastname        |  **Obligatoire**   |  **255** | Nom du responsable légal. |
| tutor_gender_title    |  Optionnel   |  **30**  | Titre du responsable légal ; Champ libre (Exemple : Mme, Mlle, M.).|
| tutor_parent_link     |  Optionnel   |   -  | Lien de parenté entre l'usager et le responsable légal. Valeurs acceptées :  0 = non communiqué, 1 = mère, 2 = père, 3 = responsable légal.|
| tutor_email           |  Optionnel   |  **255** | Adresse e-mail du responsable légal.|
| tutor_mobile_phone    |  Optionnel   |  **255** | Numéro de téléphone portable du responsable légal, [au format international](types.html).|
| tutor_home_phone      |  Optionnel   |  **255** | Numéro de téléphone du domicile du responsable légal, [au format international](types.html).|
| tutor_work_phone      |  Optionnel   |  **255** | Numéro de téléphone du travail du responsable légal, [au format international](types.html).|
| tutor_dateofbirth     |  Optionnel   |   -  | Date de naissance du responsable légal au format [YYYYMMDD](types.html#Dates). |
| tutor_address_1       |  Optionnel   |   -  | Adresse du responsable légal. |
| tutor_address_2       |  Optionnel   |   -  | Complément d'adresse du responsable légal. |
| tutor_address_3       |  Optionnel   |   -  | Complément d'adresse du responsable légal. |
| tutor_address_zipcode |  Optionnel   |   -  | Code postal du responsable légal. |
| tutor_address_city    |  Optionnel   |   -  | Ville d'habitation du responsable légal. |
| tutor_address_country |  Optionnel   |   -  | Pays d'habitation du responsable légal. |

## Exemple :
```
tutor_id,passenger_id,tutor_firstname,tutor_lastname,tutor_gender_title,tutor_parent_link,tutor_email,tutor_mobile_phone,tutor_home_phone,tutor_work_phone,tutor_dateofbirth,tutor_address_1,tutor_address_2,tutor_address_3,tutor_address_zipcode,tutor_address_city,tutor_address_country
T1,P1,Paul,Doe,M,2,paul.doe@gmail.com,+33600000000,,,19600601,36 rue du pont,,,71000,Mâcon,France
```
