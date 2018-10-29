---
currentMenu: passenger_tickets.txt
---

# passenger_tickets.txt

Ce fichier définit les titres de transport attribués aux usagers définis dans le fichier [passengers.txt](passengers.txt.html). La notion comptable peut être saisie dans un fichier d'extension [passenger_tickets.ext.txt](passenger_tickets.ext.txt.html).

## Description des colonnes

| Nom du champ      |  Obligatoire    |  Description |
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
T0000001,P1,TU1,20160101000000,20160131235959,[{"line":{"is":["LA","LB","LC"]}}]
```

## Gestion des restrictions

Il est possible de restreindre les tickets sur un ou plusieurs critères :

- `network` Un réseau de transport (ex: Sur le réseau Scolaire)
- `line` Une ligne (ex: Sur la ligne A ou B)
- `trip` Une course (ex: Sur la course 10703)
- `stoparea` Un arrêt commercial (ex: A l'arrêt "Gare SNCF")
- `stoppoint` Un arrêt physique (ex: A l'arrêt "Gare SNCF" sens Aller)
- `zone` Une zone tarifaire (ex: Dans la zone tarif "A")
- `weekday` Un jour de semaine (ex: Du lundi a vendredi)
- `time` Une plage horaire (ex: Entre 12h et 14h)
- `calendar` Un calendrier (ex: En période de vacance scolaire)

Les restrictions d'utilisation de tickets sont gérer au format JSON.

Une **restriction** est un tableau JSON d'une ou plusieurs règles : `[REGLE_A, REGLE_B]`
L'utilisation du ticket est autorisé si au moins une des règles est valide.

Une **règle** est un objet JSON d'un ou plusieurs critères cités ci-dessus : `{CRITERE_A:CONDITION_A, CRITERE_B:CONDITION_B}`
La condition est également un objet du type `{"is":[REFERENCE_A, REFERENCE_B]}` ou `{"isnot":[REFERENCE_A, REFERENCE_B]}`.
Les références correspondents gaux références Réf. Ext (colonne trip_id du GTFS par exemple) et non au nom ou nom court de l'objet.

### Exemples de restrictions

Utilisable sur la ligne LA ou LB ou LC :
```
[{"line":{"is":["LA","LB","LC"]}}
```

Utilisable uniquement en période de vacance scolaire (ref: CAL_SCOLAIRE)
```
[{"calendar":{"is":["CAL_SCOLAIRE"]}}]
```

Utilisable sur le réseau scolaire (ref: RESEAU_SCOLAIRE) :
```
[{"network":{"is":["RESEAU_SCOLAIRE"]}}]
```

Utilisable sur le réseau scolaire la semaine et sur le réseau urbain le weekend
```
[{"network":{"is":["RESEAU_SCOLAIRE"]}, "weekday": {"is":["1111100"]}},{"network":{"is":["RESEAU_URBAIN"]}, "weekday": {"is":["0000011"]}}]
```

Utilisable sur la ligne LA ou LB ou LC :
```
[{"line":{"is":["LA","LB","LC"]}}
```

Utilisable partout sauf sur ligne TAD:
```
[{"line":{"isnot":["TAD"]}}
```
