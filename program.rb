# For the OOP of it
# Raphael Adams

require_relative 'crimefighter'
require_relative 'superhero'
require_relative 'ninjaturtle'
require_relative 'mysteryincdetective'


puts "TESTING CRIMEFIGHTER CLASS"
generic_crimefighter = CrimeFighter.new
puts generic_crimefighter.name
puts generic_crimefighter.age

generic_crimefighter.introduce { puts "How do you do!" }
generic_crimefighter.move

generic_crimefighter.gear_up("shirt", "boots", "notebook")
print "#{ generic_crimefighter.equipment } \n"
generic_crimefighter.remove_gear
print "#{ generic_crimefighter.equipment } \n\n"


puts "TESTING SUPERHERO CLASS"
superman = Superhero.new("Superman", 40, "X-ray vision")
puts superman.name
puts superman.age
puts superman.power

superman.introduce { puts "Up, up and away!" }
superman.catchphrase
superman.move

superman.gear_up("cape", "boots")
print "#{ superman.equipment } \n"
superman.remove_gear
print "#{ superman.equipment } \n\n"


puts "TESTING NINJATURTLE CLASS"
raphael = NinjaTurtle.new("Raphael", 18, "Sai")
puts raphael.name
puts raphael.age
puts raphael.weapon

raphael.introduce { puts "Cowabunga!" }
raphael.eat

raphael.gear_up
print "#{ raphael.equipment } \n"
raphael.remove_gear
print "#{ raphael.equipment } \n\n"


puts "TESTING MYSTERYINCDETECTIVE CLASS"
shaggy = MysteryIncDetective.new("Shaggy", 17, "Kanye West", "Matthew McConaughey", "Nicolas Cage")
puts shaggy.name
puts shaggy.age
print "#{ shaggy.suspects } \n"

shaggy.introduce { puts "Zoinks!" }
shaggy.solve_mystery
shaggy.move

shaggy.gear_up("flashlight")
print "#{ shaggy.equipment } \n"
shaggy.remove_gear
print "#{ shaggy.equipment } \n"