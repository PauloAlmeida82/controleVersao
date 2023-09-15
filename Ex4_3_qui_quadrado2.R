## QUI-QUADRADO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(data.table, ggplot2)

# AGORA, A BASE DE DADOS CAR EVALUATION #
dados <- Orange


# TABELA DE CONTINGÊNCIA #
circumference_table <- table(Orange$age, Orange$circumference)  #turno e mes
circumference_table

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
ggplot(Orange, aes(x = age, y = circumference, color = as.factor(age))) +
  geom_point() +
  labs(x = "Age", y = "Circumference", color = "Age")


# Gráfico de barras empilhadas
ggplot(Orange) + aes(x = as.factor(age), fill = as.factor(circumference)) +
  geom_bar(position = "fill") +
  labs(x = "Age", y = "Proportion", fill = "Circumference")

# TESTE QUI QUADRADO #
Orange_test <- chisq.test(circumference_table)
Orange_test  #turno e mes
Orange_test$observed
breast_cancer_test$expected

# CORRPLOT DAS VARIÁVEIS #
library(corrplot)
correlation_Orange <- cor(circumference_table)
corrplot(correlation_Orange, method = "color")

