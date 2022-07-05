# open files
sef = open('seferbekov.csv','r')
dw  = open('clean_results.csv','r')
outfile = open('combined_results.csv','w')
header = 'file,seferbekov,deepware\n'
outfile.write(header)
# do dict
d = {}
# read lines into variable
Lines = sef.readlines()
head = False
for line in Lines:
	if head:
		splitt = line.split(',')
		d[splitt[0][:-4]] = splitt[1][:-1]
	head = True

Lines = dw.readlines()

head = False
for line in Lines:
	if head:
		splitt = line.split(',')
		d[splitt[0][:-4]]=[d[splitt[0][:-4]],(splitt[1][:-1])]
	head = True

for key in d.keys():
	outfile.write('{file},{sefer},{deep}\n'.format(file=key,sefer=d[key][0],deep=d[key][1]))

