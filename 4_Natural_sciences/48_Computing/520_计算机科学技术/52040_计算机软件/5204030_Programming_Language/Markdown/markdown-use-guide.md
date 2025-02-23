# strict is GFW （Github Flavored Markdown）

## offical spec url

[offical](https://github.github.com/gfm/)

## some basical conpcetion
markdown 是对 html 文本内容的抽象,转化
简单的关系大概可以用 domain 与 ip做对比
||优点|缺点|
|---|---|---|
|domain|便于人类记忆书写|相对速度快 有dns查找过程|   
|ip|计算机直接识别|相对速度快 无需dns查找过程|

**对比**

||优点|缺点|
|---|---|---|
|markdown Language|相对便于人类书写，更符合人类书写习惯 <br> 只实现了基础功能 |需要转化为html格式才内被浏览器识别|
|htm Language|浏览器直接识别 无需转化 <br> 可以实现更多细节|不符合人类书写习惯 |
|易于人类记忆书写|计算机使用的语言|

更多一些的比较 像c语言与汇编语言
c是对汇编的抽象 更便于理解 等等

markdown的基础是html 想要使用的好 且 能快速解决问题 必须要 熟悉html

## some basical skills

标点符号用英文

各种括号要配对使用

不同部分换行需要明确

## Link的Link dist 包含()符号

- [t(1)](#t1)<!--这是一个目录中的内容-->

### t(1）<!--这是跳转的标题-->

## Link的Link dist 的 peer has two reference
- [t(1)](#t1-1)<!--这儿GFW会在对应的html 语言中追加序号-->

### t(1)

GFW会在对应的html 语言中追加序号

不同的Markdown 编译器的实现可能有不同的转换方式 最基本的办法还是 熟悉html 然后用F12 观察该编译器生成html结果 按照结果修改markdown文本即可

## Tabel unit中需要break Line
|test1|test<br>1|
|---|---|
|t1|t<br>1|

## 不要使用 x) 的格式 List

1) 12312
    2) 123123
    2) 123    
3) 123

1. 123

- 123
    - 456

2. 12
    1. 34
    2. 56

如上所示容易出现排版问题 最好使用'- '或'x. '
