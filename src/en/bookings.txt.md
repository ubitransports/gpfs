---
currentMenu: index
---

# bookings.txt

This file contains the reservations associated to the users defined in bookings.txt

## Description of columns

| Field name               |    Mandatory    | Description                                                                                                                           |
|--------------------------|:---------------:|---------------------------------------------------------------------------------------------------------------------------------------|
| booking_id               | **Mandatory** | 	Unique identifier of the reservation..                                                                                               |
| passenger_id             | **Mandatory** | Identifier of the user who holds this reservation. This field is defined in the [passengers.txt](passengers.txt.html) |
| trip_id                  | **Mandatory** | Reference of the trip, present on the cloud or in the GTFS, associated with this reservation.                                         |
| origin_stoppoint_id      |    optional    | Reference of the origin stoppoint, present on the cloud or in the GTFS, associated with this booking.                                 |
| destination_stoppoint_id |    optional    | Reference of the destination stoppoint, present on the cloud or in the GTFS, associated with this booking.                            |
| start_date               |    optional    | Start date of validity of the booking in [YYYYMMDD](types.html#Dates)                                                                 |
| end_date                 |    optional    | End date of validity of the reservation in [YYYYMMDD](types.html#Dates)                                                               |
| days                     |    optional    | Days of operation of the booking in binary format on 7 characters. See examples below.                                                |
| calendar_id              |    optional    | Unique identifier of the operating calendar defined in [calendars.txt](calendars.txt.md)                               |

&nbsp;
### Validity period

The validity period of a reservation must be defined in one of two ways:

* Via the `start_date`, `end_date` and days fields
* Via the field `calendar_id` which will be linked to [calendars.txt](calendars.txt.md) file.

If the field `calendar_id` is filled in, it will be taken as priority to define the validity period.

### Field `days` and binary format

The field `days` must be expressed in 7 characters corresponding to the 7 days of the week and taking the value 0 or 1.

For example:
* for an active reservation only on Wednesday: `0010000`
* only on the weekends: `0000011`

&nbsp;
By default, all days are active (`1111111`)

## Examples

```
booking_id,passenger_id,trip_id,origin_stoppoint_id,destination_stoppoint_id,start_date,end_date,days,calendar_id
B1,P1,COURSE1,ARRET_MONTEE_1,ARRET_DESCENTE_10,20170101,20170102,0000001
B2,P3,COURSE2,,,,,,C1
B3,P2,COURSE5,ARRET_MONTEE_2,ARRET_DESCENTE_10,,,,C10
```
