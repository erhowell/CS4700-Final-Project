import time
import matplotlib.pyplot as plt

def makeGraph(list1, list2,  xdata):
    plt.plot(xdata, list1, color='red',  label='Python')
    plt.plot(xdata,list2, color='blue',  label='Ruby')
    plt.xscale('log')
    plt.yscale('log')
    plt.xlabel('n') 
    plt.ylabel('Time in Seconds (s)')
    plt.title('Time Study of Dp Minimum Edit Distance Algorithm for Python and Ruby')
    plt.legend()
    plt.show()

def MED(first, last): 
	k = int(len(first)/2)
	cache = [[0 for l in range(len(last) + 1)] for f in range(len(first) + 1)] 
	for x in range(len(first) + 1): 
		for y in range(len(last) + 1): 
			if  (x < k  and y >= k) or (x <= k and y > k):
				if x == 0:  # remove all characters in second string
					cache[x][y] = y 
				elif y == 0: # remove all characters in first string
					cache[x][y] = x
				elif first[x-1] == last[y-1]: # if characters are the same 
					cache[x][y] = cache[x-1][y-1] 
				else: 
					cache[x][y] = 1 + min(cache[x-1][y], #remove a letter
									cache[x][y-1],	  #insert a letter
									cache[x-1][y-1])  #replace a letter

	return cache[len(first)][len(last)] 

def ReadFile(FileName):
    sequence =''
    with open(FileName) as contentfile:
        sequence = contentfile.read()
        sequence = sequence.rstrip().split(' ')
    return ''.join([str(x) for x in sequence if x.isalpha()])

def WriteToFile(filename,line):
    f = open(filename, "a+")
    print(line, file =f)
    f.close()   



HUMAN = ReadFile('.\\StudyFiles\\Human.txt')
APE = ReadFile('.\\StudyFiles\\GreatApes.txt')
rubytTimes = []
def ReadFile(FileName):
    file = open(FileName, "r")
    lines = file.readlines()
    for line in lines:
        s_line = line.split("'")
        rubytTimes.append(float(s_line[3]))
        
ReadFile("studyresults.txt")

n_size = []
times = []
for x in range(1,11):
    endindex = x * 1000
    start_time = time.time()
    dist = MED(HUMAN[0:endindex], APE[0:endindex])
    end_time =time.time()
    total_time = end_time-start_time
    times.append(total_time)
    print("Time %s for distance between human and ape for the first %s sequence" %(total_time, endindex))
    n_size.append(endindex)



makeGraph(times, rubytTimes, n_size)