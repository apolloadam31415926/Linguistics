# Python

Python 语言
Python 集成开发环境

## 下载安装

[offical](https://www.python.org/downloads/)
windows 版本 自定义 安装到想要的目录即可

## 模块安装

pip install venn <!--不安装应该也可以 不知道用在哪-->
pip install matplotlib_venn <!--支持3集合-->

## 使用python 绘制venn图

集合不为0 的部分显示元素 为0的部分显示0
存在中文显示问题

Python CGI编程
什么是CGI
CGI 目前由NCSA维护，NCSA定义CGI如下：

CGI(Common Gateway Interface),通用网关接口,它是一段程序,运行在服务器上如：HTTP服务器，提供同客户端HTML页面的接口。

网页浏览
为了更好的了解CGI是如何工作的，我们可以从在网页上点击一个链接或URL的流程：

1、使用你的浏览器访问URL并连接到HTTP web 服务器。
2、Web服务器接收到请求信息后会解析URL，并查找访问的文件在服务器上是否存在，如果存在返回文件的内容，否则返回错误信息。
3、浏览器从服务器上接收信息，并显示接收的文件或者错误信息。
CGI程序可以是Python脚本，PERL脚本，SHELL脚本，C或者C++程序等。

单线程/多线程
多线程（Multithreading） 是一种并发执行的模式，它关注的是任务的执行方式

同步(顺序)/异步(非顺序)
异步（Asynchronous） 是一种非阻塞的执行模式，它关注的是任务的调度方式。

关于单线程异步与多线程 
单线程异步是否可以达到多线程效果？(所谓效果就是实现任务的并发执行)

- 对于 I/O 密集型任务，单线程异步可以达到甚至超过多线程的效果。

    由于 I/O 操作通常需要等待较长时间，使用异步方式可以避免线程阻塞，提高程序的响应性。
    单线程异步避免了线程切换的开销，可以更高效地处理大量的并发 I/O 请求。
    对于 计算密集型任务，单线程异步无法达到多线程的效果。

- 由于计算密集型任务需要占用大量的 CPU 时间，单线程无法充分利用多核 CPU 的优势。
    多线程可以将计算任务分配到不同的核心上并行执行，从而提高计算效率。

什么是脚本语言
脚本语言是一种解释型的编程语言，它通常不需要在运行之前进行完整的编译过程