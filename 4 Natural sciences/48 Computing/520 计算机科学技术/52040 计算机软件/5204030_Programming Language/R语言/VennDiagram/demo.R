# 安装并加载VennDiagram包
# install.packages("VennDiagram")
library(VennDiagram)

# c() 是创造向量的函数
set1 <- c("非语言符号","语言符号")
set2 <- c("自然语言", "人工语言")

# venn.diagram()绘制ven图的函数 所以参数名是有意义的
venn.plot <- venn.diagram(
    # list() 是创造列表的函数
    x = list(set1, set2),
    # filename = "venn.png",
    filename = NULL,
    category.names = c("符号", "语言"),
    #ilcs: 一个逻辑值，指示是否显示交集区域的标签。
    ilcs = TRUE,
    output = TRUE,
    cex = 1.2,
    cat.col = c("darkred", "darkgreen"),
    cat.cex = 1.5
)

# 获取Venn图的网格图形对象
grid.newpage()
venn_grid <- grid.draw(venn.plot)