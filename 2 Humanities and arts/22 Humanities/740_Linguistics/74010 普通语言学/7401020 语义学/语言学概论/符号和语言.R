# 安装并加载VennDiagram包
# install.packages("VennDiagram")
library(VennDiagram)

# c() 是创造向量的函数
# 鉴别语言符号和非语言符号的标准
# 任意性 复杂性 系统性
# 系统复杂的符号 和 非系统简单的符号


符号 <- c("符号的能指", "符号的所指", "符号的意义", "符号的形式", \
"语言的形式", "语言的意义", "自然语言", "人工语言", "动作形式", "动作意义")

set2 <- c("语言的形式", "语言的意义", "自然语言", "人工语言")
set3 <- c("动作形式", "动作意义")
语言符号 <- c("汉语汉字", "英语单词", "手语动作", "其它语言符号")
非语言符号 <- c("")



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