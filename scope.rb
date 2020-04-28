
$num1 = 4
num2 = 5

def exampleNums(num2)
  @num2 = num2 +11
  puts ("num1:'#{$num1}' and num2: '#{@num2}' inside function'").to_s()
  $num1 += 10
end

puts ("num1:'#{$num1}' and num2: '#{num2}' before function run ").to_s()
exampleNums(num2)
puts ("num1:'#{$num1}' and num2: '#{num2}' after function run").to_s()
