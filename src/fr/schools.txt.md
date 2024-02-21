---
currentMenu: reference
---

# schools.txt

Ce fichier contient les informations concernant les établissements scolaires.

## Description des colonnes

| Nom du champ          |  Obligatoire    |  Description |
|------------------------|:------------:|----------|
| school_id              | **Obligatoire** |  Identifiant unique de l'établissement scolaire. |
| school_name            | **Obligatoire** |  Nom de l'établissement scolaire. |
| school_shortname       | **Obligatoire** |  Nom court de l'établissement scolaire. |
| school_address_1       | Optionnel     |  Adresse de l'établissement scolaire. |
| school_address_2       | Optionnel     |  Complément d'adresse de l'établissement scolaire. |
| school_address_3       | Optionnel     |  Complément d'adresse de l'établissement scolaire. |
| school_address_zipcode | Optionnel     |  Code postal de l'établissement scolaire. |
| school_address_city    | Optionnel     |  Ville de l'établissement scolaire. |
| school_address_country | Optionnel     |  Pays de l'établissement scolaire. |
| school_email           | Optionnel     |  Adresse e-mail de l'établissement scolaire. |
| school_lat             | Optionnel     |  Latitude de l'établissement. Doit être renseignée avec le [système géodésique WGS 84](https://fr.wikipedia.org/wiki/WGS_84). |
| school_lon             | Optionnel     |  Longitude de l'établissement. Doit être renseignée avec le [système géodésique WGS 84](https://fr.wikipedia.org/wiki/WGS_84). |
| school_open_on         | Optionnel     |  Jours d'ouverture hebdomadaire de l'établissement au format binaire sur 7 caractères. Voir exemples ci-dessous. |

### Champ `school_open_on` et format binaire

Le champ `school_open_on` doit être exprimé sur 7 caractères correspondant aux 7 jours de la semaine et prenant la valeur 0 ou 1.

Par exemple :
* ouverture du lundi au vendredi : `1111100`
* ouverture lundi-mardi-jeudi-vendredi : `1101100`.

Par défaut tous les jours sont inactifs (`0000000`)

## Exemple
```
school_id,school_name,school_shortname,school_address_1,school_address_2,school_address_3,school_address_zipcode,school_address_city,school_address_country,school_email,school_lat,school_lon,school_open_on
SCHOOL1,Lycée PSS,PSS,1 rue de la mairie,,,71000,Mâcon,France,lycee.pss@gmail.com,4.8313,46.3062,1111100
```
