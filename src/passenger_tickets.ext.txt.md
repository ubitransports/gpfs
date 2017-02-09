---
currentMenu: passenger_tickets.ext.txt
---

# passenger_tickets.ext.txt

Ce fichier est un complément au fichier [passenger_tickets.txt](passenger_tickets.txt.html) qui rajoute la notion comptable d'un achat de titre.

## Description des colonnes

| Nom du champ   |  Obligatoire    |  Description |
|-----------------|:------------:|----------|
| ticket_id       | **Obligatoire** | Le champ ticket_id est un identifiant unique qui identifie le titre de transport. |
| price           |  Optionnel    | Le champ price est est le prix TTC du titre en centimes. |
| amount          |  Optionnel    | Le champ amount est le montant déjà perçu en centimes.  |
| payment_detail  |  Optionnel    | Le champ payment_detail permet d'ajouter un commentaire au réglement.  |

## Exemple : 
```
ticket_id,price,amount,payment_detail
T0000001,1000,500,"Paiement de 5€ par chèque"
```
