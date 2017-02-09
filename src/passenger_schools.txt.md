---
currentMenu: passenger_schools.txt
---

# passenger_schools.txt

Ce fichier contient les associations entre les établissements scolaires ([schools.txt](schools.txt.html)) et les usagers ([passengers.txt](passengers.txt.html)).

## Description des colonnes

| Nom du champ      |  Obligatoire    |  Description |
|-----------------|:------------:|----------|
| passenger_id    | **Obligatoire** | Le champ passenger_id est un identifiant unique qui identifie l'usager. |
| school_id       | **Obligatoire** | Le champ school_id est un identifiant unique de l'établissement scolaire.  |
| internship_type | **Obligatoire** | Le champ internship_type est le régime de l'usager. Les valeurs valides pour ce champ sont :  0 = Non communiqué, 1 = interne, 2 = demi-pensionnaire, 3 = externe |
| class_level     | **Obligatoire** | Le champ class_level est le nom de la classe ou niveau de l'usager. Exemple : Terminal  |

##Exemple : 

```
passenger_id,school_id,internship_type,class_level
P1,SCHOOL1,2,Terminal
P2,SCHOOL2,2,Seconde
```
