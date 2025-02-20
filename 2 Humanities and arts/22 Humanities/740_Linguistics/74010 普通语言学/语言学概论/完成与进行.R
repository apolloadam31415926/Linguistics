# 安装并加载VennDiagram包
# install.packages("VennDiagram")
library(VennDiagram)

# c() 是创造向量的函数
# 鉴别语言符号和非语言符号的标准
# 任意性 复杂性 系统性
# 系统复杂的符号 和 非系统简单的符号


完成 <- c(完成未进行,完成进行,)
进行 <- c(进行未完成)
未完成 <- c(进行未完成)
未进行 <- c(完成未进行, 未进行未完成)

# venn.diagram()绘制ven图的函数 所以参数名是有意义的
venn.plot <- venn.diagram(
  # list() 是创造列表的函数
  x = list(set1, set2, set3),
  # filename = "venn.png",
  filename = NULL,
  imagetype = "svg",
  category.names = c("符号", "语言符号", "非语言符号"),
  #ilcs: 一个逻辑值，指示是否显示交集区域的标签。
  ilcs = TRUE,
  output = TRUE,
  # sub.cex = 5,
  # cex = 2,
  # cat.dist = 2,
  # cat.col = c("darkred", "darkgreen"),
  cat.cex = 1.5,
  euler.d = TRUE,
)

# 获取Venn图的网格图形对象
grid.newpage()
venn_grid <- grid.draw(venn.plot)