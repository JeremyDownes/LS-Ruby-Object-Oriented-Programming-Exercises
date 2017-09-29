# Generic Greeting (Part 1)
class Cat
  def self.generic_greeting
      puts "Hi, I'm generic!"
  end
end

# Hello, Chloe!
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  def rename(name)
    @name = name
  end
end

# Identify Yourself
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  def identify
    self
  end
end

# Generic Greeting (Part 2)
class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end
  def self.generic_greeting
    puts "Hi, I'm a generic cat"
  end
  def personal_greeting
    puts "Hi my name is #{name} and I'm NOT generic"
  end
end

# Counting Cats
class Cat
  @@cats = 0
  def initialize
    @@cats += 1
  end
  def self.total
    @@cats
  end
end

# Colorful Cat
class Cat
  #COLOR = "purple"
  def initialize(name)
    @name = name
  end
  def greet
    puts "Hi I'm a #{COLOR} cat named #{name}"
  end
end

# Identify Yourself (Part 2)
class Cat
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  def to_s
    "Hi I'm #{name}"
  end
end

# Public Secret
class Person
  attr_accessor :secret
end

# Private Secret
class Person
  attr_writer :secret
  def share_secret
    puts @secret
  end
  private
  attr_reader :secret
end

# Protected Secret
class Person
  attr_writer :secret
  def compare_secret(obj)
    @secret == obj.secret
  end
  protected
  attr_reader :secret
end