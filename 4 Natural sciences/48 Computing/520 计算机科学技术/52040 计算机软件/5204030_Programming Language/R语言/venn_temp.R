library(VennDiagram)

set1 <- c("A", "B", "C", "D")
set2 <- c("B", "C", "D", "E")
set3 <- c("C", "D", "E", "F")

# venn.diagram()绘制ven图的函数 所以参数名是有意义的
venn.plot <- venn.diagram(
    # list() 是创造列表的函数 # nolint
    x = list(set1, set2, set3),
    # filename = "venn.png",
    filename = NULL,
    category.names = c("Set 1", "Set 2", "Set 3"),
    
    #ilcs: 一个逻辑值，指示是否显示交集区域的标签。
    ilcs = TRUE,
    output = TRUE,
    # ind = TURE
    cex = 1.2,
    cat.col = c("darkred", "darkgreen", "red"),
    cat.cex = 1.5
)

# 获取Venn图的网格图形对象
grid.newpage()
venn_grid <- grid.draw(venn.plot)