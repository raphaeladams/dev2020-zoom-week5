# For the OOP of it
# Raphael Adams

class CrimeFighter
  attr_reader :name
  attr_reader :age
  attr_reader :equipment

  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end
    @name = name
  end

  def age=(age)
    unless age.is_a? Integer
      raise "Age must be an integer"
    end
    @age = age
  end

  def initialize(name = "Anonymous", age = 30)
    self.name = name
    self.age = age
    @equipment = []
  end

  def introduce
    print "This is #{ name }, age #{ age }. "
    yield
  end

  def gear_up(*gear)
    gear.each do |piece_of_gear|
      if piece_of_gear.is_a? String
        equipment << piece_of_gear
      else
        raise "Pieces of gear must be strings"
      end
    end
  end

  def move
    puts "Walks, or runs if urgent!"
  end

end

# test_crimefighter = CrimeFighter.new("Superman", 40)
# puts test_crimefighter.name
# puts test_crimefighter.age

# test_crimefighter.introduce { puts "Up, up and away!" }
# test_crimefighter.move

# test_crimefighter.gear_up("cape", "boots")
# puts test_crimefighter.equipment