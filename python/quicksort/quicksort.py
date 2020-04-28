
import random
import time
import matplotlib.pyplot as plt

def makeGraph(list1, list2,  xdata):
    plt.plot(xdata, list1, color='red',  label='python')
    plt.plot(xdata,list2, color='blue',  label='Ruby')
    plt.xscale('log')
    plt.yscale('log')
    plt.xlabel('n') 
    plt.ylabel('Time in Seconds (s)')
    plt.title('Time Study of Recursive Quicksort for python and Ruby')
    plt.legend()
    plt.show()

def partition(arr, low, high):
    i = low -1
    pivot = arr[high]
    for j in range(low, high):
        if arr[j] < pivot:
            i = i +1
            arr[i], arr[j] = arr[j], arr[i]
    arr[i+1], arr[high] = arr[high], arr[i+1]
    return i+1

def quicksort(arr, low, high):
    if(low < high):
        i = partition(arr,low, high)
        quicksort(arr, low, i-1)
        quicksort(arr, i+1, high)

n_values = []
rubytTimes = []
def ReadFile(FileName):
    file = open(FileName, "r")
    lines = file.readlines()
    for line in lines:
        s_line = line.split("'")
        rubytTimes.append(float(s_line[3]))
        n_values.append(int(s_line[1]))
        
ReadFile("studyresults.txt")

times = []
for x in range(10, 17):
    n = int(2**x)
    arr = [random.randint(1,100) +1 for y in range(n)]
    start_time = time.time()
    quicksort(arr, 0, n-1)
    end_time = time.time()
    total_time = float(end_time - start_time)
    print("n : %s  -> time: %s" % (n, total_time))
    times.append(total_time)

makeGraph(times, rubytTimes[9:16], n_values[9:16])