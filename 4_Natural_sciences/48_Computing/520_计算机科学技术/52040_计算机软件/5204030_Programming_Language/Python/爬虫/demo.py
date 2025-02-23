# https://www.crummy.com/software/BeautifulSoup/bs4/doc.zh/ 帮助文档
from os import write
from bs4 import BeautifulSoup
import requests

# 指定你想要获取标题的网站
# url = 'https://www.baidu.com/' # 抓取bing搜索引擎的网页内容
url = 'https://theporndude.com/'

# 发送HTTP请求获取网页内容
response = requests.get(url)
# 中文乱码问题
response.encoding = 'utf-8'

if response.status_code == 200:
    soup = BeautifulSoup(response.text, 'lxml')
    # 查找第一个 <a> 标签
    first_link = soup.find('a')
    #print(first_link)
    print("----------------------------\n")

    # 获取第一个 <a> 标签的 href 属性
    # first_link_url = first_link.get('href')
    # print(first_link_url)
    print(soup.a['href'])
    print("----------------------------\n")

    # 查找所有 <a> 标签
    # all_links = soup.find_all('a')
    # all_links = soup.find_all('a')
    # all_links = soup.find_all(name='a',limit=1)
    # all_links = soup.find_all(name='a',class_="link-analytics icon-site icon icon158")
    all_links = soup.find_all(name='a')
    a = 0
    file_path = r"D:\Users\xdx\Documents\GitHub\study\4_Natural_sciences\48_Computing\520_计算机科学技术\52040_计算机软件\5204030_Programming_Language\Python\爬虫\foo.txt"
    f = open(file_path, "w")
    for link in all_links:
        a=a+1
        # printf(a)
        # printf(link.get('href'))
        str2 = link.get('href')
        # f.write(f"id: {a}, href: {str2}")
        if  'theporndude.com' in str2: # 判断字符串中是否有 theporndude.com 如果有不输出
            print(f"{a}: {str2}\n")
        else:
            f.write(f"{a}: {str2}\n")
            

    # 关闭打开的文件
    f.close()
else:
    print("请求失败，状态码：", response.status_code)