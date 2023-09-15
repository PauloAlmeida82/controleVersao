# PACOTES #
pacman::p_load(data.table)
data("Orange")

# LEITURA PARA TESTE DE CORRELAÇÃO #
Correlacao <- data("Orange")

cor.test(Orange$age, Orange$circumference)
# H0: variáveis são independentes / não têm associação. p-valor (p-value) > 0.05
# H1: variáveis são dependentes / há associação. p-valor (p-value) <= 0.05

t.test(Orange$age, mu = 500.0)
shapiro.test(Orange$age)
hist(Orange$age)

shapiro.test((Orange$age - min(Orange$age)) / (max(Orange$age) - min(Orange$age)))
hist((Orange$age - min(Orange$age)) / (max(Orange$age) - min(Orange$age)))

