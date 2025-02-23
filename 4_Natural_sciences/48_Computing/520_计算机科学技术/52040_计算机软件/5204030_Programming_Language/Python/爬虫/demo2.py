from bs4 import BeautifulSoup
import requests

def get_all_links(url):
  """
  获取网页中所有链接的href属性值

  Args:
    url: 网页URL

  Returns:
    一个包含所有链接href属性值的列表
  """

  try:
    response = requests.get(url)
    response.raise_for_status()  # 检查HTTP请求是否成功
    soup = BeautifulSoup(response.content, 'html.parser')

    links = []
    for a_tag in soup.find_all('a', href=True):
      links.append(a_tag['href'])

    return links

  except requests.exceptions.RequestException as e:
    print(f"Error fetching URL: {e}")
    return []

  except Exception as e:
    print(f"An error occurred: {e}")
    return []

# 示例
if __name__ == "__main__":
  url = "https://theporndude.com/"  # 替换为你要抓取的网页URL
  all_links = get_all_links(url)

  if all_links:
    print("所有链接的href属性值：")
    for link in all_links:
      print(link)