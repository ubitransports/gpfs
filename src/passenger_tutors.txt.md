---
currentMenu: passenger_tutors.txt
---

# passenger_tutors.txt

Ce fichier contient les informations concernant les responsables légaux des usagers définis dans le fichier [passengers.txt](passengers.txt.html).

## Description des colonnes

| Nom du champ          |  Obligatoire    |  Description |
|-----------------------|:-----------:|----------|
| tutor_id              |  **Obligatoire**   | Le champ tutor_id est un identifiant unique du responsable légal. |
| passenger_id          |  **Obligatoire**   | Le champ passenger_id est un identifiant unique de l'usager associé à ce responsable légal. |
| tutor_firstname       |  **Obligatoire**   | Le champ firstname est le prénom du responsable légal. |
| tutor_lastname        |  **Obligatoire**   | Le champ lastname est le nom du responsable légal. |
| tutor_gender_title    |  Optionnel   | Le champ tutor_gender_title contient le titre du responsable légal (Exemple : Mme, Mlle, M.)|
| tutor_parent_link     |  Optionnel   | Le champ parent_link est le lien de parenté entre l'usager et le responsable légal. Les valeurs valides pour ce champ sont  :  0 = non communiqué, 1 = mère, 2 = père, 3 = responsable légal.|
| tutor_email           |  Optionnel   | Le champ email est l'adresse mail de contact du responsable légal.|
| tutor_mobile_phone    |  Optionnel   | Le champ email est le numéro de téléphone portable du responsable légal. Ce numéro de téléphone doit être au format international. Par exemple +33600000000.|
| tutor_home_phone      |  Optionnel   | Le champ email est le numéro de téléphone du domicile du responsable légal. Ce numéro de téléphone doit être au format international. Par exemple +33400000000.|
| tutor_work_phone      |  Optionnel   | Le champ email est le numéro de téléphone du travail du responsable légal. Ce numéro de téléphone doit être au format international. Par exemple +33400000000.|
| tutor_dateofbirth     |  Optionnel   | Le champ dateofbirth est la date de naissance du responsable légal au format YYYYMMDD|
| tutor_address_1       |  Optionnel   | Le champ tutor_adress_1 est l'adresse du responsable légal|
| tutor_address_2       |  Optionnel   | Le champ tutor_adress_2 est un complément de l'adresse du responsable légal|
| tutor_address_3       |  Optionnel   | Le champ tutor_adress_3 est un complément de l'adresse du responsable légal |
| tutor_address_zipcode |  Optionnel   | Le champ tutor_adress_zipcode est le code postal du responsable légal |
| tutor_address_city    |  Optionnel   | Le champ address_city est la ville d'habitation du responsable légal |
| tutor_address_country |  Optionnel   | Le champ address_country est le pays d'habitation du responsable légal |

## Exemple :
```
tutor_id,passenger_id,tutor_firstname,tutor_lastname,tutor_gender_title,tutor_parent_link,tutor_email,tutor_mobile_phone,tutor_home_phone,tutor_work_phone,tutor_dateofbirth,tutor_address_1,tutor_address_2,tutor_address_3,tutor_address_zipcode,tutor_address_city,tutor_address_country
T1,P1,Paul,Doe,M,2,paul.doe@gmail.com,+33600000000,,,19600601,36 rue du pont,,,71000,Mâcon,France
```
