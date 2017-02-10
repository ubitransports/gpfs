---
currentMenu: passenger_tags.txt
---

# passenger_tags.txt

Ce fichier contient les informations concernant les cartes des usagers ou des élèves.

## Description des colonnes

| Nom du champ          |  Obligatoire    |  Description |
|------------------------|:------------:|----------|
| tag_id                 | **Obligatoire** |  Le champ tag_id est un identifiant unique de la carte. |
| passenger_id           | **Obligatoire** |  Le champ passenger_id identifie l'usager qui détient cette carte, ce champ est défini dans le fichier [passengers.txt](passengers.txt.html). |
| uid                    | **Obligatoire** |  Le champ uid est l'identifiant physique de la carte, il doit être unique. |
| uid_format             | optionnel       |  Le champ uid_format indique si la valeur du champs uid est au format hexadécimal ou décimal|
| delivery_date          | optionnel       |  La date de remise de la carte au format YYYYMMDD.|
| validity_end           | optionnel       |  La date prévisionnelle de fin de validité de la carte au format YYYYMMDD.|
| disabled_date          | optionnel       |  La date effective de désactivation de la carte au format YYYYMMDD.|
| disabled_cause         | optionnel       |  L'indication sur les raisons de la désactivation. la carte est perdue, volée, cassée... |

## Format des dates :
* **YYYYMMDD**           : Année sur 4 chiffres, mois sur 2 chiffres et jour sur 2 chiffres.

## Valeurs du champ "uid_format" :

* **HEX** ou Vide : *Hexadécimal*.
* **DEC** : *Décimal*.

## Valeurs du champs "disabled_cause" :

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
