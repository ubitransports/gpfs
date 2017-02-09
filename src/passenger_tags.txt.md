---
currentMenu: passenger_tags.txt
---

# passenger_tags.txt

Ce fichier contient les informations concernant les cartes des usagers ou des élèves.

## Description des colonnes

| Nom du champs          |  Obligatoire    |  Description |
|------------------------|:------------:|----------|
| tag_id                 | **Obligatoire** |  Le champ tag_id est un identifiant unique de la carte. |
| passenger_id           | **Obligatoire** |  Le champ passenger_id identifie l'usager qui détient cette carte, ce champs est défini dans le fichier [passengers.txt](passengers.txt.html). |
| rfid_uuid              | **Obligatoire** |  Le champ rfid_uuid est l'identifiant physique de la carte, il doit être unique. |
| uuid_format            | optionnel       |  Le champ uuid_format indique si la valeur du champs rfid_uuid est au format hexadécimal ou décimal|
| delivery_date          | optionnel       |  date de délivrance de la carte au format YYYYMMDD.|
| validity_end           | optionnel       |  date prévisionnelle de fin de validité de la carte au format YYYYMMDD.|
| disabled_date          | optionnel       |  date effective de désactivation de la carte au format YYYYMMDD.|
| disabled_cause         | optionnel       |  indication sur les raisons de la désactivation. la carte est perdue, volée, cassée... |

## Format des dates :
* **YYYYMMDD**           : Année sur 4 chiffres, mois sur 2 chiffres et jour sur 2 chiffres.

## Valeurs du champs "uuid_format" :

* **HEX** ou Vide : *Hexadécimal*.
* **DEC** : *Décimal*.

## Valeurs du champs "disabled_cause" :

* **LOST**           : *Carte perdue*.
* **STOLEN**         : *Carte volée*.
* **BROKEN**         : *Carte cassée*.
* **DEFECT**         : *Carte defectueuse*.
* **VALIDITY_ENDED** : *Carte périmée*.
* **OTHER**          : *motif indéterminé*.

## Exemple
```
tag_id,passenger_id,rfid_uuid,uuid_format,delivery_date,validity_end,disabled_date,disabled_cause
1,1,0123456789ABCDEF,HEX,,,,
2,2,0123456789101010,DEC,20170101,20171231,20170208,STOLEN

```
