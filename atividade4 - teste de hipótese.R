# PACOTES #
pacman::p_load(data.table, dplyr)

#Visualizar estrutura da tabela
starwars


# LEITURA PARA TESTE DE CORRELAÇÃO #
#enem_escola_pe_2019 <- fread('https://raw.githubusercontent.com/hugoavmedeiros/cp_com_r/master/bases_tratadas/ENEM_ESCOLA_2019.csv', dec = ',')

cor.test(starwars$birth_year, starwars$mass)
# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05

t.test(starwars$height, mu = 200)
shapiro.test(starwars$height)
hist(starwars$height)

shapiro.test((starwars$height - min(starwars$height)) / (max(starwars$height) - min(starwars$height)))
hist((starwars$height - min(starwars$height)) / (max(starwars$height) - min(starwars$height)))

# LEITURA PARA TESTE DE FREQUÊNCIAS #
chisq.test(starwars$birth_year, starwars$mass)

# H0: variáveis são independentes / não há associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05