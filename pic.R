#PROJETO INTEGRADOR DE COMPETÊNCIA EM CIÊNCIAS DE DADOS
#Atividade 1 - Você foi contratado pela empresa XPTO para a função de analista de dados.
#Como parte de seu trabalho, foi lhe confiada uma extração de dados contendo os seguintes
#valores: (25, 45, 28, 79, 74, 61, 12, 68, 93, 39, 100), sendo que cada valor na sua atual
#sequência atende pelos títulos: (alface, cenoura, pepino, chuchu, pimenta, couve, rúcula,
                                # cebola, alho, pimentão, alcachofra). Pediram para que você realize o seguinte, utilizando a
#linguagem R, e apresentar os resultados.

#1. Crie um gráfico de barras apresentando o resultado de cada item.
#(a) Tratar itens e variáveis

library(tibble)
itens <- c("alface", "cenoura", "pepino", "chuchu", "pimenta",
           "couve", "rúcula", "cebola", "alho", "pimentão", "alcachofra")
quantidade <- c(25, 45, 28, 79, 74, 61, 12, 68, 93, 39, 100)

#(b) Criar vetor de dados com as variáveis

dados <- tibble(itens,quantidade)

# (c) Criação do gráfico

barplot(dados$quantidade,names.arg = dados$itens,xlab = "Itens",ylab
        = "Quantidades",ylim = c(0,120),main = "Gráfico - Quantidades por
Itens",cex.names = 0.57)


#2. Liste os componentes da matriz dos dados.

 ## # A tibble: 11 x 2
 ## itens quantidade
 ## <chr> <dbl>
 ## 1 alface 25
 ## 2 cenoura 45
 ## 3 pepino 28
 ## 4 chuchu 79
 ## 5 pimenta 74
 ## 6 couve 61
 ## 7 rúcula 12
 ## 8 cebola 68
 ## 9 alho 93
 ## 10 pimentão 39
 ## 11 alcachofra 100

#3. Liste o resultado da soma dessa matriz.


sum(dados$quantidade)

#4. Liste a média aritmética dessa matriz.

mean(dados$quantidade)

# 5. Liste o produto dos elementos dessa matriz.

prod(dados$quantidade)
