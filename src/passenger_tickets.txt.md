# passenger_tickets.txt

## Fields description 

| Field Name      |  Required    |  Details |
|-----------------|:------------:|----------|
| ticket_id       | **Required** | Le champ ticket_id est un identifiant unique qui identifie du titre. |
| passenger_id    | **Required** | Le champ passenger_id est un identifiant unique qui identifie l'usager. |
| fare_id         |  Optional    | Le champ fare_id est un identifiant unique qui identifie un tarif.  |
| ticket_start_on |  Optional    | Le champ ticket_start_on est la date début de validité du titre au format YYYYMMDDHHMMSS.  |
| ticket_end_on   |  Optional    | Le champ ticket_end_on est la date fin de validité du titre au format YYYYMMDDHHMMSS.  |
| restrictions    |  Optional    | Le champ restrictions permet de définir les restrictions dans l'espace et le temps au format JSON  |

## Example : 
```
ticket_id, passenger_id, fare_id, ticket_start_on, ticket_end_on, restrictions
T0000001, P1, TU1, 20160101000000, 20160131235959, {"line":[1, 2, 3]}
```
