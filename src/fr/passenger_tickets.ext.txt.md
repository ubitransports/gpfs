---
currentMenu: reference
---

# passenger_tickets.ext.txt

Ce fichier est un complément au fichier [passenger_tickets.txt](passenger_tickets.txt.html) qui ajoute la notion comptable d'un achat de titre.

## Description des colonnes

| Nom du champ   |  Obligatoire    |  Description |
|-----------------|:------------:|----------|
| ticket_id       | **Obligatoire** | Identifiant du titre de transport référencé. |
| price           |  Optionnel    | Prix TTC du titre en centimes. |
| amount          |  Optionnel    | Montant déjà perçu en centimes.  |
| payment_detail  |  Optionnel    | Permet d'ajouter un commentaire au réglement.  |

### Format du champ `payment_detail` 

Afin de respecter le format CSV, il faut échapper les éventuelles virgules en mettant l'ensemble du champ entre double quotes (`"`).

Ex: 
```
ticket_id,price,amount,payment_detail
T0000001,1000,500,"Paiement de 5€ par chèque, à encaisser en Avril"
```

## Exemple : 
```
ticket_id,price,amount,payment_detail
T0000001,1000,500,"Paiement de 5€ par chèque"
```
