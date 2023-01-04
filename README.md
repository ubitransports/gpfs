# GPFS Documentation website

Source of documentation website for GPFS (General Passenger Feed Specification)

[ubitransports.github.io/gpfs](http://ubitransports.github.io/gpfs)


## Complete the docs :

For a new file:
* add a md file name with the GPFS file (eg: for the `passengers.txt` add the file `passenger.txt.md`)
* Add it in the `couscous.yaml` :
    
    ```yaml
    passenger_tags.txt:
        text: passenger_tags.txt
        relativeUrl: passenger_tags.txt.html
    ```

## Usage

### Run locally 

To be able to validate locally the modification, run this two commands :

    $ composer install
    $ php vendor/couscous/couscous/bin/couscous preview 

you can go to the url display on the prompt. 
If you want to use a specific adress/port, add it to the last command.

### To deploy the website

    $ php vendor/couscous/couscous/bin/couscous deploy
