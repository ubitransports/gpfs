---
currentMenu: index
---

# calendars.txt

This file contains information regarding operating schedules.

## Description of columns

| Field name             |   Mandatory   |  Description |
|---------------------------|:-------------:|--------------|
| calendar_id               | **Mandatory** | Unique calendar identifier.|
| period_start              | **Mandatory** | Start date of validity of the reservation in [YYYYMMDD](types.html#Dates). |
| period_end                | **Mandatory** | End of validity date of the reservation in [YYYYMMDD](types.html#Dates). |
| days                      |   optional    | Days of operation of the reservation in binary format on 7 characters. See examples below. |  

### Field `days` and binary format

The field `days` must be expressed in 7 characters corresponding to the 7 days of the week and taking the value 0 or 1.

For example:
* for a calendar concerning only Wednesday: `0010000`
* only at the weekends: `0000011`

By default all days are active  (`1111111`)

## Example :

```
C1,20170101,20170102,0000001
C2,20170101,20170112,1111100
```
