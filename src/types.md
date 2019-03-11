---
currentMenu: types
---

# Format et types de données

## Dates

### Format `YYYYMMDD`

Ce format issu de la norme [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) représente une date selon 3 composantes :

* L'année (`YYYY`) sur 4 chiffres : `1988`
* Le mois (`MM`) sur 3 chiffres : `07`
* Le jour (`DD`) sur 2 chiffres : `08`

Exemple : `19880708` : 8 Juillet 1988

### Format `YYYYMMDDhhmmss`

Cette variante ajoute la notion d'heure au format précédent à l'aide de 3 composantes supplémentaires :

* Les heures (`hh`) sur 2 chiffres : `23`
* Les minutes (`mm`) sur 2 chiffres : `59`
* Les secondes (`ss`) sur 2 chiffres : `59`

Exemple : `20220708235959` : Le 8 Juillet 2022 à 23:59:59

## Numéros de téléphone

Les numéros de téléphone doivent être saisis au [format international](https://fr.wikipedia.org/wiki/Plan_de_num%C3%A9rotation), dont la particularité est de préfixer les numéros par un [code pays](https://fr.wikipedia.org/wiki/Liste_des_indicatifs_t%C3%A9l%C3%A9phoniques_internationaux_par_pays). 

Pour la France, le traditionnel `0` qu'on retrouve en début de numéro est remplacé par le code `+33`.

Exemples pour des numéros français :

* `0123456789` : `+33123456789`
* `0612345789` : `+33612345789`

## JSON

Les champs au format JSON doivent être échappés afin d'être correctement interprétés lors de la lecture du fichier au format CSV.

Pour ce faire, il est préconisé de les entourer de double quotes (`"`), et de doubler les double quotes déjà présentes dans le JSON.

Exemples :

* `{"key": "value"}` devient `"{""key"": ""value""}"` 
* `[{"line":{"is":["LA","LB","LC"]}}]` devient `"[{""line"":{""is"":[""LA"",""LB"",""LC""]}}]"`