# 安装并加载VennDiagram包
# install.packages("VennDiagram")
library(VennDiagram)

# 定义三个集合的元素
set1 <- c("A", "B", "C", "D")
set2 <- c("B", "C", "E", "F")
set3 <- c("A", "C", "G", "H")

# 创建一个列表来存储集合
venn_list <- list(SetA = set1, SetB = set2, SetC = set3)

# 绘制Venn图，但不保存为文件
venn.plot <- venn.diagram(
  x = venn_list,
  category.names = c("Set A", "Set B", "Set C"),
  filename = NULL,
  output = TRUE,
  imagetype = "png",
  height = 480,
  width = 480,
  resolution = 300,
  compression = "lzw",
  # 不显示集合的大小
  lwd = 2,
  col = c("red", "blue", "green"),
  # fill = c(alpha("red",0.5), alpha("blue",0.5), alpha("green",0.5)),
  cat.col = c("red", "blue", "green"),
  cat.cex = 1.5,
  cat.fontface = "bold",
  cat.dist = c(0.08, 0.08, 0.04)
)

# 获取Venn图的网格图形对象
grid.newpage()
venn_grid <- grid.draw(venn.plot)

# 查找并绘制元素名称
# 注意：这里我们假设Venn图中有7个区域（包括所有可能的交集和并集）
# 你可能需要根据实际的Venn图调整这个数字
for (i in 1:7) {
  # 获取每个区域的元素
  region_elements <- venn.plot[[i]]$venn_obj$areas[]$label
  
  # 如果区域有元素，则绘制元素名称
  if (!is.null(region_elements) && length(region_elements) > 0) {
    # 获取区域的中心点坐标
    center_x <- venn.plot[[i]]$venn_obj$centers[]
    center_y <- venn.plot[[i]]$venn_obj$centers[]
    
    # 绘制元素名称
    grid.text(
      paste(region_elements, collapse = "\n"),
      x = center_x,
      y = center_y,
      gp = gpar(col = "black", fontsize = 10, fontfamily = "sans")
    )
  }
}
