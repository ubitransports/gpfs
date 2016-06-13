# passengers.txt

## Fields description 

| Field Name                |  Required   |  Details |
|---------------------------|:-----------:|----------|
| passenger_id              |  **Required** |  Le champ passenger_id est un identifiant unique qui identifie l'usager.
| passenger_file_number     |  **Required** |  Le champ file_number est le numéro de dossier de l'usager.
| passenger_firstname       |  **Required** |  Le champ firstname est le prénom de l'usager
| passenger_lastname        |  **Required** |  Le champ lastname est le nom de l'usager
| passenger_gender_title    |  Optional     |  Le champ passenger_gender_title contient le titre de l'usager (Exemple : Mme, Mlle, M.)
| passenger_dateofbirth     |  Optional     |  Le champ dateofbirth est la date de naissance de l'usager au format YYYYMMDD
| passenger_gender          |  Optional     |  Le champ gender spécifie le sexe de l'usager. Les valeurs valides pour ce champ sont :  0 = Non communiqué, 1 = homme, 2 = femme, 9 = non applicable
| passenger_email           |  Optional     |  Le champ email est l'adresse mail de contact de l'usager
| passenger_mobile_phone    |  Optional     |  Le champ email est le numéro de téléphone portable de l'usager. Ce numéro de téléphone doit être au format international. Par exemple +33600000000.
| passenger_home_phone      |  Optional     |  Le champ email est le numéro de téléphone du domicile de l'usager. Ce numéro de téléphone doit être au format international. Par exemple +33400000000.
| passenger_address_1       |  Optional     |  Le champ adress_1 est l'adresse de l'usager
| passenger_address_2       |  Optional     |  Le champ adress_2 est un complément de l'adresse de l'usager
| passenger_address_3       |  Optional     |  Le champ adress_3 est un complément de l'adresse de l'usager
| passenger_address_zipcode |  Optional     |  Le champ adress_zipcode est le code postal de l'usager
| passenger_address_city    |  Optional     |  Le champ address_city est la ville d'habitation de l'usager
| passenger_address_country |  Optional     |  Le champ address_country est le pays d'habitation de l'usager
| passenger_picture_name    |  Optional     |  Le champ picture_name est le nom de l'image à associé au profil de l'usager avec son extention. Les images seront à placer dans un dossier "pictures" à coté des fichiers .txt


## Example : 
```
passenger_id,passenger_file_number,passenger_firstname,passenger_lastname,passenger_gender_title,passenger_dateofbirth,passenger_gender,passenger_email,passenger_mobile_phone,passenger_home_phone,passenger_address_1,passenger_address_2,passenger_address_3,passenger_address_zipcode,passenger_address_city,passenger_address_country,passenger_picture_name
P1,P0000001,John,Doe,M,19900331,1,john.doe@gmail.com,,,200 Bd de la resistance,,71000,Mâcon,France,
```
