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
