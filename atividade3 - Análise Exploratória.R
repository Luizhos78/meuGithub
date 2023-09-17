## Carregar pacotes que serão usados
pacman::p_load(dplyr, ggplot2)

#Visualizar estrutura da tabela
str(starwars)

#substituir valores NA por 0 nas colunas Altura, Peso e Idade
starwars$height[is.na(starwars$height)] = 0
starwars$mass[is.na(starwars$mass)] = 0
starwars$birth_year[is.na(starwars$birth_year)] = 0

# Gráfico de Caixas Univariado
starwars %>% ggplot(aes(y = height)) + geom_boxplot( color = 'blue')

# Gráfico de Caixas Multivariado
starwars %>% ggplot(aes(y = height, x = name, fill = name, color = name, size=.2)) + geom_boxplot(size=.2) + theme(axis.text.x = element_blank(), axis.ticks.x = element_blank()) + geom_point(shape = 20, size = 3)

# Histograma
starwars %>% ggplot(aes(x = height, fill = gender)) + geom_histogram()

# Densidade
starwars %>% ggplot(aes(x = height, fill = gender, alpha = .2)) + geom_density()

# Séries Temporais
starwars %>% group_by(height) %>% summarise(mass = sum(mass)) %>% ggplot(aes(x = height, y = mass, color = height)) + geom_line()

# Barras
starwars %>% ggplot(aes(x = birth_year, y = gender, fill = gender)) + geom_bar(stat = "identity")

# Dispersão
starwars %>% ggplot(aes(x = birth_year, y = height, fill = height )) + geom_point(aes(color = height))
