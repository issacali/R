# Publicatin Ready bar Plots 

library(ggplot2)
library(ggthemes)
#install.packages("multcompView")
library(multcompView)
library(dplyr)


# Load the data set 

data("chickwts")
View(chickwts)


# specifications of the data base 
tibble(chickwts)
dev.off()


# check various parameters like mean mode sd ...etc

mean_data <- group_by(chickwts,feed) %>% #feed is our treatment in this  example
  summarise(weight_mean=mean(weight),sd=sd(weight)) %>%  # to calculate mean and sd 
  arrange(desc(weight_mean))   # to arrange in decending order
tibble(mean_data)



# performing annova


anova <- aov(weight~feed,data=chickwts)
summary(anova)


#### performing tuckey test 
tukey <- TukeyHSD(anova)
tukey

#################

# applying multcompview function
# drawing multiple comperession letters using mult compview package ``
group_letters <- multcompLetters4(anova,tukey)
group_letters

# making a data frame of group letters 

group_letters <- as.data.frame.list(group_letters$feed)

# Adding to the mean data

mean_data$group_letters <- group_letters$Letters
tibble(mean_data)


# Drawing the publication ready bar plots 

p <- ggplot(mean_data, aes(x = feed,y=weight_mean))+
  geom_bar(stat="identity",aes(fill = feed),show.legend = FALSE)+
  geom_errorbar(aes(ymin=weight_mean-sd,ymax=weight_mean+sd,xmin=weight_mean+sd,xmax=weight_mean-sd),width=0.1)+
  geom_text(aes(label= group_letters, y = weight_mean+sd),vjust=0.4)+
  scale_fill_brewer(palette="BrBG",direction=1)+
  labs(x="Feed Type",
       y=" chicken weight (g)",
       title="Publication ready bar plot",
       subtitle=" r with ammar ",
       fill="feed type")+ylim(0,410)
  
  ggthemes::theme_par();p

  
ggsave("publication ready plot.pdf")
 

# saving upto 4k barplots in R

tiff("Barplot.tiff",units="in",width=10,height=6,res=100,compression = "lzw")
p
dev.off()
  
  
  
  
  
  
 

    
    
   

