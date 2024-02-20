---
currentMenu: passenger_organizations.txt
---

# passenger_organizations.txt

Ce fichier contient les associations entre les Autorités Organisatrices (AO) et les usagers ([passengers.txt](passengers.txt.html)).

## Description des colonnes

| Nom du champ    |  Obligatoire     | Longueur max | Description                                                                                                   |
|-----------------|:----------------:|--------------|---------------------------------------------------------------------------------------------------------------|
| passenger_id    | **Obligatoire** | -            | Identifiant de l'usager référencé. Ce champ est défini dans le fichier [passengers.txt](passengers.txt.html). |
| organization_id | **Obligatoire** | 256          | Identifiant de l'AO.                                                                                          |

## Exemple : 

```
passenger_id,organization_id
P1,ORGA1
P2,ORGA2
P2,ORGA1
```
