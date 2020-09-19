library(ggplot2)
##GO_BP
STAD_NC_BP <- read.table("C:/Users/Tao/Desktop/Candidates/STAD/相关数据/STAD_NC_BP.txt",header = T,sep="\t",quote = "")
STAD_NC_BP[10,]
ggplot(data=STAD_NC_BP[1:20,])+
  geom_bar(aes(x=reorder(Term,Count),y=Count, fill=-log10(PValue)),
           stat='identity') +
  coord_flip() +
  scale_fill_gradient(expression(-log["10"](P.value)),low="dark blue", high = "red")+
  theme_light()+
  theme(#axis.title.x=element_blank(),
        #axis.text.x=element_blank(),
        #axis.text.y=element_text(family="myFont",face="bold",size=12),
        axis.ticks.length = unit(0, "cm"),
        #axis.ticks=element_blank(),
        #axis.line = element_line(colour="black",size=1.2,linetype="solid"),
        #legend.position = "bottom",
        legend.text = element_text(family="myFont",face="bold",size=14),
        legend.direction = NULL,
        legend.title = element_text(family="myFont",face="bold",size=14),
        #legend.key = element_rect(),
        panel.grid = element_blank(),
        strip.background = element_rect(fill="white",color="transparent"),
        panel.border = element_rect(linetype="solid",,size=0.7,colour = "black"))+
  theme(title=element_text(family="myFont",face="bold",size=14),
        text=element_text(family="myFont",face="bold",size=38),
        axis.text=element_text(family="myFont",face="bold",size=10,colour = "black"))+
  xlab("") +
  ylab("Gene count")


##KEGG
STAD_NC_KEGG <- read.table("C:/Users/Tao/Desktop/Candidates/STAD/相关数据/STAD_NC_KEGG.txt",header=T,sep="\t",quote = "")
STAD_NC_KEGG[1:20,]
ggplot(STAD_NC_KEGG[1:20,],aes(x=Fold.Enrichment,y=Term))+
  geom_point(aes(size=Count,color=-1*log10(PValue)))+
  scale_colour_gradient(low="green",high="red")+
  labs(color=expression(-log[10](P.value)),
         size="Gene number",
         x="Fold enrichment")+
  theme_bw()+
  theme(axis.text.y = element_text(size = rel(1.3),family="myFont",face="bold",colour = "black"),
        axis.title.x = element_text(size=rel(1.3)),
        axis.title.y = element_blank())

  
