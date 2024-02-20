---
currentMenu: passenger_schools.txt
---

# passenger_schools.txt

Ce fichier contient les associations entre les établissements scolaires ([schools.txt](schools.txt.html)) et les usagers ([passengers.txt](passengers.txt.html)).

## Description des colonnes

| Nom du champ             |  Obligatoire     |  Longueur max |  Description |
|---------------------------|:----------------:|------|--------------|
| passenger_id    | **Obligatoire** |   -  | Identifiant de l'usager référencé. |
| school_id       | **Obligatoire** |   -  | Identifiant de l'établissement scolaire référencé.  |
| internship_type | **Obligatoire** |   -  | Régime de l'usager. Valeurs acceptées :  0 = Non communiqué, 1 = interne, 2 = demi-pensionnaire, 3 = externe |
| class_level     | **Obligatoire** |  **255** | Nom de la classe ou niveau de l'usager.  |

## Exemple : 

```
passenger_id,school_id,internship_type,class_level
P1,SCHOOL1,2,Terminale ES
P2,SCHOOL2,2,Seconde B
```
