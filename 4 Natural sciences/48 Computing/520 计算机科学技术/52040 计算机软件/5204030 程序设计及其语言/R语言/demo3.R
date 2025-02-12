library(VennDiagram)

# 创建示例数据
set1 <- c("A", "B", "C", "D")
set2 <- c("B", "C", "D", "E")
set3 <- c("C", "D", "E", "F")

# 获取交集元素
intersect12 <- intersect(set1, set2)
intersect13 <- intersect(set1, set3)
intersect23 <- intersect(set2, set3)
intersect123 <- intersect(intersect12, set3)

# 绘制 Venn 图，并自定义标签
venn.diagram(
  x = list(set1, set2, set3),
  category.names = c("Set 1", "Set 2", "Set 3"),
  filename = "venn.png",
  # 自定义标签
  lcs = list(
    paste(intersect12, collapse = ", "),
    paste(intersect13, collapse = ", "),
    paste(intersect23, collapse = ", "),
    paste(intersect123, collapse = ", ")
  ),
  print(lcs)	
)