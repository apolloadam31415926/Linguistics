from matplotlib_venn import venn3 #, venn3_circle_label
from matplotlib import pyplot as plt

# 模板代码 - 需要修改set1-3 和 依据需要修改元素数量>0的区域显示为元素名称

# 测试数据集 
# 修改为实际数据集
set1 = {"能指", "所指", "任意性", "符号·意义", "符号形式", "语言形式", "语言意义", "动作形式", "动作意义", "自然语言", "人工语言"}
set2 = {"语言·形式", "语言意义", "语言形式", "语言意义", "自然语言", "人工语言"}
set3 = {"动作形式", "动作意义"}

# 绘制 Venn 图 
# 修改 set_labels中数据为实际数据
# v = venn3(subsets = [set1, set2, set3],set_labels = ("符号", "语言", "Set 3"))
v = venn3(subsets = [set1, set2, set3],set_labels = ("符号", "语言符号", "非语言符号"))

# 显示元素名称
# 确认是否注释元素为0的区域
#v.get_label_by_id('100').set_text('\n'.join(set1 - set2 - set3))  # Set1 独有元素
#v.get_label_by_id('010').set_text('\n'.join(set2 - set1 - set3))  # Set2 独有元素
#v.get_label_by_id('001').set_text('\n'.join(set3 - set1 - set2))  # Set3 独有元素
#v.get_label_by_id('110').set_text('\n'.join((set1 & set2) - set3))  # Set1 & Set2 交集
#v.get_label_by_id('101').set_text('\n'.join((set1 & set3) - set2))  # Set1 & Set3 交集
#v.get_label_by_id('011').set_text('\n'.join((set2 & set3) - set1))  # Set2 & Set3 交集
#v.get_label_by_id('111').set_text('\n'.join(set1 & set2 & set3))  # Set1 & Set2 & Set3 交集

plt.show()