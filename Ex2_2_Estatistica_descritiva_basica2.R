### Estatística Descritiva com R
## Tabela de frequência absoluta da variável Species da base iris
library(datasets)
data(Orange)
#table(iris$Species)

## Tabela de frequência relativa da variável Species da base iris
prop.table(table(Orange$Tree))

## Média da variável age da base orange
mean(Orange$age)

## Mediana da variável age da base orange
median(Orange$age)

## Separatrizes da variável age da base orange
quantile(Orange$age, probs=0.75)
quantile(Orange$age, probs=0.10)
quantile(Orange$age, probs=0.95)
boxplot(Orange$age) # boxplot - gráfico que resume as sepatrizes

## Desvio-padrão da variável age da base orange
sd(Orange$age)
plot(Orange$age)

## Sumário descritivo básico das variáveis
summary(Orange)

## Sumário descritivo completo das variáveis usando o pacote fBasics
pacman::p_load(fBasics)
basicStats(Orange[ , c(2:3)])
hist(Orange$age) # histograma - gráfico que permite conhecer a curva dos dados

