---
currentMenu: bookings.txt
---

# bookings.txt

Ce fichier contient les réservations associées aux usagers définis dans le fichier [passengers.txt](passengers.txt.html).

## Description des colonnes

| Nom du champ              |  Obligatoire    |  Description |
|---------------------------|:---------------:|--------------|
| booking_id                | **Obligatoire** | Le champ booking_id est un identifiant unique qui identifie une réservation.|
| passenger_id              | **Obligatoire** | Le champ passenger_id est un identifiant unique qui identifie l'usager. |
| trip_id                   | **Obligatoire** | Le champ trip_id est la référence d'une course présente sur le cloud ou dans le GTFS | 
| origin_stoppoint_id       | optionnel       | Le champ origin_stoppoint_id est la référence l'arrêt de montée présente sur le cloud ou dans le GTFS. |
| destination_stoppoint_id  | optionnel       | Le champ origin_stoppoint_id est la référence l'arrêt de déscente présente sur le cloud ou dans le GTFS. |
| start_date                | optionnel       | Le champ start_date définit la date de début de validité de la réservation au format YYYYMMDD. |
| end_date                  | optionnel       | Le champ end_date définit la date de fin de validité de la réservation au format YYYYMMDD. |
| days                      | optionnel       | Le champ days définit les jours de fonctionnement de la réservation au format numérique. Par exemple pour une réservation active que le ou les mercredis : 0010000 ou que les week-ends : 0000011. Par défaut tous les jours sont actifs (1111111) |
| calendar_id               | optionnel       | Le champ calendar_id est un identifiant unique qui identifie un calendrier de fonctionnement. |  
  
  
Pour définir la période de validité d'une réservation, vous avez deux possibilités de la renseigner :  
* soit via les champs start_date, end_date et days
* soit via le champ calendar_id qui sera en lien avec le fichier [calendrier](calendars.txt).

##Exemple : 

```
booking_id,passenger_id,trip_id,origin_stoppoint_id,destination_stoppoint_id,start_date,end_date,days,calendar_id
B1,P1,COURSE1,ARRET_MONTEE_1,ARRET_DESCENTE_10,20170101,20170102,0000001
B2,P3,COURSE2,,,,,,C1
B3,P2,COURSE5,ARRET_MONTEE_2,ARRET_DESCENTE_10,,,,C10
```
