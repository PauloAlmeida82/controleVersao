## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(corrplot, dplyr, ggplot2)

# BASE DE DADOS Orange SEM AS Tree #

Orange2 <- Orange %>% select(-Tree)

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS #
cor(Orange2)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(Orange2)

# CORRPLOT DAS VARIÁVEIS #
OrangeCor <- cor(Orange2)
corrplot(OrangeCor, method = "number", order = 'alphabet')
corrplot(OrangeCor, order = 'alphabet') 
corrplot(OrangeCor, method = "square", order = 'AOE')

