# Reading and Writing
class Person
  attr_reader :name
  attr_writer :name
end

# Choose the Right Method
class Person
  attr_accessor :name
  attr_writer :phone_number
end

# Access Denied
class Person
  attr_reader :phone_number

  def initialize(number)
    @phone_number = number
  end
end

# Comparing Names
class Person
  attr_accessor :first_name
  attr_writer :last_name
  def first_equals_last?
    first_name == last_name
  end
  private
  attr_reader :last_name
end

# Who is Older?
class Person
  attr_writer :age
  def older_than?(other)
    age > other.age
  end
  protected
  attr_reader :age
end

# Guaranteed Formatting
class Person
  attr_reader :name
  def name= (name)
    @name = name.capitalize
  end
end

# Prefix the Name
class Person
  attr_reader :name
  def name=(name)
    @name = "Mr. "+name
  end
end

# Avoid Mutation
class Person
  def name
    @name.clone    # or .dup
  end

  def initialize(name)
    @name = name
  end
end

# Calculated Age
class Person
  def age=(age)
    @age = age * 2
  end
  def age
    @age * 2
  end
end

# Unexpected Change
class Person
  def name= (name)
    name = name.split(" ")
    @last_name = name.pop
    @first_name = name.pop
  end
  def name
    "#{@first_name} #{@last_name}"
  end
end