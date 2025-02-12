library(VennDiagram)

# 高版本 可以使用=赋值 与其他语言一致 减少学习或修改成本 方便书写
# 单从理解角度而言 <- 与赋值的意思更相近 (个人选择表意性更好的) 
# 当然兼容性也好 
# = 则存在歧义 考虑若A=B 是A<-B 还是A->B 
# 实际上像c语言是 将其处理成了 A<-B 这是'潜规则'
# c() 是创造向量的函数
set1 = c("非语言符号","语言符号")
set2 = c("自然语言", "人工语言")

# venn.diagram()绘制ven图的函数 所以参数名是有意义的
venn.diagram(
    # list() 是创造列表的函数
    x = list(set1, set2),
    category.names = c("符号", "语言"),
    filename = "venn.png",
    #ilcs: 一个逻辑值，指示是否显示交集区域的标签。
    ilcs = FALSE,
    # output = FALSE,
    # ind = TURE
    
       cex = 1.2,
  cat.col = c("darkred", "darkgreen"),
  cat.cex = 1.5
)