module AnimalisticBehaviour

  def steal_food
    puts 'flupppr'
  end

end

class Animal 

  attr_accessor :color,:feets

  def self.with_feet(number_of_feets)
    new_animal        = self.new
    new_animal.feets  = number_of_feets
    new_animal
  end

  def eat
    puts 'mmmmmpfgrwwmmmp'
  end

end

class Cat < Animal

  include AnimalisticBehaviour

  def speak
    puts 'miaow'
  end

end

class Dog < Animal

  def fetch
    puts 'rrrrwwwww.....'
  end

end

class Bird < Animal

  include AnimalisticBehaviour

  def fly
    puts 'flupppfluppp....'
  end

end