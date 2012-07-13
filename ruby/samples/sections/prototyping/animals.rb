  
Animal = Object.new

def Animal.color=(color)
  @color = color
end

def Animal.color
  @color
end

def Animal.feets=(number_of_feets)
  @feets = number_of_feets
end

def Animal.feets
  @feets
end

def Animal.with_feet(number_of_feets)
  new_animal = clone
  new_animal.feets = number_of_feets
  new_animal
end

Cat = Animal.with_feet(4)

def Cat.speak 
  puts "miaow"
end

mortuus = Cat.clone
p mortuus.feets
mortuus.speak

lassy = Animal.with_feet(4)
#lassy.speak #=> undefined method `speak'


