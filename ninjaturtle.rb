# For the OOP of it
# Raphael Adams

require_relative 'crimefighter'

class NinjaTurtle < CrimeFighter
  attr_reader :weapon

  def weapon=(weapon)
    weapon == "" ? (raise "Weapon can't be blank") : @weapon = weapon
  end

  def initialize(name = "Anonymous", age = 30, weapon = "Bare knuckles")
    super(name, age)
    self.weapon = weapon
  end

  def eat
    puts "#{ name } is eating pizza!"
  end

  def gear_up
    equipment << @weapon
  end

end

test_ninjaturtle = NinjaTurtle.new("Raphael", 18, "Sai")
puts test_ninjaturtle.name
puts test_ninjaturtle.age
puts test_ninjaturtle.weapon

test_ninjaturtle.introduce { puts "Cowabunga!" }
test_ninjaturtle.eat
test_ninjaturtle.gear_up
puts test_ninjaturtle.equipment