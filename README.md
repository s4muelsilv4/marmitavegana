
<!-- README.md is generated from README.Rmd. Please edit that file -->

# marmitavegana <img src="man/figures/marmitavegana_hex.png" align="right" width = "120px"/>

<!-- badges: start -->
<!-- badges: end -->

Este pacote disponibiliza o cardápio de comida vegana do restaurante
virtual [beleaf](https://www.beleaf.com.br/cardapio-marmitas-veganas)

## Instalação

O pacote `marmitavegana` está em desenvolvimento. A versão em progresso
pode ser instalada a partir no [GitHub](https://github.com/) como segue:

``` r
# install.packages("devtools")
devtools::install_github("s4muelsilv4/marmitavegana")
```

## Uso

O pacote `marmitavegana` pode ser carregado como qualquer outro pacote
do R:

``` r
library(marmitavegana)
library(magrittr)
```

Após o pacote ser carregado, a função `buscar_marmitas_veganas` pode ser
utilizada para exibir as opções de pratos:

``` r
buscar_marmitas_veganas() %>% 
  head(5) %>% 
  knitr::kable()
```

| item | nome                              | descricao                               | preco | tipo\_refeicao | url                                                           |
|:-----|:----------------------------------|:----------------------------------------|------:|:---------------|:--------------------------------------------------------------|
| 1    | TAGLIATELLE AO FUNGHI             | Tomatinhos confit com alho-poró         |  28.9 | Prato          | <https://www.beleaf.com.br/tagliatelle-ao-funghi>             |
| 2    | MACARONI COM CHEDDAR DE CASTANHAS | Farofa de sementes e espinafre refogado |  28.9 | Prato          | <https://www.beleaf.com.br/macaroni-com-cheddar-de-castanhas> |
| 3    | RAVIOLI DE ESPINAFRE AO SUGO      | Com castanhas do Pará                   |  28.9 | Prato          | <https://www.beleaf.com.br/ravioli-de-espinafre-sugo>         |
| 4    | YAKISOBA                          | Shiitake, brócolis e cenoura salteados  |  24.9 | Prato          | <https://www.beleaf.com.br/yakisoba>                          |
| 5    | ARROZ BIRYANI DE JACA             | Couve-flor, ervilhas e mix de sementes  |  24.9 | Prato          | <https://www.beleaf.com.br/arroz-biryani-de-jaca>             |

Neste exemplo apenas 5 pratos, `head(5)`, foram mostrados.

A escolha aleatória de uma refeição (`"Prato"`, `"Sopa"`, `"Doce"`) que
tenha valor inferior a R$ 40,00 pode ser feita utilizando a função
`sortear_marmita`, conforme mostrado a seguir:

``` r
sortear_marmita(tipo = "Prato", preco_maximo = 40)
#> Refeicao  sugerida: RAGU DEFUMADO DE JACA VERDE 
#> 
#> Ingredientes: Polenta cremosa e cenoura assada 
#> 
#> Preco: R$ 23.9 
#> 
#> Acesse o site: https://www.beleaf.com.br/ragu-defumado-de-jaca-verde
```
