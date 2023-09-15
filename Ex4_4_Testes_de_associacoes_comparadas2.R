### CARREGAR PACOTES
pacman::p_load(ccaPP, lsa, minerva, Rfast)
data <- Orange
### CRIAR FUNÇÃO PARA RODAR VÁRIAS ASSOCIAÇÕES
multi.cor <- function(age, circumference) {
  c(
    cor = cor(age, circumference), # Correlação
    dcor = dcor(age, circumference), # Distance correlation
    cosine = cosine(age, circumference), # Distância do Cosseno 
    maxCor = maxCorProj(age, circumference), # Maximal correlation
    MIC = mine (age, circumference) #  Maximal Information Coefficient
  )
}

### EXEMPLO 1 LINEAR
age <- runif(1000, 0, 10)
circumference <- 5 - 1.7*x

plot(age, circumference)# Plotar o gráfico

corList <- multi.cor(age, circumference)
names(corList)
corList <- corList[c(1,5,6,7, 15)]
corList

### EXEMPLO 1.1 LINEAR
circumference1 <- circumference - runif(1000, 0, 1)

plot(age, circumference1)

corList1 <- multi.cor(age, circumference1)
corList1 <- corList1[c(1,5,6,7, 15)]
corList1

### EXEMPLO 1.2 LINEAR
circumference2 <- circumference - runif(1000, 0, 2)

plot(age, circumference2)

corList2 <- multi.cor(age, circumference2)
corList2 <- corList2[c(1,5,6,7, 15)]
corList2



### EXEMPLO 2 QUADRÁTICA
k <- runif(1000, -10, 10)
l <- 5 - 1.7*k + k^2

plot(k, l)

corList <- multi.cor(k, l)
corList <- corList[c(1,5,6,7, 15)]
corList

### EXEMPLO 2.1 QUADRÁTICA
l1 <- l - runif(1000, -1, 1)

plot(k, l1)

corList3 <- multi.cor(k, l1)
corList3 <- corList3[c(1,5,6,7, 15)]
corList3

### EXEMPLO 2.2 QUADRÁTICA
l2 <- l - runif(1000, -2, 2)

plot(k, l2)

corList4 <- multi.cor(k, l2)
corList4 <- corList4[c(1,5,6,7, 15)]
corList4

