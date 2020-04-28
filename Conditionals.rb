
=begin
  Comparison and Logical Operators:
  Comparison : == != < > <= >=
  Logical : && || ! and or not

=end
age = 12

if (age >= 5 ) && (age <= 6)
  puts "You're in kindergarten"
elsif (age >= 7 ) && (age <=13 )
  puts "You're in Middle School"
else
  puts "Stay Home"
end
#  must include the keyword 'end' and the very end of the conditional block


puts "true && false = " + (true && false).to_s
puts "true || false = " + (true || false).to_s
puts "5 <=> 10" + (5 <=> 10).to_s

# unless is another conditional operator
unless  age> 4
  puts "No School"
else
  puts "Go to school"
end


#inline conditional variable value assignment
puts "You're young" if age < 30


#switch or case statement example
#exit break out of the case statement

greeting = "Spanish"

case greeting
when  "French", "french"
  puts "Bonjour"
  exit
when "Spanish", "spanish"
  puts "Hola"
  exit
else "English"
  puts "hello"
end



#terianry operation
puts (age >=50 ) ? "Old : "Young"
