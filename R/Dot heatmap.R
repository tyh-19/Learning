library(ggplot2)
library(plyr)
library(reshape2)
library(scales)

#import data
kreuz <- read.csv("http://datasets.flowingdata.com/ppg2008.csv")
kreuz.m <- melt(kreuz)
head(kreuz)
write.csv(kreuz,"kreuz.csv")
head(kreuz.m)
write.csv(kreuz.m,"kreuz.m.csv")

#reshape data
plot <- read.csv("NES1.csv", header = T)
plot.m <- melt(plot, value.name = "NES")
head(plot)
head(plot.m,10)
write.csv(plot.m,"NES.m.csv")

#import data
plot <- read.csv("ES_FDR.m.csv", header = T)
(p <- ggplot(plot, aes(GeneSet, Rank)) +
    geom_point(aes(size = NES, colour = FDR))+
    #geom_tile(aes(fill = value), colour = "white") +
    scale_color_gradient2(breaks=waiver(), name="FDR", 
                         low ="Red", mid= ("white"), high = "#000000", midpoint = 0.25))
base_size <- 10
p + theme_grey(base_size = base_size) +
  theme_bw()+
  labs(x = "GeneSet", y = "Rank", title = "GSEA")+
  theme(legend.position = "right", axis.ticks = element_blank(), 
        axis.text.x = element_text(size = base_size *0.8, angle = 45, hjust = 1,
                                   colour = "grey50"))
