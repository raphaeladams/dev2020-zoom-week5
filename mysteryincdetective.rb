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
