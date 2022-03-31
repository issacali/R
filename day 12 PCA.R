# pCA Principal Component Analysis ....

data()
data("iris")
# pca
x <- prcomp(iris[,-5],center=TRUE,scale=TRUE) 
print(x)
summary(x)




iris <- cbind(iris,x$x)
View(iris)


# Groupong by ggplot2

ggplot(iris,aes(PC1,PC2,col=iris$Species,fill=iris$Species))+
  stat_ellipse(geom="polygon",color="black",alpha=0.5)+
  geom_point(shape=21,col="black")


# PCA plot


install.packages("factoextra")
install.packages("FactoMineR")

library(factoextra)
library(FactoMineR)


# pca table

iris.pca <- PCA(iris[,-5],graph=TRUE, scale.unit=TRUE)

# Screep Plot

fviz_eig(iris.pca,addlabels = TRUE)

# Y limit and x limit 

fviz_eig(iris.pca,addlabels = TRUE,xlim=c(0,10),ylim=c(0,70))


# PCA plot

fviz_pca_var(iris.pca,col.var = "cos2",gradient.col=c("#32a852","#8532a8","#3832a8","#a83251"),repel=TRUE)+
  labs(x="PC1(49%)",y="PC2(23%)",title="PCA pof parameters",color="cos2")

# saving plot


fviz_pca_var(iris.pca,col.var = "cos2",gradient.col=c("#32a852","#8532a8","#3832a8","#a83251"),repel=TRUE)+
  labs(x="PC1(49%)",y="PC2(23%)",title="PCA pof parameters",color="cos2")+
  ggsave("pca of parameters.pdf")
 

