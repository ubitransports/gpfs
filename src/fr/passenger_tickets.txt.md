---
currentMenu: reference
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

- `network` : Un réseau de transport (ex: Sur le réseau Scolaire)
- `line` : Une ligne (ex: Sur la ligne A ou B)
- `trip` : Une course (ex: Sur la course 107-03A9)
- `stoparea` : Un arrêt commercial (ex: A l'arrêt "Gare SNCF")
- `stoppoint` : Un arrêt physique (ex: A l'arrêt "Gare SNCF" sens Aller)
- `zone` : Une zone tarifaire (ex: Dans la zone tarif "A")
- `weekday` : Un jour de semaine (ex: Du lundi au vendredi)
- `time` : Une plage horaire (ex: Entre 12h et 14h)
- `calendar` : Un calendrier (ex: En période de vacances scolaires)
- `company` : Un transporteur / opérateur
- `vehicleType` : Un type de véhicule (ex: Pour le type "Tramway")
- `od` : Une restriction d'Origine / Destination (voir détails ci-dessous)

Les restrictions d'utilisation de tickets sont gérées au [format JSON](types.html#JSON).

Une **restriction** est un tableau JSON d'une ou plusieurs règles : `[REGLE_A, REGLE_B]`
L'utilisation du ticket est autorisée si au moins une des règles est valide.

Une **règle** est un objet JSON d'un ou plusieurs critères cités ci-dessus : `{CRITERE_A:CONDITION_A, CRITERE_B:CONDITION_B}`
Chaque critère est un objet contenant :
- `is` : une référence unique ou une liste de références d'objets autorisés (ou une valeur spécifique selon le critère).
- `isnot` : une référence unique ou une liste de références d'objets interdits (ou une valeur spécifique selon le critère).
- `ignoreIfMissing` (optionnel) : un booléen indiquant s'il faut ignorer cette règle si l'information est absente du contexte de validation/vente.

*Note : Les références utilisées correspondent aux valeurs `ext_ref` des objets et non à leurs identifiants de base de données.*

### Spécificités de certains critères

- **time** : La valeur est un objet de plage horaire de type `"is":{"from": "10:00:00", "to":"18:00:00"}`
- **weekday** : La valeur est une chaîne de 7 caractères binaires `[0-1]` représentant les jours de la semaine (du lundi au dimanche), par exemple `"1111100"` pour du lundi au vendredi.
- **od** : Permet de restreindre l'utilisation à un trajet d'Origine/Destination spécifique (voir la section dédiée ci-dessous).

### Exemples de JSON de restrictions

Note : Pour une raison de lisibilité ces exemples au format JSON ne sont pas échappés.

Utilisable sur la ligne LA ou LB ou LC :
```json
[{"line":{"is":["LA","LB","LC"]}}]
```

Utilisable uniquement en période de vacances scolaires (ref: CAL_SCOLAIRE) :
```json
[{"calendar":{"is":["CAL_SCOLAIRE"]}}]
```

Utilisable sur le réseau scolaire (ref: RESEAU_SCOLAIRE) :
```json
[{"network":{"is":["RESEAU_SCOLAIRE"]}}]
```

Utilisable sur le réseau scolaire la semaine et sur le réseau urbain le week-end :
```json
[{"network":{"is":["RESEAU_SCOLAIRE"]}, "weekday": {"is":["1111100"]}},{"network":{"is":["RESEAU_URBAIN"]}, "weekday": {"is":["0000011"]}}]
```

Utilisable partout sauf sur la ligne TAD (avec ignorance de la restriction si la ligne n'est pas connue dans le contexte) :
```json
[{"line":{"isnot":["TAD"],"ignoreIfMissing":true}}]
```

### Restrictions d'Origine/Destination (OD)

Le critère `od` permet de restreindre l'usage d'un titre à un trajet précis d'origine à destination. 

Chaque objet d'une restriction OD se structure ainsi :
- `location` : Objet contenant l'origine `o` et la destination `d` via leurs références (`ext_ref`).
- `type` : Spécifie si la restriction s'applique à des arrêts commerciaux (`"STOPAREA"`) ou à des zones tarifaires (`"FARE_ZONE"`).
- `allowIntermediate` : Booléen (ou `null`) indiquant si les arrêts intermédiaires sont acceptés (trajet zonal ou flexible).
- `symmetric` : Booléen indiquant si la restriction est bidirectionnelle (l'aller et le retour sont possibles avec le même titre).

*Remarque : Les règles de type "isnot" ne sont pas supportées pour les critères OD.*

#### Exemples de JSON OD

Restriction OD stricte (sur arrêts commerciaux, non-symétrique) :
```json
[
  {
    "od": {
      "is": [
        {
          "location": {
            "o": "ORIGIN_STOPAREA_REF",
            "d": "DESTINATION_STOPAREA_REF"
          },
          "type": "STOPAREA",
          "allowIntermediate": null,
          "symmetric": false
        }
      ]
    }
  }
]
```

Restriction OD symétrique (sur arrêts commerciaux, aller et retour autorisés) :
```json
[
  {
    "od": {
      "is": [
        {
          "location": {
            "o": "ORIGIN_STOPAREA_REF",
            "d": "DESTINATION_STOPAREA_REF"
          },
          "type": "STOPAREA",
          "allowIntermediate": null,
          "symmetric": true
        }
      ]
    }
  }
]
```

Restriction OD zonale (sur zones tarifaires, symétrique et flexible avec arrêts intermédiaires autorisés) :
```json
[
  {
    "od": {
      "is": [
        {
          "location": { 
            "o": "ORIGIN_ZONE_REF", 
            "d": "DESTINATION_ZONE_REF" 
          },
          "type": "FARE_ZONE",
          "allowIntermediate": true,
          "symmetric": true
        }
      ]
    }
  }
]
```
