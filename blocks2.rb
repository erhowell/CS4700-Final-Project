

def blockExample
  puts "Inside blocksExample method"

  yield # Calls the blockExample Block statement

  puts "Inside blocksExample method"

end

blockExample{ puts "Inside Block"}
#returns
  #"Inside method"
  #Inside Block
  #Inside method


#call a block with arguements inside block example

def blockWithArguement
  puts "Inside method"

  yield 4 # Calls the blockWithArguement Block statement write_handler
    # arguement value of 4

  puts "Inside method"

end

blockWithArguement{ |x|
    puts "Inside Block"
    (1..x).each do |y|
      puts y
    end

  }
  #returns
    #"Inside method"
    #Inside Block
    #1
    #2
    #3
    #4
    #Inside method
