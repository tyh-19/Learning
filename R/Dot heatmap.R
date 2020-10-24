library(ggplot2)
library(plyr)
library(reshape2)
library(scales)
setwd("/Users/yuhuan/Desktop/Seafile/Lulab/2020/02.Project/01.Sequencing and Cancer/01. Cancer plasma microbiome/Plasma_Tissue/GSEA/20201021 tumor signal in PBMC or plasma based on TCGA/")
#import data
kreuz <- read.csv("http://datasets.flowingdata.com/ppg2008.csv")
kreuz.m <- melt(kreuz)
head(kreuz)
write.csv(kreuz,"kreuz.csv")
head(kreuz.m)
write.csv(kreuz.m,"kreuz.m.csv")

#reshape data
plot <- read.csv("FDR_1021.csv", header = T)
plot.m <- melt(plot, value.name = "FDR")
head(plot)
head(plot.m,10)
write.csv(plot.m,"FDR_1021.m.csv")

#import data
plot <- read.csv("ES_FDR_1021.m.csv", header = T)
plot$GeneSet <- factor(plot$GeneSet,levels=c("/COAD_T_vs_N_up50","/COAD_T_vs_N_up100","/COAD_T_vs_N_up200","/COAD_T_vs_N_up500","/COAD_T_vs_N_up1000","/COAD_T_vs_N_down50","/COAD_T_vs_N_down100","/COAD_T_vs_N_down200","/COAD_T_vs_N_down500","/COAD_T_vs_N_down1000","/READ_T_vs_N_up50","/READ_T_vs_N_up100","/READ_T_vs_N_up200","/READ_T_vs_N_up500","/READ_T_vs_N_up1000","/READ_T_vs_N_down50","/READ_T_vs_N_down100","/READ_T_vs_N_down200","/READ_T_vs_N_down500","/READ_T_vs_N_down1000"))
(p <- ggplot(plot, aes(GeneSet, Rank)) +
    geom_point(aes(size = FDR, colour = NES))+
    #geom_tile(aes(fill = value), colour = "white") +
    scale_color_gradient2(breaks=waiver(), name="NES", 
                         low ="Red", mid= ("white"), high = "#000000", midpoint = 0))
base_size <- 10
p + theme_grey(base_size = base_size) +
  theme_bw()+
  labs(x = "GeneSet", y = "Rank", title = "GSEA")+
  theme(legend.position = "right", axis.ticks = element_blank(), 
        axis.text.x = element_text(size = base_size *0.8, angle = 45, hjust = 1,
                                   colour = "grey50"))
