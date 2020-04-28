
module SalesTag # a module that the class dog can mix in
  def print_tag()
    puts "Ask manager for price!"
  end
end


class  Pet # parent class
  def initialize(name)
    @name = name
  end
end

class  Dog < Pet # dog inherits from class, Pet
include SalesTag # dog includes mixin, Sales tag
  def initialize(name, breed)
    super(name) #inherits name variable
    @breed = breed
  end

  def print_name()
    puts "'#{@name}'"
  end
end


puppy = Dog.new("Spot", "Golden Doodle") #creates a new Dog
puppy.print_name() # prints Spot
puppy.print_tag() # prints "Ask manager for price"
