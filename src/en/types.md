---
currentMenu: index
---

# Data format and types

## Dates

### Format `YYYYMMDD`

The format standard [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) represents a date according to 3 components:

* Year (`YYYY`) in 4 digits: `1988`
* Month (`MM`) in 2 digits : `07`
* day (`DD`) in 2 digits : `08`

Example : `19880708` : 8 July 1988

### Format `YYYYMMDDhhmmss`

This format adds the time to the previous format and it uses 3 additional components

* Hour (`hh`) in 2 digits : `23`
* Minute (`mm`) in 2 digits : `59`
* Seconds (`ss`) in 2 digits : `59`

Example : `20220708235959` : 8 July 1988 23:59:59

## Phone numbers

Telephone numbers must be entered in [international format](https://fr.wikipedia.org/wiki/Plan_de_num%C3%A9rotation), with a prefix for the [country code](https://fr.wikipedia.org/wiki/Liste_des_indicatifs_t%C3%A9l%C3%A9phoniques_internationaux_par_pays). 

For France, the traditional `0` one found at the beginning of the number is replaced by the code  `+33`.

Examples for French numbers:

* `0123456789` : `+33123456789`
* `0612345789` : `+33612345789`

## JSON

Fields in JSON format must be escaped in order to be correctly interpreted when reading the CSV format file.


To do this, it is recommended to surround them with double quotes `(")`, and to double the double quotes already present in the JSON.
Examples :

* `{"key": "value"}` devient `"{""key"": ""value""}"` 
* `[{"line":{"is":["LA","LB","LC"]}}]` devient `"[{""line"":{""is"":[""LA"",""LB"",""LC""]}}]"`