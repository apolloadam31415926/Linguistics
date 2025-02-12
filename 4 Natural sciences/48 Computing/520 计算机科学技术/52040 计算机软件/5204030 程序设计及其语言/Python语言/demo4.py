from matplotlib_venn import venn3#, venn3_circle_label
from matplotlib import pyplot as plt

# 数据集
set1 = {"A", "B", "C", "D"}
set2 = {"B", "C", "D", "E"}
set3 = {"C", "D", "E", "F"}

# 绘制 Venn 图
v = venn3([set1, set2, set3], ("Set 1", "Set 2", "Set 3"))

# 显示元素名称
v.get_label_by_id('100').set_text('\n'.join(set1 - set2 - set3))  # Set1 独有元素
#v.get_label_by_id('010').set_text('\n'.join(set2 - set1 - set3))  # Set2 独有元素
v.get_label_by_id('001').set_text('\n'.join(set3 - set1 - set2))  # Set3 独有元素
v.get_label_by_id('110').set_text('\n'.join((set1 & set2) - set3))  # Set1 & Set2 交集
v.get_label_by_id('101').set_text('\n'.join((set1 & set3) - set2))  # Set1 & Set3 交集
#v.get_label_by_id('011').set_text('\n'.join((set2 & set3) - set1))  # Set2 & Set3 交集
v.get_label_by_id('111').set_text('\n'.join(set1 & set2 & set3))  # Set1 & Set2 & Set3 交集

plt.show()