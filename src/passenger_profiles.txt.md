# passenger_profiles.txt

## Fields description 

| Field Name      |  Required   |  Details |
|-----------------|:-----------:|----------|
| passenger_id    |**Required** | Le champ passenger_id est un identifiant unique qui identifie l'usager. |
| profil_id       |**Required** | Le champ profil_id est le nom du profil associé à l'usager. |
| profil_start_on |  Optional   | Le champ start_on est la date de prise d'effet au format YYYYMMDD. |
| profil_end_on   |  Optional   | Le champ start_on est la date d'expiration au format YYYYMMDD. |

##Example : 

```
passenger_id, profil_id, profil_start_on, profil_end_on
P1, 1, 20160101, 20161231
P2, 1, 20160101, 20160331
```
