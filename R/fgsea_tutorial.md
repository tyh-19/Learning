### 5) Tips

#### (1) GSEA for a user-defined gene set

上述指南中可以一次对软件中自带的多个gene sets进行GSEA富集，很多时候，我们是有一个自己的gene set，我们只需要对这一个user-defined gene set，进行一次GSEA分析即可。

这时候，我们只需要两个输入：

1. 所有基因（All genes）在两种条件（样品）下的表达值，这样可以对所有gene进行排序；
2. 一个特定的、用户自己定义的基因集合（ gene set）。

我们可以利用图形界面的Run GSEAPreranked工具，进行分析，如下图界面：


也可以利用叫做[fgsea](http://bioconductor.org/packages/devel/bioc/vignettes/fgsea/inst/doc/fgsea-tutorial.html)的R包进行批量的分析和绘图。

+ 安装fgsea包

  ```R
  # if you install in windows, make sure Rtools 3.5 is installed
  library(devtools)
  install_github("ctlab/fgsea")
  ```

+ 加载fgsea以及依赖的R包

  ```R
  library(data.table)
  library(fgsea)
  library(ggplot2)
  ```

+ 加载示例数据

  ```R
  data(examplePathways)
  data(exampleRanks)
  ```

* 运行fgsea进行自定义排序的分析

  ```R
  fgseaRes <- fgsea(pathways = examplePathways, 
                    stats    = exampleRanks,
                    eps      = 0.0,
                    minSize  = 15,
                    maxSize  =500)
  ```

+ 检查结果（按照p-value排序）

  ```R
  head(fgseaRes[order(pval), ])
  ```

+ 可视化单一结果

  ```R
  plotEnrichment(examplePathways[["5991130_Programmed_Cell_Death"]],
                 exampleRanks) + labs(title="Programmed Cell Death")
  ```

+ 可视化多个结果

  ```R
  topPathwaysUp <- fgseaRes[ES > 0][head(order(pval), n=10), pathway]
  topPathwaysDown <- fgseaRes[ES < 0][head(order(pval), n=10), pathway]
  topPathways <- c(topPathwaysUp, rev(topPathwaysDown))
  plotGseaTable(examplePathways[topPathways], exampleRanks, fgseaRes, gseaParam=0.5)
  ```

+ 如果我们需要使用自定义的geneset和ranklist，只需要准备好相应的.gmt文件和.rnk文件，通过下面这种方式输入fgsea即可

  ```R
  # first input .rnk and .gmt as rnk.file, gmt.file
  rnk.file <- system.file("extdata", "YourRanklist.rnk", package="fgsea")
  gmt.file <- system.file("extdata", "YourGenesets.gmt", package="fgsea")
  
  # extract ranklist and geneset
  ranks <- read.table(rnk.file,
                      header=TRUE, colClasses = c("character", "numeric"))
  ranks <- setNames(ranks$t, ranks$ID)
  pathways <- gmtPathways(gmt.file)
  
  # check your ranklist and geneset
  str(ranks)
  str(head(pathways))
  
  # run user-defined GSEA
  fgseaRes <- fgsea(pathways, ranks, minSize=15, maxSize=500)
  ```

  

