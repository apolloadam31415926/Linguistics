library(dplyr)
library(ggvenn)
library(ggplot2)

# 创建一些示例数据
set1 <- c("A", "B", "C", "D")
set2 <- c("B", "C", "E", "F")
set3 <- c("C", "D", "G", "H")

# 将数据转换为列表
data <- list(set1 = set1, set2 = set2, set3 = set3)

# 使用 ggvenn 绘制 Venn 图，并自定义形状
ggvenn(data,
       fill_color = c("#0073C2FF", "#EFC000FF", "#868BCBFF"), # 设置填充颜色
       stroke_size = 0.5, # 设置边框大小
       set_name_size = 4, # 设置集合名称大小
       shape = "ellipse") + # 使用椭圆形

  # 使用 ggplot2 自定义图形
  theme_void() + # 移除背景
  scale_fill_brewer(palette = "Set1") + # 使用预设调色板
  labs(title = "非圆形 Venn 图示例") # 添加标题