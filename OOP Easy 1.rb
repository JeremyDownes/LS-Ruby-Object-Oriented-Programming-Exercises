# Banner Class
class Banner
  def initialize(message)
    @werds = message
    @leng = @werds.length
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
      hr = "+"
      (@leng+2).times {hr += "-"}
      hr += "+"
  end

  def empty_line
      el = "|"
      (@leng+2).times {el += " "}
      el += "|"
  end

  def message_line
    "| #{@werds} |"
  end
end

# What's the Output?    This may have been fixed in development
class Pet               # It seems to work normally
  attr_reader :name     # Instantiate new object states reflect changes 
                        # Idk what we're trying to do here. .upcase! ?
  def initialize(name)  
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

# Fix the Program - Books (Part 1)
class Book
    
  attr_reader :author, :title
    
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

# Fix the Program - Books (Part 2)
class Book
    
  attr_accessor :author, :title
  
  def to_s
    %("#{title}", by #{author})
  end
end

# Fix the Program - Persons
class Person

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end
  
  def first_name= (name)
    @first_name = name.capitalize
  end
  
  def last_name= (name)
    @last_name = name.capitalize
  end
  
  def to_s
    "#{@first_name} #{@last_name}"
  end
end

# Fix the Program - Flight Data
class Flight
  attr_accessor :flights_database

  def initialize(flight_number)
    @flights_database = Database.init
    @flight_number = flight_number
  end
end

# Buggy Code - Car Mileage
class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    @mileage += miles
  end

  def print_mileage
    puts @mileage
  end
end

# Rectangles and Squares
class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(size)
    @height = size
    @width = size
  end
end

class Pet
  def initialize(name, age,*)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, color)
    @color = color
    super
  end
  def to_s
    "My cat #{@name} is #{@age} years old and has #{@color} fur."
  end
end

# Refactor Vehicles
class Vehicle
  attr_reader :make, :model, :wheels
  def initialize(make, model,*)
    @make = make
    @model = model
  end
  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def initialize(make, model)
    super
    @wheels = 4
  end
end

class Motorcycle < Vehicle
  def initialize(make, model)
    super
    @wheels = 2
  end
end

class Truck < Vehicle
  attr_reader :payload
  def initialize(make, model, payload)
    super
    @payload = payload
    @wheels = 6
  end
end