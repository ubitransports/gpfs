---
currentMenu: reference
---

# passenger_profiles.txt

Ce fichier contient les associations entre les profils ([profiles.txt](profiles.txt.html)) et les usagers ([passengers.txt](passengers.txt.html)).

## Description des colonnes

| Nom du champ      |  Obligatoire    |  Description |
|-----------------|:-----------:|----------|
| passenger_id    |**Obligatoire** | Identifiant unique de l'usager. |
| profil_id       |**Obligatoire** | Nom du profil associé à l'usager. |
| profil_start_on |  Optionnel   | Date de prise d'effet au format [YYYYMMDD](types.html#Dates). |
| profil_end_on   |  Optionnel   | Date d'expiration au format [YYYYMMDD](types.html#Dates). |

## Exemple : 

```
passenger_id,profil_id,profil_start_on,profil_end_on
P1,1,20160101,20161231
P2,1,20160101,20160331
```
