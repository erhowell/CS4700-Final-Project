#example of write object

#Creates file if not already there
write_handler = File.new("test.txt", "w")
#writes into the file
write_handler.puts("Random Text").to_s
#closes the file
write_handler.close

#reads file into variable
data_from_file = File.read("test.txt")
puts "Data from file" + data_from_file

#executes existing ruby file
load "HelloWorld.rb"
