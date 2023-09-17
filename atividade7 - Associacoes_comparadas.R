### CARREGAR PACOTES
pacman::p_load(ccaPP, lsa, minerva, Rfast, dplyr)

#Visualizar base de dados
starwars

#substituir valores NA por 0 nas colunas Altura e Peso
starwars$height[is.na(starwars$height)] = 0
starwars$mass[is.na(starwars$mass)] = 0
starwars$birth_year[is.na(starwars$birth_year)] = 0

### CRIAR FUNÇÃO PARA RODAR VÁRIAS ASSOCIAÇÕES
multi.cor <- function(birth_year, mass) {
  corr = cor(birth_year, mass) # Correlação
  corrD = dcor(birth_year, mass) # Distance correlation
  cos = cosine(birth_year, mass) # Distância do Cosseno 
  maxCor = maxCorProj(birth_year, mass) # Maximal correlation
  MIC = mine(birth_year, mass) #  Maximal Information Coefficient
  Associações = as.data.frame(list(corr, corrD[4], cos, maxCor[1], MIC[1]))
  names(Associações) = c('Correlação', 'Distãncia', 'Cosseno', 'Máxima', 'MIC')
  return(Associações)
}

### EXEMPLO 1 LINEAR
birth_year <- runif(1000, 0, 10)
mass <- 5 - 1.7*birth_year

plot(birth_year, mass) # Plotar o gráfico

corList <- multi.cor(birth_year, mass)
corList

### EXEMPLO 1.1 LINEAR
mass1 <- mass - runif(1000, 0, 1)

plot(birth_year, mass1)

corList1 <- multi.cor(birth_year, mass1)
corList1

### EXEMPLO 1.2 LINEAR
mass2 <- mass - runif(1000, 0, 2)

plot(birth_year, mass2)

corList2 <- multi.cor(birth_year, mass2)
corList2

### EXEMPLO 2 QUADRÁTICA
height <- runif(1000, -10, 10)
mass <- 5 - 1.7*height + height^2

plot(height, mass)

corList <- multi.cor(height, mass)
corList

### EXEMPLO 2.1 QUADRÁTICA
mass1 <- mass - runif(1000, -1, 1)

plot(height, mass1)

corList3 <- multi.cor(height, mass1)
corList3

### EXEMPLO 2.2 QUADRÁTICA
mass2 <- mass - runif(1000, -2, 2)

plot(height, mass2)

corList4 <- multi.cor(height, mass2)
corList4
