
#check if the object defines the to_str method
puts "This is a string.".respond_to?(:to_str) #outputs True

puts 4.respond_to?(:to_str) #outputs False because int types don't define to_str method

arr = Array.new(4) {|x| x.to_s}
puts arr.respond_to?(:to_str) # outputs false because array object don't define to_str method
