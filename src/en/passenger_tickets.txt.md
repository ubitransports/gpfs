---
currentMenu: index
---

# passenger_tickets.txt

This file defines the transport tickets associated to users declared in the  [passengers.txt](passengers.txt.html). The accounting concept can be entered in an extension file passenger_tickets.txt

## Description of columns

| Field name           |  Mandatory    | Description                                                                             |
|-------------------------|:---------------:|-----------------------------------------------------------------------------------------|
| ticket_id               | **Mandatory** | Unique identifier of the transport ticket.                                              |
| passenger_id            | **Mandatory** | Identifier of the referenced user.                                                      |
| fare_id                 |  Optional      | Identifier of the fare linked to this transport ticket.                                 |
| ticket_start_on         |  Optional      | Start date of validity of the title in format [YYYYMMDDhhmmss](types.html#Dates).       |
| ticket_end_on           |  Optional      | End of validity date of the title in format [YYYYMMDDhhmmss](types.html#Dates).         |
| restrictions            |  Optional      | Restrictions on the use of the title (line, way etc.) in [format JSON](types.html#JSON) |
| unboarding_restrictions |  Optional      | Restrictions of the unboarding in [format JSON](types.html#JSON)                        |

## Example:
```
ticket_id,passenger_id,fare_id,ticket_start_on,ticket_end_on,restrictions
T0000001,P1,TU1,20160101000000,20160131235959,"[{""line"":{""is"":[""LA"",""LB"",""LC""]}}]"
```

## How Restrictions Work

If the `restrictions` and/or fields `unboarding_restrictions` are filled in, the defined values will replace the restrictions put in place on the fare.  

It is possible to restrict tickets on one or more criteria:

- `network` - transport network (eg: On the school network)
- `line` - line (eg: on line A or B)
- `trip` - trip (ex: on trip 107-03A9)
- `stoparea` - stoparea (ex: stopeare "Gare SNCF")
- `stoppoint` - physical stop (ex: stoppoint "Gare SNCF")
- `zone` - rate zone (ex: in rate zone "A")
- `weekday` - weekday (ex: Monday to Friday)
- `time` - time slot (ex: Between 12 p.m. and 2 p.m.)
- `calendar` - calendar (ex: During school holidays)

Ticket usage restrictions are managed in [JSON format](types.html#JSON).

A restriction is a JSON array of one or more rules: `[REGLE_A, REGLE_B]`
Use of the ticket is authorized if at least one of the rules is valid.

A **règle** is a JSON object of one or more criteria cited above:  `{CRITERE_A:CONDITION_A, CRITERE_B:CONDITION_B}`
The condition is also an object of type `{"is":[REFERENCE_A, REFERENCE_B]}` or `{"isnot":[REFERENCE_A, REFERENCE_B]}`.

### Examples with JSON restrictions

Note: For readability reasons these examples in JSON format are not escaped (see above)

Usable on the LA or LB or LC line:
```
[{"line":{"is":["LA","LB","LC"]}}
```

Can only be used during school holidays (ref: CAL_SCOLAIRE)
```
[{"calendar":{"is":["CAL_SCOLAIRE"]}}]
```

Usable on the school network (ref: RESEAU_SCOLAIRE):
```
[{"network":{"is":["RESEAU_SCOLAIRE"]}}]
```

Usable on the school network during the week and on the urban network at the weekend
```
[{"network":{"is":["RESEAU_SCOLAIRE"]}, "weekday": {"is":["1111100"]}},{"network":{"is":["RESEAU_URBAIN"]}, "weekday": {"is":["0000011"]}}]
```

Usable on the LA or LB or LC line:
```
[{"line":{"is":["LA","LB","LC"]}}
```

Usable everywhere except on TAD line:
```
[{"line":{"isnot":["TAD"]}}
```
