---
currentMenu: profiles.txt
---

# profiles.txt

Ce fichier définit la liste des profils appliqués sur le réseau de transport. Il existe 3 types de profil différents : les profils basés sur une période, les profils basés sur l'âge de l'usager et le profil anonyme ([détails](#types-de-profil)). 

## Description des colonnes

| Nom du champ      |  Obligatoire    |  Description |
|------------------|:------------:|----------|
| profile_id       | **Obligatoire** | Le champ profile_id est un identifiant unique qui identifie le profil. |  
| profil_name      | **Obligatoire** | Le champ profil_name est le nom du profil. |
| profil_start_on  |  Optionnel    | Le champ start_on est la date de prise d'effet au format YYYYMMDD. |
| profil_end_on    |  Optionnel    | Le champ start_on est la date d'expiration au format YYYYMMDD |
| profil_age_start |  Optionnel    | Le champ profil_age_start est l'âge minimum pour être associé automatiquement à ce profil. |
| profil_age_end   |  Optionnel    | Le champ profil_age_end est l'âge maximum pour être associé automatiquement à ce profil. |
| profil_anonymous |  Optionnel    | Le champ profil_anonymous permet de définir le profil usager comme anonyme. Les valeurs valides pour ce champ sont : 0 ou rien = NON, 1 = OUI |

## Exemple
```
profile_id,profil_name,profil_start_on,profil_end_on,profil_age_start,profil_age_end,profil_anonymous
STUDENT,Student,20160901,20170601,,,
YOUNG,Young,,,,18,
ANONYMOUS,Anonymous,,,,,1
```

## Types de profil

### Profil basé sur une période

En plus des champs obligatoires, les champs `profil_start_on` et/ou `profil_end_on` doivent être définis. Voir les exemples ci-dessous :  

```
profile_id,profil_name,profil_start_on,profil_end_on
PROFILE_1,"Toute l'année",20160101,20161231
PROFILE_2,"A partir du 1er Janvier 2016",20160101,
PROFILE_3,"Jusqu'au 31 Décembre 2016",,20161231
```

### Profil basé sur l'âge

En plus des champs obligatoires, les champs `profil_age_start` et/ou `profil_age_end` doivent être définis. Voir les exemples ci-dessous :  

```
profile_id,profil_name,profil_age_start,profil_age_end
PROFILE_1,"De 5 ans à 18 ans",5,18
PROFILE_2,"Jusqu'a 18 ans",,18
PROFILE_3,"A partir de 5 ans",5,
```

### Profil anonyme

En plus des champs obligatoires, le champ `profil_anonymous` doit être défini. Voir l'exemple ci-dessous :  

```
profile_id,profil_name,profil_anonymous
PROFILE_1,Anonyme,1
```
