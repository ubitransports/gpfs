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

- `network` : Transport network (eg: On the school network)
- `line` : Line (eg: on line A or B)
- `trip` : Trip (ex: on trip 107-03A9)
- `stoparea` : Stoparea (ex: stoparea "Gare SNCF")
- `stoppoint` : Physical stop (ex: stoppoint "Gare SNCF")
- `zone` : Rate zone (ex: in rate zone "A")
- `weekday` : Weekday (ex: Monday to Friday)
- `time` : Time slot (ex: Between 12 p.m. and 2 p.m.)
- `calendar` : Calendar (ex: During school holidays)
- `company` : Transport operator / company
- `vehicleType` : Vehicle type (eg: For "Tramway")
- `od` : Origin / Destination restriction (see details below)

Ticket usage restrictions are managed in [JSON format](types.html#JSON).

A **restriction** is a JSON array of one or more rules: `[RULE_A, RULE_B]`
Use of the ticket is authorized if at least one of the rules is valid.

A **rule** is a JSON object of one or more criteria cited above: `{CRITERIA_A:CONDITION_A, CRITERIA_B:CONDITION_B}`
Each criterion is an object containing:
- `is`: a unique reference or a list of allowed references of objects, or a specific value depending on the criterion.
- `isnot`: a unique reference or a list of denied references of objects, or a specific value depending on the criterion.
- `ignoreIfMissing` (optional): a boolean specifying whether to ignore this criterion if not available in the current context.

*Note: Those references correspond to the `ext_ref` values of the related objects and not database IDs.*

### Specificities of certain criteria

- **time**: The value is a time period JSON object like `"is":{"from": "10:00:00", "to":"18:00:00"}`
- **weekday**: The value is a string of seven `[0-1]` representing each day of the week (Monday to Sunday), e.g., `"1111100"` for Monday to Friday.
- **od**: Restricts the usage to a specific Origin/Destination trip (see the dedicated section below).

### Examples with JSON restrictions

Note: For readability reasons these examples in JSON format are not escaped.

Usable on the LA or LB or LC line:
```json
[{"line":{"is":["LA","LB","LC"]}}]
```

Can only be used during school holidays (ref: CAL_SCOLAIRE):
```json
[{"calendar":{"is":["CAL_SCOLAIRE"]}}]
```

Usable on the school network (ref: RESEAU_SCOLAIRE):
```json
[{"network":{"is":["RESEAU_SCOLAIRE"]}}]
```

Usable on the school network during the week and on the urban network at the weekend:
```json
[{"network":{"is":["RESEAU_SCOLAIRE"]}, "weekday": {"is":["1111100"]}},{"network":{"is":["RESEAU_URBAIN"]}, "weekday": {"is":["0000011"]}}]
```

Usable everywhere except on TAD line (ignoring the restriction if the line is not known in the context):
```json
[{"line":{"isnot":["TAD"],"ignoreIfMissing":true}}]
```

### Origin/Destination (OD) Restrictions

The `od` criterion restricts ticket usage to a specific trip defined by an Origin and a Destination.

Each object of an OD restriction is structured as follows:
- `location`: An object containing the origin `o` and destination `d` via their references (`ext_ref`).
- `type`: Specifies whether the restriction applies to commercial stops (`"STOPAREA"`) or to fare zones (`"FARE_ZONE"`).
- `allowIntermediate`: Boolean (or `null`) specifying whether intermediate stops are allowed (zonal or flexible trip).
- `symmetric`: Boolean specifying whether the trip is bi-directional (allowing return trips).

*Note: "isnot" rules are not supported for OD criteria.*

#### Examples of OD JSON

Strict, non-symmetric OD restriction on stop areas:
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

Symmetric OD restriction on stop areas (allowing return trips):
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

Symmetric and flexible zonal OD restriction on fare zones (allowing intermediate stops):
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
