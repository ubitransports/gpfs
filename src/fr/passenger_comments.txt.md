---
currentMenu: reference
---

# passenger_comments.txt

Ce fichier contient les commentaires additionnels associés aux usagers définis dans le fichier [passengers.txt](passengers.txt.html).

## Description des colonnes

| Nom du champ      |  Obligatoire    |  Description |
|-----------------|:------------:|----------|
| passenger_id    | **Obligatoire** | Identifiant de l'usager référencé. |
| comment         | **Obligatoire** | Texte du commentaire. |

### Format des commentaires 

Afin de respecter le format CSV, il faut échapper les éventuelles virgules en mettant l'ensemble du commentaire entre double quotes (`"`).

Ex: 
```
passenger_id,comment
1,"Abonnement en cours de règlement, carte délivrée"
```

## Exemple : 

```
passenger_id,comment
P1,This is a comment on passenger 1
P1,This is another comment on passenger 1
P2,"Lost his bag, please contact him if you find it"
```
