# Dominos
# Raphael Adams

class Domino

  def self.double_six_set
    set = []
    (0..6).each do |top|
      (0..6).each do |bottom|
        set << Domino.new(top, bottom)
      end
    end
    set
  end

  attr_reader :top_dots
  attr_reader :bottom_dots

  def top_dots=(top_dots)
    unless top_dots.between?(0, 6)
      raise "Invalid number of dots on top half"
    end
    @top_dots = top_dots
  end

  def bottom_dots=(bottom_dots)
    unless bottom_dots.between?(0, 6)
        raise "Invalid number of dots on bottom half"
    end
    @bottom_dots = bottom_dots
  end

  def initialize(top_dots, bottom_dots)
    self.top_dots = top_dots
    self.bottom_dots = bottom_dots
  end

  def to_s
    print_dots = lambda do |num_dots|
      chars = [
        " ", " ", " ", 
        " ", " ", " ", 
        " ", " ", " "
      ]
    
      if num_dots >= 6
        chars[3] = "*"
        chars[5] = "*"
      elsif num_dots % 2 != 0
        chars[4] = "*"
      end
    
      if num_dots >= 4
        chars[2] = "*"
        chars[6] = "*"
      end
    
      if num_dots >= 2
        chars[0] = "*"
        chars[8] = "*"
      end

      chars.each_with_index do |val, index|
        print val
        print "\n" if (index + 1) % 3 == 0
      end
    end

    print_dots.call(top_dots)
    puts "---"
    print_dots.call(bottom_dots)
    print "\n"
  end
end


def swap_tops_and_bottoms(given_list)
  new_list = given_list.map { |d| Domino.new(d.bottom_dots, d.top_dots) }
end


puts "ORIGINAL SET"
og_set = Domino.double_six_set
og_set.each { |i| i.to_s }

puts "MODIFIED SET"
new_set = swap_tops_and_bottoms(og_set)
new_set.each { |i| i.to_s }