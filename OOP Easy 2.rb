# Fix the Program - Mailable
module Mailable
  def print_address
    puts "#{name}"
    puts "#{address}"
    puts "#{city}, #{state} #{zipcode}"
  end
end

class Customer
  include Mailable
  attr_reader :name, :address, :city, :state, :zipcode
end

class Employee
  include Mailable
  attr_reader :name, :address, :city, :state, :zipcode
end

# Fix the Program - Drivable
module Drivable
  def drive
  end
end

class Car
  include Drivable
end

# Complete The Program - Houses  
class House      # struggled 2 days gave up then figured it out
  def self.new(val)
    val
  end
end

# Reverse Engineering
class Transform
  def initialize(str)
    @x = str
  end
  def self.uppercase(msg = @x)
    return msg.upcase
  end
  def self.lowercase(msg = @x)
    return msg.downcase
  end
end

# What Will This Do?
"ByeBye"
"HelloHello"

# Comparing Wallets    this question probably wanted a comparison method
class Wallet    # written in and accessed but is this technically right
  def self.new(msg)
    msg
  end
end

# Pet Shelter
class Pet
  attr_reader :name
  attr_reader :breed
  attr_reader :adopted
  
  def initialize(breed,name)
    @breed = breed
    @name = name
    @adopted = false
  end
end

class Owner
  attr_reader :name
  attr_reader :number_of_pets
  
  def initialize(name)
    @name = name
    @number_of_pets = 0
  end
  
  def adopted
    @number_of_pets += 1
  end
end

class Shelter
  @@adoptions = {}
  def adopt(owner,pet)
    owner.adopted
    if @@adoptions.has_key?(owner.name)
      @@adoptions[owner.name] += [pet.name,pet.breed]
    else @@adoptions[owner.name] = [pet.name,pet.breed] end
  end
  
  def print_adoptions
    @@adoptions.each do |owner,list|
      puts "#{owner} has adopted the folowing pets:"
      list.each_index do |i|
        if i % 2 == 0; puts "a #{list[i+1]} named #{list[i]}" end
      end
    end    
    puts
  end 
end

# Fix The Program - Expander
class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  protected

  def expand(n)
    @string * n
  end
end

# Moving
module Walkable
  def walk
    "#{self.name} #{self.gait} forward"
  end
end

class Person
  attr_reader :name
  include Walkable
  def initialize(name)
    @name = name
  end

  protected

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name
  include Walkable
  def initialize(name)
    @name = name
  end

  protected

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
  include Walkable
  def initialize(name)
    @name = name
  end

  protected

  def gait
    "runs"
  end
end

# Nobility
class Noble
  attr_reader :name
  attr_reader :title
  include Walkable
  def initialize(name,title)
    @name = name
    @title = title
  end

  def walk
    "#{@title} #{super}"
  end
  
  protected
  
  def gait
    "struts"
  end
end
