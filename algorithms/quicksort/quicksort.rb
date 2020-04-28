
#In this program, we are adding a method to the existing Array class
#that implements the quicksort algorthm

class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    #allows blocks to be passed into a method as a parameter
    #partition returns the given Array split into 2 arrays at the pivot value
    left,right = partition(&pivot.method(:>))

    # * denotes a splat arguement
    # a splat arguement is parameter that has an undefined size
    # the function combines the lower half of the appropriately sorted array,
    # the pivot, and the sorted right half of the Array
    return *left.quicksort, pivot, *right.quicksort
  end
end


#example return
arr = Array.new(10) { rand(1..100) }
p arr.quicksort


# print time data
(0..15).each do |i|
  starting = Time.now
  # time consuming operation
  n = 2**i
  arr = Array.new(n) { rand(1..100) }
  arr.quicksort
  ending = Time.now
  timeElapsed = ending- starting
  puts "Time to sort Array of Size #{n} using Quick Sort: #{timeElapsed}"
  write_handler = File.new(".\\algorithms\\quicksort\\studyresults.txt", "a")
  #writes into the file
  write_handler.puts("'#{n}' '#{timeElapsed}'").to_s
  #closes the file
  write_handler.close
end
