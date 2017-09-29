# 1 - 6
module Towable
  def tow
    print "I can tow a trailer"
  end
end

class Vehicle
  attr_reader :year

  def initialize(year,bed = "")
    @year = year
    @bed = bed
   # start_engine 
  end
end

class Car < Vehicle
  def start_engine
    puts 'Ready to go!'
  end
end
class Truck < Vehicle
  attr_reader :bed
  include Towable  
  def start_engine(speed)
    puts 'Ready to go!'+ " Please drive #{speed}"
  end
end

# 7
class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.method(:color)

# 8
"Context::Cat, Context::Animal, Object, JSON::Ext::Generator::GeneratorMethods::Object, Kernel, BasicObject"

# 9
"Context::Bird, Context::Flyable, Context::Animal"

#10
module Transportation
  class Vehicle
  end
  class Car < Vehicle
  end
  class Truck < Vehicle
  end
end