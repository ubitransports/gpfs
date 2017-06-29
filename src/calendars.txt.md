---
currentMenu: calendars.txt
---

# calendars.txt

Ce fichier contient les informations concernant les calendriers de fonctionnement

## Description des colonnes

| Nom du champ              |  Obligatoire    |  Description |
|---------------------------|:---------------:|--------------|
| calendar_id               | **Obligatoire** | Le champ calendar_id est un identifiant unique qui identifie un calendrier.|
| period_start              | **Obligatoire** | Le champ period_start défini la date de début de validité de la réservation au format YYYYMMDD. |
| period_end                | **Obligatoire** | Le champ period_end définit la date de fin de validité de la réservation au format YYYYMMDD. |
| days                      | optionnel       | Le champ days définit les jours de fonctionnement de la réservation au format numérique. Par exemple pour une réservation active que le ou les mercredis : 0010000 ou que les week-ends : 0000011. Par défaut tous les jours sont actifs (1111111) |

##Exemple : 

```
calendar_id,period_start,period_end,days
C1,20170101,20170102,0000001
C2,20170101,20170112,1111100
```
