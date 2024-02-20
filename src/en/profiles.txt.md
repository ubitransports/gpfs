---
currentMenu: profiles.txt
---

# profiles.txt

This file defines the list of profiles applied on the transport network. There are 3 different types of profile: profiles based on a period, profiles based on the age of the user and the anonymous profile ([details](#types-de-profil)).

## Description of columns

| Field name     |  Mandatory    | Description                                                                   |
|------------------|:------------:|-------------------------------------------------------------------------------|
| profil_id       | **Mandatory** | The profile_id field is a unique identifier that identifies the profile.      |  
| profil_name      | **Mandatory** | Profile name                                                                  |
| profil_start_on  |  Optional    | Effective date in the format  [YYYYMMDD](types.html#Dates).                   |
| profil_end_on    |  Optional    | Expiration date in the format  [YYYYMMDD](types.html#Dates)                   |
| profil_age_start |  Optional    | Minimum age to be automatically associated to this profile.                   |
| profil_age_end   |  Optional    | Maximum age to be automatically associated with this profile.                 |
| profil_anonymous |  Optional    | Define the user profile as anonymous. Valid values: 0 (or null) = NO, 1 = YES |

## Example
```
profil_id,profil_name,profil_start_on,profil_end_on,profil_age_start,profil_age_end,profil_anonymous
STUDENT,Student,20160901,20170601,,,
YOUNG,Young,,,,18,
ANONYMOUS,Anonymous,,,,,1
```

## Profile types

__The profile must be typed in one of the following three ways.__

### Profile based on a period

In addition to mandatory fields, field `profil_start_on` and/or `profil_end_on` can be defined as integer. See the examples below:

```
profil_id,profil_name,profil_start_on,profil_end_on
PROFILE_1,"Toute l'année",20160101,20161231
PROFILE_2,"A partir du 1er Janvier 2016",20160101,
PROFILE_3,"Jusqu'au 31 Décembre 2016",,20161231
```

### Profile based on age

In addition to mandatory fields, field `profil_age_start` and/or `profil_age_end` can be defined as integers. See the examples below:  

```
profil_id,profil_name,profil_age_start,profil_age_end
PROFILE_1,"De 5 ans à 18 ans",5,18
PROFILE_2,"Jusqu'a 18 ans",,18
PROFILE_3,"A partir de 5 ans",5,
```

### Profile anonymous

In addition to mandatory fields, field `profil_anonymous` can be populated. See the example below:

```
profil_id,profil_name,profil_anonymous
PROFILE_1,Anonyme,1
```
