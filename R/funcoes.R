# funcao 1. obter a base de marmitas -------------------------------------
#' Exibir as marmitas vegenas disponiveis no beleaf
#'
#' @return retorna um tibble com 38 linhas e 6 colunas
#' @export
#'
#' @examples
#' # exibir cardapio
#' buscar_marmitas_veganas()
buscar_marmitas_veganas <- function() {
  html <- "https://www.beleaf.com.br/cardapio-marmitas-veganas" %>%
    xml2::read_html()

  url <- html %>%
    xml2::xml_find_all("//a[contains(@class, 'action more')]") %>%
    purrr::map(~ xml2::xml_attr(.x, "href")) %>%
    purrr::map_dfr(~ tibble::enframe(purrr::set_names(.x, "url")), .id = "item") %>%
    dplyr::select("url" = value)

  nm <- c("nome", "descricao", "preco")
  infos <-
    html %>% xml2::xml_find_all("//div[contains(@class, 'product-item-details')]") %>%
    purrr::map(~ stringr::str_squish(xml2::xml_text(xml2::xml_children(.x)))) %>%
    purrr::map_dfr(~ tibble::enframe(purrr::set_names(.x, nm)), .id = "item") %>%
    tidyr::pivot_wider() %>%
    dplyr::mutate(
      preco = readr::parse_number(preco, locale = readr::locale(decimal_mark = ",")),
      tipo_refeicao = dplyr::case_when(
        stringr::str_detect(nome, "BOLO|MOUSSE|BROWNIE|CHEESECAKE|TORTA") ~ "Doce",
        stringr::str_detect(nome, "CREME DE|MINESTRONE") ~ "Sopa",
        TRUE ~ "Prato"
      )
    )


  dplyr::bind_cols(infos, url)
}


# funcao 2. sortear uma marmita usando a base de marmitas do pacote -------
#' Sortear aleatoriamente uma marmita disponivel no beleaf a partir do(s) tipo(s) de refeicao(oes) e de um preco maximo
#'
#' @param tipo Um vetor de caracteres informando a refeicao: As opcoes disponiveis sao: "Sopa", "Prato", "Doce". O default e c("Sopa", "Prato", "Doce")
#' @param preco_maximo Um inteiro maior que zero
#'
#' @return retorna um vetor de caracteres de comprimento 1
#' @export
#'
#' @examples
#' # saida default da funcao
#' sortear_marmita()
#'
#' # opcoes de sopa
#' sortear_marmita(tipo = "Sopa")
#'
#' # opcoes de Doce
#' sortear_marmita(tipo = "Doce")
#'
#' # refeicoes com preco de no maximo R$ 20,00
#' sortear_marmita(preco_maximo = 20)
sortear_marmita <-
  function(tipo = c("Sopa", "Prato", "Doce"), preco_maximo = 50) {
    marmita_vegana %>%
      dplyr::filter(preco <= preco_maximo, tipo_refeicao %in% tipo) %>%
      dplyr::slice_sample() %>%
      dplyr::mutate(
        texto = glue::glue(
          "Refeicao  sugerida: {nome} \n
      Ingredientes: {descricao} \n
      Preco: R$ {preco} \n
      Acesse o site: {url}"
        )
      ) %>%
      dplyr::pull(texto)
  }

