---
currentMenu: calendar_dates.txt
---

# calendar_dates.txt

This file contains information regarding the dates to include or exclude from a calendar defined in calendars.txt

## Description of columns

| Field name             |  Mandatory    | Description                                                                       |
|---------------------------|:---------------:|-----------------------------------------------------------------------------------|
| date_id                   | **Mandatory** | 	Unique identifier of the date to include or exclude from a calendar.             |
| calendar_id               | **Mandatory** | Identifier of the calendar concerned.                                             |
| date                      | **Mandatory** | Date to include or exclude, format is [YYYYMMDD](types.html#Dates).               |
| exception_type            | **Mandatory** | Indicates inclusion or exclusion. Accepted values: 1 = inclusive; 2 = excluded.|


## Example:

```
date_id,calendar_id,date,exception_type
D1,C1,20170101,1
D2,C2,20170101,2
```
