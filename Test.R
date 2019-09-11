library(dplyr)
library(tidyr)
library(forcats)
library(data.table)
library(ggplot2)
iris <- fread('iris.data')
colnames(iris) <- 
  c("Sepal Length", "Sepal Width", 'Petal Length', 'Petal Width', 'Species')
iris %>% ggplot(aes(x = `Sepal Width`, y = `Sepal Length`, color = Species )) + 
  geom_point() + 
  geom_smooth(method = "lm", formula = y~x)
loan_test <- read.csv("2test.csv")
levels(loan_test$Gender)
#separate by gender and examine income
loan_test %>% group_by(Gender) %>% summarize(mean_income = mean(ApplicantIncome))
