# R
## 相关信息
R语言

    R是一种用于统计计算与绘图的编程语言

R语言(环境)
    是用于数据同与绘图一个开源软件

有些时候 使用'R语言'表示语言V(兼或)软件/环境


gun开源项目 地址如下

    [R](https://www.r-project.org/)

## 学习背景
描述集合关系 需要绘制venn图

许多站点上的工具都将数据为0的部分显示出来(如下图)，这样会有不能直观显示包含关系的问题，故简单学习相关工具使用

## 下载安装
官网地址

[R windows.exe](https://cloud.r-project.org/bin/windows/base/R-4.4.2-win.exe)

不确定是否为集成环境,初次使用使用的工具越智能可能遇到的问题较少 毕竟只是简单使用 不涉及一些高级的使用 可能是集成环境所屏蔽的细节 具体的后面再说

集成环境
[Rstudio](https://download1.rstudio.org/electron/windows/RStudio-2024.12.0-467.exe)

还是要求先在官网下载 然后在下载Rstudio

大概类似先下载jdk 再下载expollse??

>报错:Error in venn.diagram(x = list(set1, set2, set3), category.names = c("Set 1",  : could not find function "venn.diagram"
> install.packages("VennDiagram")  # 安装VennDiagram包

安装venn图绘制包
install.packages("VennDiagram")  # 安装VennDiagram包
install.packages("venneuler")  # 安装venneuler包
install.packages("ggvenn")  # 安装ggvenn包
install.packages("nVennR")  # 安装nVennR包
install.packages("UpSetR")  # 安装UpSetR包

## 测试代码
```
library(VennDiagram)

# 创建示例数据
set1 <- c("第", "初", "老", "铁", "的", "苹", "葡萄", "沙发", "马达")
set2 <- c("第", "初", "老", "铁", "的", "从", "铁路"，"重视")
set3 <- c("铁", "路", "重", "视") 
# 此处的铁和路 不是从"铁路"中提取的"
# 铁可以从"铁桶"中提取 
set4 <- c("", "", "")
# 绘制Venn图
venn.diagram(
   x = list(set1, set2, set3),
   category.names = c("语素", "语符", "自由语符","不自由语符"),
   filename = "venn.png",
   # 不显示元素为0的区域
   # (VennDiagram包默认行为，无需额外设置)
   # 可以通过ilcs参数控制是否显示交集区域的标签
   ilcs = FALSE
 )
```



