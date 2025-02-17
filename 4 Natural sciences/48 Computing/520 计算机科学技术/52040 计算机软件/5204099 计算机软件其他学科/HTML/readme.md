# 1

## 一些概念

HTML 标签:

html文本中通过<>包围关键字组成,如\<html\> 就是使用<>包围html

html 标签一般成对出现 成对出现的标签中第一个出现的是开始标签 第二个则是结束标签

HTML 元素:

html文本中 由开始标签+内容+结束标签组成,如:\<html\>内容\<\/html\>

例外:
HTML 声明:
虽然外形上与标签的定义一致 但是由于其特殊性 单独述说

\<\!DOCTYPE html\> 这个标签不存在开始和结束的区分
这也不符合上面关于一个元素的定义 
可以将其看作类似 #!/bin/bash 用于给解释器判断该文件类型的依据
之类的 在扩展名不明显的情况下

常见声明
HTML 5
HTML 4.01 Strict
...
不同的声明对于一些标签是否可以使用存在差异 如font
[不同标注下的标签](https://www.runoob.com/tags/html-elementsdoctypes.html)

Web 浏览器：
Web浏览器（如chrome，Edge，Firefox，Safari）是用于读取HTML文件，并将其作为网页显示。

浏览器并不是直接显示的HTML标签，但网站设计者可以使用标签来决定如何展现HTML页面的内容给用户


元素间可以嵌套:

区分HTML中 内容为空的元素和空元素
内容为空的元素 如:\<html\>\<\/html\>,\<br \/\>

空元素则是 指如:\<br \/\>,\<img\>

这种元素 没有结束标签 仅由开始标签或自闭合标签构成

HTML 元素的属性:

- 属性是 HTML 元素提供的附加信息, 用于定义元素的行为、样式、内容或其他特性。

- 属性总是以 name="value" 的形式写在**开始标签**内，name 是属性的名称，value 是属性的值。

- 属性值应当使用""或''包含

如\<a href="www.baidu.com">百度</a> 是一个链接元素 href作为元素的属性 指定了链接地址
大多数 HTML 元素可拥有属性

HTML 样式- CSS
CSS (Cascading Style Sheets) 层叠样式表 用于渲染HTML元素的样式

CSS 可以通过以下方式添加到HTML中

- 内联样式- 在HTML元素中使用"style" 属性
    
    用于个别元素样式
- 内部样式表 -在HTML文档头部 <head> 区域使用<style> 元素 来包含CSS

    单独文件需要特殊样式
- 外部引用 - 使用外部 CSS 文件
    
    通过\<link\> 将css文件引用到相应的html文件中 浏览器在解析页面的时候会将css文件的样式应用到元素上

HTML <script> 标签
<script> 标签用于定义客户端脚本，比如 JavaScript

JavaScript 是 web 开发人员必须学习的 3 门语言中的一门：

- HTML 定义了网页的内容 (也包括了布局)
- CSS 描述了网页的布局 (主要是规定一些元素的样式)
- JavaScript 控制了网页的行为 (确认点即后的一些行为)

字符实体 有一些字符是保留 但是实际在内容中可能会用到 所以需要一个别的形式来替代这些保留字符

关于xml html 和 sgml

sgml 可以定义 html的语法 (这是xml作为元语言的依据)
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

HTML DTD 文件是使用 SGML 语法书写的，用于定义 HTML 标签的语法规则。
HTML5 放弃了基于 SGML 的 DTD，转而使用了一种新的 HTML 解析模型。


XML 不是元语言 可以有用sgml语法规定的dtd文件
xml 功能实际上是应用 存储传输数据
html 是应用于web页面显示
sgml 的应用
    - 定义其它标记语言
    - 大型文档管理
    - 复杂
关于xml只是规范了html 产生了xhtml 而不是定义了xhtml 并没有描述结构?而是规范书写?

HTML5 是下一代 HTML 标准。
HTML , HTML 4.01的上一个版本诞生于 1999 年。自从那以后，Web 世界已经经历了巨变。
HTML5 仍处于完善之中。然而，大部分现代浏览器已经具备了某些 HTML5 支持。
HTML5的设计目的是为了在移动设备上支持多媒体