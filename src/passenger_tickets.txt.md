---
currentMenu: passenger_tickets.txt
---

# passenger_tickets.txt

Ce fichier définit les titres de transport attribués aux usagers déclarés dans le fichier [passengers.txt](passengers.txt.html). La notion comptable peut être saisie dans un fichier d'extension [passenger_tickets.ext.txt](passenger_tickets.ext.txt.html).

## Description des colonnes

| Nom du champ            |  Obligatoire    |  Description |
|-------------------------|:---------------:|--------------|
| ticket_id               | **Obligatoire** | Identifiant unique du titre de transport. |
| passenger_id            | **Obligatoire** | Identifiant de l'usager référencé. |
| fare_id                 |  Optionnel      | Identifiant du tarif lié à ce titre de transport. |
| ticket_start_on         |  Optionnel      | Date de début de validité du titre au format [YYYYMMDDhhmmss](types.html#Dates). |
| ticket_end_on           |  Optionnel      | Date de fin de validité du titre au format [YYYYMMDDhhmmss](types.html#Dates). |
| restrictions            |  Optionnel      | Restrictions d'usage du titre, pour la montée, dans l'espace et le temps, au [format JSON](types.html#JSON) |
| unboarding_restrictions |  Optionnel      | Restrictions d'usage du titre, pour la descente, dans l'espace et le temps, au [format JSON](types.html#JSON) |

## Exemple :
```
ticket_id,passenger_id,fare_id,ticket_start_on,ticket_end_on,restrictions
T0000001,P1,TU1,20160101000000,20160131235959,"[{""line"":{""is"":[""LA"",""LB"",""LC""]}}]"
```

## Fonctionnement des restrictions

Si les champs `restrictions` et/ou `unboarding_restrictions` sont remplis, les valeurs définies remplaceront les restrictions mises en place sur le tarif.  

Il est possible de restreindre les tickets sur un ou plusieurs critères :

- `network` Un réseau de transport (ex: Sur le réseau Scolaire)
- `line` Une ligne (ex: Sur la ligne A ou B)
- `trip` Une course (ex: Sur la course 107-03A9)
- `stoparea` Un arrêt commercial (ex: A l'arrêt "Gare SNCF")
- `stoppoint` Un arrêt physique (ex: A l'arrêt "Gare SNCF" sens Aller)
- `zone` Une zone tarifaire (ex: Dans la zone tarif "A")
- `weekday` Un jour de semaine (ex: Du lundi a vendredi)
- `time` Une plage horaire (ex: Entre 12h et 14h)
- `calendar` Un calendrier (ex: En période de vacance scolaire)

Les restrictions d'utilisation de tickets sont gérées au [format JSON](types.html#JSON).

Une **restriction** est un tableau JSON d'une ou plusieurs règles : `[REGLE_A, REGLE_B]`
L'utilisation du ticket est autorisé si au moins une des règles est valide.

Une **règle** est un objet JSON d'un ou plusieurs critères cités ci-dessus : `{CRITERE_A:CONDITION_A, CRITERE_B:CONDITION_B}`
La condition est également un objet du type `{"is":[REFERENCE_A, REFERENCE_B]}` ou `{"isnot":[REFERENCE_A, REFERENCE_B]}`.

### Exemples de JSON de restrictions

Note : Pour une raison de lisibilité ces exemples au format JSON ne sont pas échappés (voir ci-dessus)

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
