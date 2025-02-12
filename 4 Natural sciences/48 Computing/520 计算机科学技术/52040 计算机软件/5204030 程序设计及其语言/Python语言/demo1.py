from venn import venn
import matplotlib.pyplot as plt

set1 = {"A", "B", "C", "D"}
set2 = {"B", "C", "D", "E"}
set3 = {"C", "D", "E", "F"}

# venn3([set1, set2, set3], ("Set 1", "Set 2", "Set 3"))
venn(3, [set1, set2, set3], names=('Set 1', 'Set 2', 'Set 3'))
plt.show() # to display the plot