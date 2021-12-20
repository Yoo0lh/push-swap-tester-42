import random, sys
class color :
   WARNING = '\033[93m'
list=[]
if len(sys.argv) < 2:
   sys.exit(color.WARNING + "Invalid Variable")
j = 0
while j < int(sys.argv[1]):
   r = random.randint(0, int(sys.argv[1]))
   if r not in list:
      list.append(r)
      j += 1
print("\n".join([str(i) for i in list]))