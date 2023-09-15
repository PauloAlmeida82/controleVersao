library(ade4)
library(arules)
library(forcats)

data(Orange)

str(Orange)

# conversão em fatores

Orange$Tree <- as.factor(Orange$Tree)

str(Orange)

encoded_data <- model.matrix(~ Tree - 1, data = Orange)

# filtro por tipo de dado

factorsOrange <- unlist(lapply(Orange, is.factor))  
OrangeFactor <- Orange[ , factorsOrange]
str(OrangeFactor)

install.packages("Matrix")

OrangeFactor[] <- lapply(OrangeFactor, as.factor)

Orange$Tree <- as.numeric(Orange$Tree)

Orange <- cbind(
  Orange,
  OrangeFactor
)


plot(table(Orange$age), xlab = "Tree", ylab ="OrangeFactor" , col = "blue")
plot(Orange$age, Orange$Circumference, xlab = "OrangeFactor", ylab = "Tree" , main = "Gráfico de Dispersão")


# Discretização
inteirosOrange <- unlist(lapply(Orange, is.integer))  
OrangeInteiros <- Orange[, inteirosOrange]
str(OrangeInteiros)


# forcats - usando tidyverse para fatores
install.packages("forcats") 
install.packages("tidyverse") 

fator_contador <- fct_count(Orange$OrangeFactor) # conta os fatores

fator_anonimiza <- fct_anon(Orange$OrangeFactor) # anonimiza os fatores

fator_agrupado <- fct_lump(Orange$OrangeFactor, n = 3, other_level = "Menos Comuns")

fator_ordenador <- fct_reorder(Orange$OrangeFactor,Orange$Tree,  .fun = mean) #  reordenar níveis de Orange$OrangeFactor com base na média de Orange$age
                   
                                   
                                   
                                   
                                   
                                   

                                   
