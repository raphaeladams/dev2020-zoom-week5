# For the OOP of it
# Raphael Adams

require_relative 'crimefighter'

class Superhero < CrimeFighter
  attr_reader :power

  def power=(power)
    power == "" ? (raise "Power can't be blank") : @power = power
  end

  def initialize(name = "Anonymous", age = 30, power = "Super strength")
    super(name, age)
    self.power = power
  end

  def catchphrase
    puts "This looks like a job for #{ name }!"
  end

  def move
    puts "Flies across the sky!"
  end

end
