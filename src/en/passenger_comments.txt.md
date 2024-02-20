---
currentMenu: passenger_comments.txt
---

# passenger_comments.txt

Ce fichier contient les commentaires additionnels associés aux usagers définis dans le fichier [passengers.txt](passengers.txt.html)

## Description of columns

| Field name      |  Mandatory    |  Description |
|-----------------|:------------:|----------|
| passenger_id    | **Mandatory** | Identifier of the referenced user. |
| comment         | **Mandatory** | Comment text. |

### Comment format 

In order to respect the CSV format, you must escape any commas by putting the entire comment between double quotes (`"`).

Example: 
```
passenger_id,comment
1,"Subscription being paid, card issued"
```

## Example : 

```
passenger_id,comment
P1,This is a comment on passenger 1
P1,This is another comment on passenger 1
P2,"Lost his bag, please contact him if you find it"
```
