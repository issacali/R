# P value teeth growth plot

install.packages("ggplot2")
library(ggplot2)

install.packages("ggpval")

library(ggpval)

data("ToothGrowth")


# create a jitter plot of the sleep data set
# and indicate the means
p <- ggplot(ToothGrowth, aes(x = supp, y = len))+
  geom_boxplot(aes(shape = "circle",widht=0.5))+
  stat_boxplot(geom="errorbar",width=0.1)+
  labs(x="Suplement",y="Length", fill="Supliment")+
  ggthemes::theme_par()+
  facet_wrap(vars(dose));p

# adding P value 

add_pval(p,pairs = list(c(1,2)),test="t.test")
  
