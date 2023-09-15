## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(corrplot, dplyr, ggplot2)

# BASE DE DADOS STARWARS SELECIONANDO DUAS VARIÁVEIS Altura e Idade
starwars2 <- starwars %>% select(height,birth_year)

# TABELA DE CORRELAÇÃO COM DUAS VARIÁVEIS Altura e Idade#
cor(starwars2)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(starwars2)

# CORRPLOT DAS VARIÁVEIS #
starwarsCor <- cor(starwars2)
corrplot(starwarsCor, method = "number", order = 'alphabet')
corrplot(starwarsCor, order = 'alphabet')