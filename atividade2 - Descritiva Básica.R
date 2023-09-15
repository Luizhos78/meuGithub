### Estatística Descritiva com R
?iris
?starwars
#Carregando pacote
pacman::p_load(dplyr, closure)

#Visualizar estrutura da tabela
starwars

#substituir valores NA por 0 nas colunas Height e Mass
starwars$height[is.na(starwars$height)] = 0
starwars$mass[is.na(starwars$mass)] = 0
starwars$birth_year[is.na(starwars$birth_year)] = 0

## Tabela de frequência absoluta da variável species da base starwars
table(starwars$species)

## Tabela de frequência relativa da variável species da base starwars
prop.table(table(starwars$species))

## Média da variável das massas dos personagens da base starwars
mean(starwars$mass)

## Mediana da variável das alturas dos personagens da base starwars
median(starwars$height)

## Separatrizes da variável da altura dos personagens da base starwars
quantile(starwars$height, probs=0.75)
quantile(starwars$height, probs=0.10)
quantile(starwars$height, probs=0.95)
boxplot(starwars$height) # boxplot - gráfico que resume as sepatrizes

## Desvio-padrão da variável da altura dos personagens da base starwars
sd(starwars$height)
plot(starwars$height)

## Sumário descritivo básico das variáveis
summary(starwars)

## Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(starwars[ , c(2,3,7)])
hist(starwars$height) # histograma - gráfico que permite conhecer a curva dos dados
