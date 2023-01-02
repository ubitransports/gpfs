---
currentMenu: passenger_organizations.txt
---

# passenger_schools.txt

Ce fichier contient les associations entre les autorités organisatrices (AO2) et les usagers ([passengers.txt](passengers.txt.html)).

## Description des colonnes

| Nom du champ    |  Obligatoire     | Longueur max | Description                        |
|-----------------|:----------------:|--------------|------------------------------------|
| passenger_id    | **Obligatoire** | -            | Identifiant de l'usager référencé. |
| organization_id | **Obligatoire** | 256          | Identifiant de l'AO2.              |

## Exemple : 

```
passenger_id,organization_id
P1,ORGA1
P2,ORGA2
P2,ORGA1
```
