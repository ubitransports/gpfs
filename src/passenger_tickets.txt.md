---
currentMenu: passenger_tickets.txt
---

# passenger_tickets.txt

Ce fichier défini les titres de transport attribués aux usagers définis dans le fichier [passengers.txt](passengers.txt.html). La notion comptable peut-être défini dans un fichier d'extension [passenger_tickets.ext.txt](passenger_tickets.ext.txt.html).

## Description des colonnes

| Nom du champs      |  Obligatoire    |  Description |
|-----------------|:------------:|----------|
| ticket_id       | **Obligatoire** | Le champ ticket_id est un identifiant unique qui identifie le titre de transport. |
| passenger_id    | **Obligatoire** | Le champ passenger_id est un identifiant unique qui identifie l'usager. |
| fare_id         |  Optionnel    | Le champ fare_id est un identifiant unique qui identifie un tarif.  |
| ticket_start_on |  Optionnel    | Le champ ticket_start_on est la date début de validité du titre au format YYYYMMDDHHMMSS.  |
| ticket_end_on   |  Optionnel    | Le champ ticket_end_on est la date fin de validité du titre au format YYYYMMDDHHMMSS.  |
| restrictions    |  Optionnel    | Le champ restrictions permet de définir les restrictions dans l'espace et le temps au format JSON  |

## Exemple : 
```
ticket_id,passenger_id,fare_id,ticket_start_on,ticket_end_on,restrictions
T0000001,P1,TU1,20160101000000,20160131235959,{"line":[1,2,3]}
```
