## QUI-QUADRADO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load( ggplot2, data.table, dplyr, corrplot)

#Visualizar base de dados
starwars

#substituir valores NA por 0 nas colunas Altura, Peso e Idade
starwars$height[is.na(starwars$height)] = 0
starwars$mass[is.na(starwars$mass)] = 0
starwars$birth_year[is.na(starwars$birth_year)] = 0

# TABELA DE CONTINGÊNCIA
starwars_table <- table(starwars$gender, starwars$mass)
starwars_table

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
ggplot(starwars) + aes(x = height , fill = gender) + geom_bar(position = "fill")

# TESTE QUI QUADRADO #
starwars_test <- chisq.test(starwars_table)
starwars_test
starwars_test$observed
starwars_test$expected

# CORRPLOT DAS VARIÁVEIS #
corrplot(starwars_test$residuals, is.cor = FALSE)
