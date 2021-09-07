## code to prepare `marmita_vegana` dataset goes here

marmita_vegana <- buscar_marmitas_veganas()

usethis::use_data(marmita_vegana, overwrite = TRUE)
