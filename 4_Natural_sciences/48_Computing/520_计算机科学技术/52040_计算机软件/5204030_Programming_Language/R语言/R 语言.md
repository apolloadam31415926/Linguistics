# R

## 相关信息

R语言

    R是一种用于统计计算与绘图的编程语言

R语言(环境)

    是用于数据同与绘图一个开源软件
    有些时候 使用'R'表示语言V(兼或)软件/环境 省略主语

gun开源项目 地址如下

    [R](https://www.r-project.org/)

## 学习背景

描述集合关系 需要绘制venn图

许多站点上的工具都将数据为0的部分显示出来(如下图)，这样会有不能直观显示包含关系的问题，故简单学习相关工具使用

需求:

- 直观显示包含关系
  - 交集为0的部分不显示(使用不同它图形) 但是会导致包含关系模糊
- 不要求比例

2025/02/14 现在看来由于使用的是圆形 只有2个集合的venn图是比较好通过venn图直观显示出包含关系的 但是到了3个集合的venn图使用圆形是无法直观显示出包含关系的需要和其它图形结合 而这种结合也会导致包含关系的模糊

不直接显示包含关系是正常的 如果要显示正常的包含关系可能需要不止一个图形结合起来  但是还是不够直观

## 下载安装

官网地址

[R windows.exe](https://cloud.r-project.org/bin/windows/base/R-4.4.2-win.exe)

不确定是否为集成环境,初次使用使用的工具越智能可能遇到的问题较少 毕竟只是简单使用 不涉及一些高级的使用 可能是集成环境所屏蔽的细节 具体的后面再说

使用后 比较难用 优点像刚学c语言的时候使用的一个软件 纠错纯靠眼睛
不会智能提示

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

```R
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

```
library(VennDiagram)

# 使用=赋值 取代<- 与其他语言一致 减少学习或修改成本
set1 = c("自然语言", "人工语言")

venn.diagram(
    x = list(set1),
    category.names = c("语言"),
    filename = "venn.png",
    ilcs = FALSE
)
```

**R语言区分大小写**
ture 与 True 不能代表TRUE

**R语言支持从xlxs,cvs导入**
后续学习 暂不使用 先手搓

## **帮助文档**

type "?venn.diagram" in R console and type enter

**查看当前可下载包**
**查看当前可加载包**

**查看当前已安装的包**
search() <!--这个函数可以列出当前 R 会话中所有已加载的包和对象-->
**查看当前已加载包**

下载并安装
install.packages("ggplot2")
install.packages("ggforce")
library(ggplot2)
library(ggforce)

## 使用 vs code 中的扩展调试 （失败 不是一键安装 依赖其他软件）

<https://marketplace.visualstudio.com/items?itemName=reditorsupport.r>

安装
install.packages("languageserver")
install.packages("vscDebugger", repos = "<https://manuelhentschel.r-universe.dev>")

## 安装Rtools

确认版本
> R.version.string
[1] "R version 4.4.2 (2024-10-31 ucrt)

## 关于赋值

|符号|相对的优点|相对的缺点|
|---|---|---|
|<-/->|更加形象的表达了赋值的含义|打字不方便|
|=|打字方便<br>与大部分其他语言一致|事实上存在等于的含义<br>需要高版本 兼容性不好|

>= 歧义的原因 考虑若A=B 赋值的方向是A<-B 还是A->B \
>实际上类似c语言是 将其规定了右边给左边赋值,即A<-B

## 关于vs code R语言支持插件

暂时关闭插件

注释缩需要删除的问题问题

需要学习插件相关知识 vscode 默认不提供插件配置

插件的数据在
[local_url](D:\Users\xdx\AppData\Local\Programs\Microsoft VS Code\resources\app\extensions\r)

这些配置如何修改??

在linux下似乎更方便运行

## 关于R Markdown 

似乎是R代码 直接嵌入到Markdown 文本中 无需将图片导出再使用
