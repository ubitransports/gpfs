---
currentMenu: calendars.txt
---

# calendars.txt

Ce fichier contient les informations concernant les calendriers de fonctionnement.

## Description des colonnes

| Nom du champ              |  Obligatoire    |  Description |
|---------------------------|:---------------:|--------------|
| calendar_id               | **Obligatoire** | Identifiant unique du calendrier.|
| period_start              | **Obligatoire** | Date de début de validité de la réservation au format [YYYYMMDD](types.html#Dates). |
| period_end                | **Obligatoire** | Date de fin de validité de la réservation au format [YYYYMMDD](types.html#Dates). |
| days                      | optionnel       | Jours de fonctionnement de la réservation au format binaire sur 7 caractères. Voir exemples ci-dessous. |  

### Champ `days` et format binaire

Le champ `days` doit être exprimé sur 7 caractères correspondant aux 7 jours de la semaine et prenant la valeur 0 ou 1.

Par exemple :
* pour un calendrier concernant seulement le mercredi : `0010000`
* seulement les week-ends : `0000011`.

Par défaut tous les jours sont actifs (`1111111`)

## Exemple :

```
C1,20170101,20170102,0000001
C2,20170101,20170112,1111100
```
