

#next keyword indicates the beginning of the instrucitons
x = 1

loop do
  x+=1
  next unless (x % 2) == 0
  puts x

  break if x >= 10

end

 y =1
while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
end

a =1
until a >= 10
  a += 1
  next unless(a % 2 ) ==0
  puts a
end

# for each example
groceries = ["bread", "bananas", "pasta", "potatoes"]
groceries.each do |food|
  puts "Get Some #{food}"
end


# foreach example with numbers
(0..5).each do |i|
  puts "#{i}"
end
