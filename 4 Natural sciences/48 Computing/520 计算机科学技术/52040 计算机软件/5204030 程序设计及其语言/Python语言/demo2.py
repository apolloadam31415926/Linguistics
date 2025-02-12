from venn import venn
import matplotlib.pyplot as plt

set1 = {"A", "B", "C", "D"}
set2 = {"B", "C", "D", "E"}
set3 = {"C", "D", "E", "F"}

# Correct usage for 3 sets:
v = venn(3, [set1, set2, set3], names=("Set 1", "Set 2", "Set 3"))  # 3 sets, list of sets, names

# Correct usage for 2 sets:
set_a = {"A", "B", "C"}
set_b = {"B", "C", "D"}
v2 = venn(2, [set_a, set_b], names=("Set A", "Set B"))  # 2 sets, list of sets, names


# Access and customize labels (same as before)
v.get_label_by_id('100').set_text('\n'.join(set1 - set2 - set3))  # Set1 Only
v.get_label_by_id('010').set_text('\n'.join(set2 - set1 - set3))  # Set2 Only
v.get_label_by_id('001').set_text('\n'.join(set3 - set1 - set2))  # Set3 Only
v.get_label_by_id('110').set_text('\n'.join((set1 & set2) - set3))  # Set1 & Set2
v.get_label_by_id('101').set_text('\n'.join((set1 & set3) - set2))  # Set1 & Set3
v.get_label_by_id('011').set_text('\n'.join((set2 & set3) - set1))  # Set2 & Set3
v.get_label_by_id('111').set_text('\n'.join(set1 & set2 & set3))  # All three

plt.show()

v2.get_label_by_id('10').set_text('\n'.join(set_a - set_b))  # Set A Only
v2.get_label_by_id('01').set_text('\n'.join(set_b - set_a))  # Set B Only
v2.get_label_by_id('11').set_text('\n'.join(set_a & set_b))  # Set A & Set B

plt.show()