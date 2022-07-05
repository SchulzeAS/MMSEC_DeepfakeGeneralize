import re
import sys
csvfile= open('deepware.csv','r')
newcsvfile = open('clean_results.csv','w')
# print csv header
head = 'filename,label\n'
newcsvfile.writelines(head)
Lines = csvfile.readlines()
header = False
strig = '(?<={folder}/).*'
# sys.argv[1]
for line in Lines:
	if header:
		newcsvfile.writelines(re.search(strig.format(folder = sys.argv[1]),line).group(0))
		newcsvfile.writelines('\n')
	header = True
csvfile.close()
newcsvfile.close()
