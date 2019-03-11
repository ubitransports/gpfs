---
currentMenu: calendar_dates.txt
---

# calendar_dates.txt

Ce fichier contient les informations concernant les dates à inclure ou exclure d'un calendrier défini dans le fichier [calendars.txt](calendars.txt.html).

## Description des colonnes

| Nom du champ              |  Obligatoire    |  Description |
|---------------------------|:---------------:|--------------|
| date_id                   | **Obligatoire** |  Identifiant unique de la date à inclure ou exclure d'un calendrier.|
| calendar_id               | **Obligatoire** |  Identifiant du calendrier concerné.|
| date                      | **Obligatoire** |  Date à inclure ou exclure, au format [YYYYMMDD](types.html#Dates). |
| exception_type            | **Obligatoire** |  Indique l'inclusion ou l'exclusion. Valeurs acceptées  :  1 = inclus ; 2 = exclu.|


##Exemple :

```
date_id,calendar_id,date,exception_type
D1,C1,20170101,1
D2,C2,20170101,2
```
