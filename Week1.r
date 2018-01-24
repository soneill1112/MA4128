install.packages("dplyr")
library(dplyr)
sessionInfo()
mtcars
mtcars %>% head()
mtcars %>% dim()
mtcars %>% nrow
mtcars %>% nrow()
mtcars %>% ncol()
mtcars %>% names()
mtcars %>% class()
mtcars %>% summary()
iris %>% summary()
library(dyplr)
library(dplyr)
iris %>% glipmse()
iris %>% glimpse()
iris2 <- filter(iris, Species == "Setosa")
iris2 <- iris %>% filter(iris, Species == "Setosa")
iris2 %>% dim()
iris3 <- iris %>% filter(Sepal.Length > 2)
iris3 %>% dim()
iris3 <- iris %>% filter(Sepal.Length > 5)
iris3 %>% dim()
iris3 <- iris %>% filter(Sepal.Length > 5.5)
iris3 %>% dim()
iris3 <- iris %>% filter(Sepal.Length > 5.2)
iris3 %>% dim()
iris3 <- iris %>% filter(Sepal.Length > 5.4)
iris3 %>% dim()
iris3 <- iris %>% filter(Sepal.Length > 5.6)
iris3 %>% dim()

iris %>% group_by(Species) %>% summarize(meanSL= mean(Sepal.Length),
					varSL = var(Sepal.Length),
					sdSL = sd(Sepal.Length))

mtcars %>% group_by(cyl)%>% summarize (mean(mpg))

mtcars %>% mutate(sqrtMPG = sqrt(mpg), logMPG = log(mpg)) %>% 
		select(mpg,sqrtMPG,logMPG,everything()) %>% head(5)
