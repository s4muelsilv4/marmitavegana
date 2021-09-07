
<!-- README.md is generated from README.Rmd. Please edit that file -->

# marmitavegana

<!-- badges: start -->
<!-- badges: end -->

Este pacote disponibiliza o cardápio de comida vegana do restaurante
virtual beleaf.

## Installation

O pacote `marmitavegana` está em desenvolvimento. A versão em progresso
pode ser instalada a partir no [GitHub](https://github.com/) como segue:

You can install the released version of marmitavegana from
[CRAN](https://CRAN.R-project.org) with:

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
library(DT)
```

Após o pacote ser carregado, a função `buscar_marmitas_veganas` pode ser
utilizada para exibir as opções de pratos:

``` r
buscar_marmitas_veganas() %>% 
  knitr::kable()
```

| item | nome                                     | descricao                                                 | preco | tipo\_refeicao | url                                                                  |
|:-----|:-----------------------------------------|:----------------------------------------------------------|------:|:---------------|:---------------------------------------------------------------------|
| 1    | TAGLIATELLE AO FUNGHI                    | Tomatinhos confit com alho-poró                           | 28.90 | Prato          | <https://www.beleaf.com.br/tagliatelle-ao-funghi>                    |
| 2    | MACARONI COM CHEDDAR DE CASTANHAS        | Farofa de sementes e espinafre refogado                   | 28.90 | Prato          | <https://www.beleaf.com.br/macaroni-com-cheddar-de-castanhas>        |
| 3    | RAVIOLI DE ESPINAFRE AO SUGO             | Com castanhas do Pará                                     | 28.90 | Prato          | <https://www.beleaf.com.br/ravioli-de-espinafre-sugo>                |
| 4    | YAKISOBA                                 | Shiitake, brócolis e cenoura salteados                    | 24.90 | Prato          | <https://www.beleaf.com.br/yakisoba>                                 |
| 5    | ARROZ BIRYANI DE JACA                    | Couve-flor, ervilhas e mix de sementes                    | 24.90 | Prato          | <https://www.beleaf.com.br/arroz-biryani-de-jaca>                    |
| 6    | VEGETAIS ASIÁTICOS AO MOLHO DE COCO      | Grão de bico, mix de quinoa, sementes e purê de cenoura   | 21.90 | Prato          | <https://www.beleaf.com.br/vegetais-asiaticos-ao-molho-de-coco>      |
| 7    | MOQUECA DE PUPUNHA E CASTANHA DE CAJU    | Arroz e farofa de cenoura                                 | 24.90 | Prato          | <https://www.beleaf.com.br/moqueca-de-pupunha-e-castanha-de-caju>    |
| 8    | ARROZ DE FUNGHI AO CREME DE CASTANHAS    | Abóbora cabotian, ervilha e cenoura salteadas             | 25.90 | Sopa           | <https://www.beleaf.com.br/arroz-de-funghi-ao-creme-de-castanhas>    |
| 9    | TUTU DE FEIJÃO E TOFU DEFUMADO           | Arroz integral, couve, abóbora e banana glaceadas         | 20.90 | Prato          | <https://www.beleaf.com.br/tutu-de-feijao-e-tofu-defumado>           |
| 10   | LEGUMES E COGUMELOS DE PANELA            | Quinoa e purê de mandioquinha                             | 23.90 | Prato          | <https://www.beleaf.com.br/legumes-e-cogumelos-de-panela>            |
| 11   | BOBÓ DE BANANA DA TERRA                  | Arroz jasmim e espinafre refogado                         | 26.90 | Prato          | <https://www.beleaf.com.br/bobo-de-banana-da-terra>                  |
| 12   | STROGONOFF DE DOIS COGUMELOS             | Arroz e brócolis refogado no alho                         | 26.90 | Prato          | <https://www.beleaf.com.br/strogonoff-de-dois-cogumelos>             |
| 13   | FEIJUCA DO FUTURO™                       | Arroz, couve refogada e tofu defumado                     | 25.70 | Prato          | <https://www.beleaf.com.br/feijuca-do-futurotm>                      |
| 14   | ALMÔNDEGAS DO FUTURO™                    | Espaguete ao molho sugo                                   | 27.90 | Prato          | <https://www.beleaf.com.br/almondegas-do-futurotm>                   |
| 15   | LASANHA DA CASA                          | Molho bolonhesa e creme de castanhas com tofu             | 28.90 | Prato          | <https://www.beleaf.com.br/lasanha-da-casa>                          |
| 16   | EMPANADINHOS SEM-FRANGO                  | Creme de milho, arroz integral e legumes assados          | 27.30 | Prato          | <https://www.beleaf.com.br/empanadinhos-sem-frango>                  |
| 17   | COUVE-FLOR E GRÃO DE BICO AO CURRY       | Cevadinha com cenoura ralada                              | 22.90 | Prato          | <https://www.beleaf.com.br/couve-flor-e-gr-o-de-bico-ao-curry>       |
| 18   | SEM-FRANGO À PARMEGIANA                  | Arroz integral e batata sauté                             | 27.30 | Prato          | <https://www.beleaf.com.br/sem-frango-a-parmegiana>                  |
| 19   | FALAFEL AO MOLHO DE HORTELÃ              | Homus de beterraba, arroz, lentilha e cebola caramelizada | 27.30 | Prato          | <https://www.beleaf.com.br/falafel-ao-molho-de-hortel>               |
| 20   | BOWL DE GRÃO DE BICO E TOMATE CONFIT     | Couve-flor na páprica e vegetais mediterrâneos            | 20.90 | Prato          | <https://www.beleaf.com.br/bowl-de-grao-de-bico-e-tomate-confit>     |
| 21   | TOFU TIKKA MASALA                        | Arroz jasmim e ervilha fresca                             | 25.70 | Prato          | <https://www.beleaf.com.br/tofu-tikka-masala>                        |
| 22   | PAELLA DE FRUTOS DO MATO                 | Brócolis, tomates confit e alga nori                      | 20.90 | Prato          | <https://www.beleaf.com.br/paella-de-frutos-do-mato>                 |
| 23   | SEM-CARNE MOÍDA COM LEGUMES              | Feijão carioca, arroz cateto e trigo integral             | 20.90 | Prato          | <https://www.beleaf.com.br/sem-carne-moida-com-legumes>              |
| 24   | RAGU DEFUMADO DE JACA VERDE              | Polenta cremosa e cenoura assada                          | 23.90 | Prato          | <https://www.beleaf.com.br/ragu-defumado-de-jaca-verde>              |
| 25   | NHOQUE DE BATATAS AO COGUMELO PORTOBELLO | Molho de castanha de caju e mostarda dijon                | 27.30 | Prato          | <https://www.beleaf.com.br/nhoque-de-batatas-ao-cogumelo-portobello> |
| 26   | GRÃO DE BICO E MANGA AO MOLHO DE TAHINE  | Vegetais marroquinos, quinoa vermelha                     | 24.80 | Prato          | <https://www.beleaf.com.br/grao-de-bico-e-manga-ao-molho-de-tahine>  |
| 27   | CUSCUZ MARROQUINO                        | Lentilha com legumes, couve refogada                      | 22.90 | Prato          | <https://www.beleaf.com.br/cuscuz-marroquino>                        |
| 28   | BAIÃO DE DOIS                            | Mandioca assada, couve refogada                           | 23.90 | Prato          | <https://www.beleaf.com.br/baiao-de-dois>                            |
| 29   | BURRITO BOWL                             | Milho verde, tomate, cenoura e repolho roxo               | 20.90 | Prato          | <https://www.beleaf.com.br/burrito-bowl>                             |
| 30   | CREME DE MILHO PROTEICO                  | Brócolis com edamame, arroz sete grãos com trigo integral | 20.90 | Sopa           | <https://www.beleaf.com.br/creme-de-milho-proteico>                  |
| 31   | CREME DE CENOURA                         | Leite de coco e mandioquinha                              | 16.90 | Sopa           | <https://www.beleaf.com.br/creme-de-cenoura>                         |
| 32   | CREME DE ABÓBORA                         | Semente de chia e gengibre                                | 16.90 | Sopa           | <https://www.beleaf.com.br/creme-de-abobora>                         |
| 33   | MINESTRONE                               | Espinafre, abobrinha e feijão branco                      | 16.90 | Sopa           | <https://www.beleaf.com.br/minestrone>                               |
| 34   | CHEESECAKE DE AMORA                      | Biomassa de banana verde e leite de coco                  |  7.35 | Doce           | <https://www.beleaf.com.br/cheesecake-de-amora>                      |
| 35   | BOLO DE BANANA COM AMÊNDOAS E SEM AÇÚCAR | Aveia, Linhaça, Chia E Canela - Sem Açúcar                |  6.23 | Doce           | <https://www.beleaf.com.br/bolo-de-banana-com-am-ndoas-e-sem-acucar> |
| 36   | TORTA DE MAÇÃ COM ESPECIARIAS            | Açúcar Demerara, Aveia e Linhaça                          |  8.90 | Doce           | <https://www.beleaf.com.br/torta-de-mac-com-especiarias>             |
| 37   | BROWNIE DE CHOCOLATE E NOZES             | Chocolate 100% cacau                                      |  8.90 | Doce           | <https://www.beleaf.com.br/brownie-de-chocolate-e-nozes>             |
| 38   | BOLO DE MAÇÃ COM CANELA                  | Açúcar Mascavo e Castanha do Pará                         |  8.90 | Doce           | <https://www.beleaf.com.br/bolo-de-mac-com-canela>                   |
| 39   | MOUSSE DE MARACUJÁ                       | Creme de tofu e castanha de caju                          |  9.50 | Doce           | <https://www.beleaf.com.br/mousse-de-maracuja>                       |

A escolha aleatória de uma refeição (`Prato`, `Sopa`, `Doce`) que tenha
valor inferior a R$ 20,00 pode ser feita utilizando a função
`sortear_marmita`, conforme mostrado a seguir:

``` r
sortear_marmita(tipo = "Prato", preco_maximo = 20)
```
