

#syntax
# block_name do
#   statements
#end


# each is the block name
["var 1", "var 2", "var 3", "var 4" ].each do |x|
  puts x
end
# prints :
# var 1
# var 2
# var 3
# var 4


#syntax
# block_name {statements}

#each is method name
["var 1", "var 2", "var 3", "var 4" ].each { |x | puts x}
# Also prints :
# var 1
# var 2
# var 3
# var 4
