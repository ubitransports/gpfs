# profiles.txt

## Fields description 

| Field Name       |  Required    |  Details |
|------------------|:------------:|----------|
| profile_id       | **Required** | Le champ profile_id est un identifiant unique qui identifie le profil. |  
| profil_name      | **Required** | Le champ profil_name est le nom du profil. |
| profil_start_on  |  Optional    | Le champ start_on est la date de prise d'effet au format YYYYMMDD. |
| profil_end_on    |  Optional    | Le champ start_on est la date d'expiration au format YYYYMMDD |
| profil_age_start |  Optional    | Le champ profil_age_start est l'age minimum pour être associé automatiquement à ce profil. |
| profil_age_end   |  Optional    | Le champ profil_age_end est l'age maximum pour être associé automatiquement à ce profil. |
| profil_anonymous |  Optional    | Le champ profil_anonymous permet d'associé ce profil aux usagers anonyme. |

## Example
```
profile_id,profil_name,profil_start_on,profil_end_on,profil_age_start,profil_age_end,profil_anonymous
STUDENT,Student,20160901,20170601,,,
YOUNG,Young,,,,18,
ANONYMOUS,Anonymous,,,,,1
```
