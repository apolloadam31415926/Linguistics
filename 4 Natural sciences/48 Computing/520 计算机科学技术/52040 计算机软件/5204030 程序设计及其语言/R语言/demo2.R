# 创建包含关系的数据
set1 <- c("A", "B", "C", "D", "E")
set2 <- c("B", "C", "D")  # set2 包含于 set1
set3 <- c("C", "D", "E", "F")

# 将数据放入列表中
sets <- list(set1 = set1, set2 = set2, set3 = set3)

# 获取交集元素
intersect12 <- intersect(set1, set2)
intersect13 <- intersect(set1, set3)
intersect23 <- intersect(set2, set3)
intersect123 <- intersect(intersect12, set3)


venn.diagram(
  x = sets,
  category.names = c("Set 1", "Set 2", "Set 3"),
  filename = "euler_venn.png",
  euler.d = TRUE,  # 使用 Euler 图
  scaled = TRUE, # 根据集合大小缩放圆圈
  fill = c("red", "green", "blue"),
  alpha = 0.5,
  label.col = "white",
  cex = 1.2,
  cat.col = c("darkred", "darkgreen", "darkblue"),
  cat.cex = 1.5,
    # 自定义标签
  lcs = list(
    paste(intersect12, collapse = ", "),
    paste(intersect13, collapse = ", "),
    paste(intersect23, collapse = ", "),
    paste(intersect123, collapse = ", ")
  )
)