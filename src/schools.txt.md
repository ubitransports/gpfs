---
currentMenu: schools.txt
---

# schools.txt

Ce fichier contient les informations concernant les établissements scolaires.

## Description des colonnes

| Nom du champ          |  Obligatoire    |  Description |
|------------------------|:------------:|----------|
| school_id              | **Obligatoire** |  Le champ school_id est un identifiant unique de l'établissement scolaire. |
| school_name            | **Obligatoire** |  Le champ name est le nom de l'établissement scolaire. |
| school_shortname       | **Obligatoire** |  Le champ shortname est le nom court de l'établissement scolaire. |
| school_address_1       | Optionnel     |  Le champ school_adress_1 est l'adresse de l'établissement scolaire. |
| school_address_2       | Optionnel     |  Le champ school_adress_2 est un complément de l'adresse de l'établissement scolaire. |
| school_address_3       | Optionnel     |  Le champ school_adress_3 est un complément de l'adresse de l'établissement scolaire. |
| school_address_zipcode | Optionnel     |  Le champ school_adress_zipcode est le code postal de l'établissement scolaire. |
| school_address_city    | Optionnel     |  Le champ address_city est la ville de l'établissement de l'établissement scolaire. |
| school_address_country | Optionnel     |  Le champ address_country est le pays de l'établissement de l'établissement scolaire. |
| school_email           | Optionnel     |  Le champ email est l'adresse email de contact de l'établissement de l'établissement scolaire. |
| school_lat             | Optionnel     |  Le champ school_lat permet de positionner l'établissement grâce à une position GPS. La latitude GPS doit être renseignée avec le système géodésique WGS 84 (https://fr.wikipedia.org/wiki/WGS_84). |
| school_lon             | Optionnel     |  Le champ school_lon permet de positionner l'établissement grâce à une position GPS. La longitude GPS doit être renseignée avec le système géodésique WGS 84 (https://fr.wikipedia.org/wiki/WGS_84) |
| school_open_on         | Optionnel     |  Le champ open_on permet de définir les jours de la semaine où l'établissement est ouvert. Les valeurs valides pour chaque jour sont :  0 = Non et 1 = Oui.  Exemples : ouvert tous les jours de la semaine : 1111111, ouvert du lundi au vendredi : 1111100. |

## Exemple
```
school_id,school_name,school_shortname,school_address_1,school_address_2,school_address_3,school_address_zipcode,school_address_city,school_address_country,school_email,school_lat,school_lon,school_open_on
SCHOOL1,Lycée PSS,PSS,1 rue de la mairie,,,71000,Mâcon,France,lycee.pss@gmail.com,4.8313,46.3062,1111100
```
