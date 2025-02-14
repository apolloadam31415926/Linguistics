# from venn import venn  # 有bug 这个venn是变量
from matplotlib_venn import venn3 # venn3才是函数
from matplotlib import pyplot as plt

# 测试3元集合的venn图代码
# define three sets # 只适用于2-3个集合
set1 = {"A", "B", "C", "D"}
set2 = {"B", "C", "D", "E"}
set3 = {"C", "D", "E", "F"}

# warn: beacause no pre_argument called names 
# v = venn(3, [set1, set2, set3], names=("Set 1", "Set 2", "Set 3"))  # wrong
# v = venn3([set1, set2, set3], set_labels = ("Set 1", "Set 2", "Set 3")) # correct
# v = venn3(subsets=[set(["A", "B", "C", "D"]), set(["B", "C", "D", "E"]), set(["B", "C", "D", "E"])])
v = venn3([set1, set2, set3], ("Set 1", "Set 2", "Set 3"))

# Access and customize labels (same as before)
# 可以通过 v 对象访问 Venn 图的各个区域
# 例如，v.get_label_by_id('100').set_text('A') 可以设置集合 A 的标签 直接修改
# 逻辑修改
v.get_label_by_id('100').set_text('A\nB')
v.get_label_by_id('100').set_text('\n'.join(set1 - set2 - set3))  # Set1 Only
v.get_label_by_id('010').set_text('\n'.join(set2 - set1 - set3))  # Set2 Only
v.get_label_by_id('001').set_text('\n'.join(set3 - set1 - set2))  # Set3 Only
v.get_label_by_id('110').set_text('\n'.join((set1 & set2) - set3))  # Set1 & Set2
v.get_label_by_id('101').set_text('\n'.join((set1 & set3) - set2))  # Set1 & Set3
v.get_label_by_id('011').set_text('\n'.join((set2 & set3) - set1))  # Set2 & Set3
v.get_label_by_id('111').set_text('\n'.join(set1 & set2 & set3))  # All three

# draw venn diagram
plt.show()