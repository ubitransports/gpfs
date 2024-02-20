---
currentMenu: passenger_tags.txt
---

# passenger_tags.txt

Ce fichier contient les informations sur les cartes des usagers.

## Description des colonnes

| Nom du champ           |  Obligatoire    |  Longueur max |  Description |
|------------------------|:------------:|------|----------|
| tag_id                 | **Obligatoire** |   -  |  Identifiant unique de la carte. |
| passenger_id           | **Obligatoire** |   -  |  Identifie l'usager qui détient cette carte. Ce champ est défini dans le fichier [passengers.txt](passengers.txt.html). |
| uid                    | **Obligatoire** |  **255** |  Identifiant physique de la carte. Il doit être unique. |
| uid_format             | optionnel       |   -  |  Indique si la valeur du champ uid est au format hexadécimal ou décimal|
| delivery_date          | optionnel       |   -  |  Date de remise de la carte au format [YYYYMMDD](types.html#Dates).|
| validity_end           | optionnel       |   -  |  Date prévisionnelle de fin de validité de la carte au format [YYYYMMDD](types.html#Dates).|
| disabled_date          | optionnel       |   -  |  Date effective de désactivation de la carte au format [YYYYMMDD](types.html#Dates).|
| disabled_cause         | optionnel       |   -  |  Indication sur les raisons de la désactivation. Valeurs acceptées : voir plus bas. |


### Valeurs du champ "uid_format" :

* **HEX** ou Vide : *Hexadécimal*.
* **DEC** : *Décimal*.

### Valeurs du champ "disabled_cause" :

* **LOST**           : *Carte perdue*.
* **STOLEN**         : *Carte volée*.
* **BROKEN**         : *Carte cassée*.
* **DEFECT**         : *Carte défectueuse*.
* **VALIDITY_ENDED** : *Carte périmée*.
* **OTHER**          : *motif indéterminé*.


## Exemple
```
tag_id,passenger_id,uid,uid_format,delivery_date,validity_end,disabled_date,disabled_cause
1,1,0123456789ABCDEF,HEX,,,,
2,2,0123456789101010,DEC,20170101,20171231,20170208,STOLEN

```
