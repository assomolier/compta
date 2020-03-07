
<!-- README.md is generated from README.Rmd. Please edit that file -->

# factures

Package interne de création de factures pour l’asso.

``` r
library(compta)
get_fac() %>%
  new_fac_num() %>%
  create_fac(
    client = "CLIENT",
    contact = "PERSONNE EN CHARGE",
    adresse = "LA BAS",
    objet = "Sponsoring",
    quantite = 1,
    prix = 1000,
    quoi = "Sponsoring satRday Bordeaux"
  )
```
