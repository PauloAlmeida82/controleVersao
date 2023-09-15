## Carregar pacotes que serão usados
pacman::p_load(dplyr, ggplot2)

# Gráfico de Caixas Univariado

Orange %>% ggplot(aes(y = age)) + geom_boxplot()

# Gráfico de Caixas Multivariado

Orange %>% ggplot(aes(y = age, x = Tree)) + geom_boxplot()

#Destque para os outliers
ggplot(Orange, aes(y = age, x = Tree)) + geom_boxplot(outlier.color = "red")

#Utilizando o argumento notch = T
ggplot(Orange, aes(y = age, x = Tree)) + geom_boxplot(notch = T)

#Colorindo por categoria
ggplot(Orange, aes(y = age, x = Tree, fill = Tree)) +  geom_boxplot() 


#Gráfico de barras
ggplot(Orange, aes(x = Tree)) +
  geom_bar() +
  labs(x = "Tree", y = "age") +
  theme_minimal()

#Gráfico de dispersão
plot
plot(Orange$circumference, Orange$age, 
  xlab  = "Circumference", ylab = "Age", 
  main = "Gráfico de Dispersão de Circumference vs. Age")


    # Histograma

Orange %>% ggplot(aes(x = age)) + geom_histogram()

ggplot(Orange, aes(y = age, x = Tree, fill = Tree)) +
  geom_boxplot(show.legend = F, alpha = .5) +
  #scale_y_continuous(limits = c(4,8), breaks = seq(4,8,1)) +
  #theme_classic(base_size = 18) +
  xlab("Tree") + 
  ylab("Age")


# Densidade

Orange %>% ggplot(aes(x = Tree)) + geom_density()


