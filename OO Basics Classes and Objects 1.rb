# Find the Class
puts "Hello".class
puts 5.class
puts [1, 2, 3].class

# Create the Class
class Cat
  def initialize
    puts "I'm a cat!"
  end
end
# What Are You?
kitty = Cat.new

# Hello, Sophie! (Part 1)
class Cat
  def initialize(name)
    @name = name
    puts "Hi, I'm #{@name}"
  end
end

kitty = Cat.new("Sophie")

# Hello, Sophie! (Part 2)
class Cat
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hi, I'm #{@name}"
  end
end

kitty = Cat.new("Sophie")
kitty.greet

# Hello, Sophie! (Part 3)
class Cat
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def greet
    puts "Hi, I'm #{name}"
  end
end

kitty = Cat.new("Sophie")
kitty.greet

# Reader
class Cat
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def greet
    puts "Hi, I'm #{name}"
  end
end

kitty = Cat.new("Sophie")
kitty.greet

# Writer       I already switched to accessor
class Cat
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hi, I'm #{name}"
  end
end

kitty = Cat.new("Sophie")
kitty.greet
kitty.name = "Luna"
kitty.greet

# Walk the Cat
module Walkable
  def walk
    puts "Let's go for a walk"
  end
end

class Cat
  attr_accessor :name
  include Walkable
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hi, I'm #{name}"
  end
end

kitty = Cat.new("Walker")
kitty.walk