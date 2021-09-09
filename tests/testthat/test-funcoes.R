# buscar_marmitas_veganas() -----------------------------------------------

test_that("buscar_marmitas_veganas funciona", {

  # tibble
  expect_s3_class(buscar_marmitas_veganas(), "tbl")
  expect_equal(ncol(buscar_marmitas_veganas()), 6)
  expect_equal(nrow(buscar_marmitas_veganas()), 38)

  # values
  expect_equal(buscar_marmitas_veganas()$preco[1], 28.9)
  expect_equal(buscar_marmitas_veganas()$tipo_refeicao[2], "Prato")

  # erros
  expect_error(buscar_marmitas_veganas(2),"unused argument")
  expect_error(buscar_marmitas_veganas("Doces"),"unused argument")
})
####


# sortear_marmita() -------------------------------------------------------

test_that("sortear_marmita funciona", {

  # tibble
  expect_s3_class(sortear_marmita(), "glue")
  expect_equal(length(sortear_marmita()), 1)
})

