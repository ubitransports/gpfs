# schools.txt

## Fields description 

| Field Name             |  Required    |  Details |
|------------------------|:------------:|----------|
| school_id              | **Required** |  Le champ school_id est un identifiant unique de l'établissement scolaire. |
| school_name            | **Required** |  Le champ name est le nom de l'établissement scolaire. |
| school_shortname       | **Required** |  Le champ shortname est le nom court de l'établissement scolaire. |
| school_address_1       | Optional     |  Le champ school_adress_1 est l'adresse de l'établissement scolaire. |
| school_address_2       | Optional     |  Le champ school_adress_2 est un complément de l'adresse de l'établissement scolaire. |
| school_address_3       | Optional     |  Le champ school_adress_3 est un complément de l'adresse de l'établissement scolaire. |
| school_address_zipcode | Optional     |  Le champ school_adress_zipcode est le code postal de l'établissement scolaire. |
| school_address_city    | Optional     |  Le champ address_city est la ville de l'établissement de l'établissement scolaire. |
| school_address_country | Optional     |  Le champ address_country est le pays de l'établissement de l'établissement scolaire. |
| school_email           | Optional     |  Le champ email est l'adresse mail de contact de l'établissement de l'établissement scolaire. |
| school_lat             | Optional     |  Le champ school_lat permet de positionner l'établissement grâce à une position GPS. La latitude GPS doit être renseignée avec le système géodésique WGS 84 (https://fr.wikipedia.org/wiki/WGS_84). |
| school_lon             | Optional     |  Le champ school_lon permet de positionner l'établissement grâce à une position GPS. La longitude GPS rdoit être enseignée avec le système géodésique WGS 84 (https://fr.wikipedia.org/wiki/WGS_84) |
| school_open_on         | Optional     |  Le champ open_on permet de définir les jours de la semaine où l'établissement est ouvert. Les valeurs valides pour chaque jour sont :  0 = Non et 1 = Oui.  Exemples : ouvert tous les jours de la semaine : 1111111, ouvert du lundi au vendredi : 1111100. |
