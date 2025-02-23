#

# 一些概念

css是什么
CSS (Cascading Style Sheets，层叠样式表），是一种用来为结构化文档（如 HTML 文档或 XML 应用）添加样式（字体、间距和颜色等）的计算机语言，CSS 文件扩展名为 .css


什么是 CSS?
CSS 指层叠样式表 (Cascading Style Sheets)
样式定义如何显示 HTML 元素
样式通常存储在样式表中
**把样式添加到 HTML 4.0 中，是为了解决内容与表现分离的问题**
**外部样式表可以极大提高工作效率** (可复用)
外部样式表通常存储在 CSS 文件中
多个样式定义可层叠为一个


HTML 解析器和 CSS 解析器的关系：

- HTML 解析器负责构建 DOM 树，CSS 解析器负责构建 CSSOM 树。
- 浏览器会将 DOM 树和 CSSOM 树结合起来，生成渲染树（Render Tree），用于计算每个元素的最终样式和布局。

个人认为
主要是为了解耦合和避免重复劳动

css 主要是为了将样式与html中的标签分离出来发展出来的

插入样式表的方法有三种:

- 外部样式表(External style sheet)
- 内部样式表(Internal style sheet)
- 内联样式(Inline style)
这三种都是css 在浏览器工作的时候都使用css解析器对他们进行解析