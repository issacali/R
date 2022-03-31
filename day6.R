install.packages("ggplot2")
library(ggplot2)

# GGPLOT Fuction 
# provide data 

# mapping 
#geometory (scater box line)

library(readxl)
x <- read_excel("test1.xlsx", sheet = "Sheet3", 
                     col_types = c("text", "numeric", "text", 
                                   "text"))
View(x)
remove(test1)
ggplot(data=x,mapping = aes(x=Crop,y=Height))+geom_point()
ggplot(x,aes(Crop,Height))+geom_point(size=3)+geom_line()
ggplot(x,aes(Crop,Height))+geom_boxplot()+geom_point(color="red",alpha=.3)
ggplot(x,aes(Crop,Height,color=Water))+geom_boxplot()
ggplot(x,aes(Crop,Height,fill=Water))+geom_boxplot()

# divide on fertilizer type
ggplot(x,aes(Crop,Height,fill=Water))+geom_boxplot()+facet_wrap(~Fert)+labs(x="Crop types",y="Plant height",title  = "plant growth")


# saving a ggplot 
ggsave("ggplot1.tiff",units ="in",width = 8,height = 6,dpi=300,compression="lzw")


ggplot(x,aes(Crop,Height,fill=Water))+geom_boxplot()+facet_wrap(~Fert)+labs(x="Crop types",y="Plant height",title  = "plant growth")+ coord_flip()

ggsave("ggplot1.tiff",units ="in",width = 8,height = 6,dpi=300,compression="lzw")
