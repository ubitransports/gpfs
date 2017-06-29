---
currentMenu: calendar_dates.txt
---

# calendar_dates.txt

Ce fichier contient les informations concernant les dates à inclure ou exclure d'un calendrier défini dans le fichier [calendars.txt](calendars.txt.html).

## Description des colonnes

| Nom du champ              |  Obligatoire    |  Description |
|---------------------------|:---------------:|--------------|
| date_id                   | **Obligatoire** | Le champ date_id est un identifiant unique qui identifie une date à inclure ou exclure d'un calendrier.|
| calendar_id               | **Obligatoire** | Le champ calendar_id est un identifiant unique qui identifie un calendrier.|
| date                      | **Obligatoire** | Le champ date définit la date au format YYYYMMDD. |
| exception_type            | **Obligatoire** | Le champ exception_type si la date doit être incluse ou exclue au calendrier lié. Les valeurs valides pour ce champ sont  :  1 = inclus et 2 = exclu.|


##Exemple : 

```
date_id,calendar_id,date,exception_type
D1,C1,20170101,1
D2,C2,20170101,2
```
