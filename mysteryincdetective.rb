# For the OOP of it
# Raphael Adams

require_relative 'crimefighter'

class MysteryIncDetective < CrimeFighter
  attr_reader :suspects

  def initialize(name = "Anonymous", age = 18, *names)
    super(name, age)
    @suspects = []
    names.each { |name| name == "" ? (raise "Suspect name can't be blank") : @suspects << name }
  end

  def solve_mystery
    puts "Turns out it was #{ suspects.sample } all along!"
  end

  def move
    puts "Drives the Mystery Machine!"
  end

end

test_mysteryinc = MysteryIncDetective.new("Shaggy", 17, "Kanye West", "Matthew McConaughey", "Nicolas Cage")
puts test_mysteryinc.name
puts test_mysteryinc.age
puts test_mysteryinc.suspects

test_mysteryinc.introduce { puts "Zoinks!" }
test_mysteryinc.solve_mystery
test_mysteryinc.move

test_mysteryinc.gear_up("flashlight")
puts test_mysteryinc.equipment