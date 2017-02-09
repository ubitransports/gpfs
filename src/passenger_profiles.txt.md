---
currentMenu: passenger_profiles.txt
---

# passenger_profiles.txt

Ce fichier contient les associations entre les profils ([profiles.txt](profiles.txt.html)) et les usagers ([passengers.txt](passengers.txt.html)).

## Description des colonnes

| Nom du champ      |  Obligatoire    |  Description |
|-----------------|:-----------:|----------|
| passenger_id    |**Obligatoire** | Le champ passenger_id est un identifiant unique qui identifie l'usager. |
| profil_id       |**Obligatoire** | Le champ profil_id est le nom du profil associé à l'usager. |
| profil_start_on |  Optionnel   | Le champ start_on est la date de prise d'effet au format YYYYMMDD. |
| profil_end_on   |  Optionnel   | Le champ start_on est la date d'expiration au format YYYYMMDD. |

##Exemple : 

```
passenger_id,profil_id,profil_start_on,profil_end_on
P1,1,20160101,20161231
P2,1,20160101,20160331
```
