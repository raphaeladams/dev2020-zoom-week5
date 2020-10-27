# For the OOP of it
# Raphael Adams

class CrimeFighter
  attr_reader :name
  attr_reader :age
  attr_reader :equipment

  def name=(name)
    name == "" ? (raise "Name can't be blank") : @name = name
  end

  def age=(age)
    if age.is_a? Integer
      @age = age
    else
      raise "Age must be an integer"
    end
  end

  def initialize(name = "Anonymous", age = 30)
    self.name = name
    self.age = age
    @equipment = []
  end

  def introduce
    print "This is #{ @name }, age #{ @age }. "
    yield
  end

  def gear_up(*gear)
    gear.each { |piece| piece == "" ? (raise "Gear can't be blank") : @equipment << piece }
  end

  def remove_gear
    @equipment.clear
  end

  def move
    puts "Walks, or runs if urgent!"
  end

end
