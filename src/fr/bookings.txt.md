---
currentMenu: bookings.txt
---

# bookings.txt

Ce fichier contient les réservations associées aux usagers définis dans le fichier [passengers.txt](passengers.txt.html).

## Description des colonnes

| Nom du champ              |  Obligatoire    |  Description |
|---------------------------|:---------------:|--------------|
| booking_id                | **Obligatoire** | Identifiant unique de la réservation.|
| passenger_id              | **Obligatoire** | Identifie l'usager qui détient cette réservation. Ce champ est défini dans le fichier [passengers.txt](passengers.txt.html). |
| trip_id                   | **Obligatoire** | Référence de la course, présente sur le cloud ou dans le GTFS, associée à cette réservation. |
| origin_stoppoint_id       | optionnel       | Référence de l'arrêt commercial de montée, présent sur le cloud ou dans le GTFS, associé à cette réservation. |
| destination_stoppoint_id  | optionnel       | Référence de l'arrêt commercial de descente, présent sur le cloud ou dans le GTFS, associé à cette réservation. |
| start_date                | optionnel       | Date de début de validité de la réservation au format [YYYYMMDD](types.html#Dates). |
| end_date                  | optionnel       | Date de fin de validité de la réservation au format [YYYYMMDD](types.html#Dates). |
| days                      | optionnel       | Jours de fonctionnement de la réservation au format binaire sur 7 caractères. Voir exemples ci-dessous. |
| calendar_id               | optionnel       | Identifiant unique du calendrier de fonctionnement défini dans le fichier [calendars.txt](calendars.txt.md). |

### Période de validité

La période de validité d'une réservation doit être définie de l'une des deux manières suivantes :

* Via les champs start_date, end_date et days
* Via le champ `calendar_id` qui sera en lien avec le fichier [calendars.txt](calendars.txt.md).

Si le champs `calendar_id` est renseigné, il sera pris en priorité pour définir la période de validité

### Champ `days` et format binaire

Le champ `days` doit être exprimé sur 7 caractères correspondant aux 7 jours de la semaine et prenant la valeur 0 ou 1.

Par exemple :
* pour une réservation active seulement le mercredi : `0010000`
* seulement les week-ends : `0000011`.

Par défaut tous les jours sont actifs (`1111111`)

## Exemples

```
booking_id,passenger_id,trip_id,origin_stoppoint_id,destination_stoppoint_id,start_date,end_date,days,calendar_id
B1,P1,COURSE1,ARRET_MONTEE_1,ARRET_DESCENTE_10,20170101,20170102,0000001
B2,P3,COURSE2,,,,,,C1
B3,P2,COURSE5,ARRET_MONTEE_2,ARRET_DESCENTE_10,,,,C10
```
