---
currentMenu: passenger_tags.txt
---

# passenger_tags.txt

This file contains information on user cards.

## Description of columns

| Field name           |  Mandatory    |  Max length | Description                                                                                              |
|------------------------|:------------:|------|----------------------------------------------------------------------------------------------------------|
| tag_id                 | **Mandatory** |   -  | 	Unique card identifier.                                                                                 |
| passenger_id           | **Mandatory** |   -  | Identifies the user who holds this card. This field is defined in [passengers.txt](passengers.txt.html). |
| uid                    | **Mandatory** |  **255** | Physical card identifier. It must be unique.                                                             |
| uid_format             | optional       |   -  | Indicates whether the uid field value is in hexadecimal or decimal format.                               |
| delivery_date          | optional       |   -  | Card delivery date in format [YYYYMMDD](types.html#Dates).                                               |
| validity_end           | optional       |   -  | Estimated date of end of validity of the card in format [YYYYMMDD](types.html#Dates).                    |
| disabled_date          | optional       |   -  | Effective date of deactivation of the card in format [YYYYMMDD](types.html#Dates).                       |
| disabled_cause         | optional       |   -  | Indication of the reasons for deactivation. Accepted values: see below.                       |


### Values of the "uid_format" field:

* **HEX** ou blank : *Hexadécimal*.
* **DEC** : *Decimal*.

### Values of the "disabled_cause" field:

* **LOST**           : *Lost card*
* **STOLEN**         : *Stolen card*
* **BROKEN**         : *Broken card*
* **DEFECT**         : *Defective card*
* **VALIDITY_ENDED** : *Expired card*
* **OTHER**          : *other reason*.


## Example
```
tag_id,passenger_id,uid,uid_format,delivery_date,validity_end,disabled_date,disabled_cause
1,1,0123456789ABCDEF,HEX,,,,
2,2,0123456789101010,DEC,20170101,20171231,20170208,STOLEN

```
