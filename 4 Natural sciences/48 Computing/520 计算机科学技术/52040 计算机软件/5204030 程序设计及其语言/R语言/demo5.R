# 首先，确保你已经安装了VennDiagram包
# install.packages("VennDiagram")

library(VennDiagram)

# 定义三个集合的元素
set1 <- c("A", "B", "C", "D")
set2 <- c("B", "C", "E", "F")
set3 <- c("A", "C", "G", "H")

# 创建一个列表，包含所有集合
#input.list <- venn.plot::venn.diagram(
input.list <- venn.diagram(
  x = list(
    A = set1,
    B = set2,
    C = set3
  ),
  category.names = c("Set A", "Set B", "Set C"),
  filename = NULL,
  output = TRUE,
  imagetype = "png",
  height = 480,
  width = 480,
  resolution = 300,
  compression = "lzw"
)

# 修改Venn图的绘制方式，以显示元素名称
# 注意：这里我们直接修改input.list中的相关属性
for (i in 1:length(input.list)) {
#    print("input.list[[" i "]]:" input.list[[i]])
#	print("input.list[" i "]:" input.list[i])
#    print("input.list[i]$venn_obj$areas[]$label:" input.list[i]$venn_obj$areas[]$label)
#    print("input.list[i]$label" input.list[i]$label)
#    var1 = "input.list[["
#    var2 = "]]:"
#    print(paste(var1,i,var2,input.list[[i]]))
#
#    var3 = "input.list["
#    var4 = "]:"
#    print(paste(var3,i,var4,input.list[i]))
#    
    var5 = "input.list[i]$venn_obj$areas[]$label:"
    print(var5,input.list[i]$venn_obj$areas[]$label)
    var6 = "input.list[i]$label:"
    print(var6,input.list[i]$label)
    var7 = "input.list[[i]]$type:"
    print(var7,input.list[[i]]$type)
	#print("input.list[" i "]:" input.list[i])
    #print("input.list[i]$venn_obj$areas[]$label:" input.list[i]$venn_obj$areas[]$label)
    #print("input.list[i]$label" input.list[i]$label)

  #if (input.list[[i]]$type == "text") {
    # 替换元素数量为元素名称
    #input.list[[i]]$label <- input.list[[i]]$venn_obj$areas[]$label
    #  input.list[i]$label <- input.list[i]$venn_obj$areas[]$label
    #print("if 0")
  #} else {
   # print("if 1")
  #}
  #print("if 3")

}
print("if 2")
# 绘制Venn图
grid.newpage()
grid.draw(input.list)
#venn.plot::grid.draw(input.list)
