---
currentMenu: reference
---

# Référence du standard GPFS (General Passenger Feed Specification)

Le **GPFS** est un standard d'échange de données usagers dans un cadre d'**interoperabilité** des réseaux de transport.
Cette norme a été mise en place afin de simplifier la **transmission des informations usagers** entre les différents
acteurs du transport comme le fait le **GTFS** pour les données de topologie de réseau.

Cette documentation décrit les caractéristiques du standard GPFS.

## Liste des fichiers/dossiers

Liste des fichiers et dossiers contenus dans un flux GPFS, qui est un dossier compressé au format ZIP.

| Nom du fichier                                        |   Obligatoire   | Description                                                                                                                   |
|-------------------------------------------------------|:---------------:|-------------------------------------------------------------------------------------------------------------------------------|
| [passengers.txt](passengers.txt.html)                 | **Obligatoire** | Informations concernant les usagers pouvant utiliser le réseau de transport.                                                  |
| [passenger_comments.txt](passenger_comments.txt.html) | Optionnel       | Commentaires additionnels associés à un usager.                                                                               |
| [passenger_tutors.txt](passenger_tutors.txt.html)     | Optionnel       | Informations concernant le responsable légal d'un usager.                                                                     |
| [passenger_tags.txt](passenger_tags.txt.html)         | Optionnel       | Définition des cartes associées à un usager.                                                                                  |
| [passenger_tickets.txt](passenger_tickets.txt.html)   | Optionnel       | Titres de transport (tickets ou abonnements) attribués à un usager.                                                           |
| [profiles.txt](profiles.txt.html)                     | Optionnel       | Définition des profils usager.                                                                                                |
| [passenger_profiles.txt](passenger_profiles.txt.html) | Optionnel       | Association entre un profil et un usager.                                                                                     |
| [schools.txt](schools.txt.html)                       | Optionnel       | Informations concernant les établissements scolaires fréquentés par un usager.                                                |
| [passenger_schools.txt](passenger_schools.txt.html)   | Optionnel       | Association d'un établissement scolaire à un usager.                                                                          |
| [bookings.txt](bookings.txt.html)                     | Optionnel       | Les réservations associées aux usagers.                                                                                       |
| [calendars.txt](calendars.txt.html)                   | Optionnel       | Informations concernant les calendriers de fonctionnement.                                                                    |
| [calendar_dates.txt](calendar_dates.txt.html)         | Optionnel       | Informations concernant les dates à inclure ou exclure d'un calendrier.                                                       |
| [passenger_organization.txt](passenger_organizations.txt.html)   | Optionnel       | Association d'une (ou des) Autorité(s) Organisatrice(s) à un usager                                                                         |
| pictures/                                             | Optionnel       | Dossier contenant les photos des usagers. Le nom de la photo doit correspondre à celui défini dans le fichier passengers.txt. |

## Prérequis

Les prérequis suivants s'appliquent au format et contenu des fichiers :

* Tous les fichiers d'un GPFS doivent être enregistrés au format TXT et leurs valeurs seront séparées par des virgules.
* Les noms de fichiers sont sensibles à la casse.
* La première ligne de chaque fichier doit contenir les noms des colonnes utilisées. Si un champ est optionnel et non
  utilisé, la colonne peut être omise.
* Tous les noms de champs sont sensibles à la casse.
* Les valeurs ne doivent contenir ni tabulation, ni retour à la ligne.
* Le nom des champs et les valeurs ne doivent pas avoir d'espace avant et après.
* Les fichiers doivent être encodés en UTF-8.
* Les fichiers doivent être contenus dans un dossier compressé au format ZIP.
* L'ordre des lignes dans chaque fichier n'a pas d'importance


## Types

Ceci est une liste avec les [types](types.md) utilisés.
