-4.abs # => 4
7.odd? # => true


Class.superclass # => Module


nil.inspect # => "nil"
nil.to_s    # => ""

puts 'I love Mac&Cheese.' # => I love Mac&Cheese.
puts "I love:\nMac&Cheese,\nMashed potatoes, \nCherry danish with a cup of coffee." 
# =>  I love:
#     Mac&Cheese,
#     Mashed potatoes, 
#     Cherry danish with a cup of coffee.

puts -6.class        #=> Fixnum
puts -6.0.class      #=> Float
puts 0454.class      #=> Fixnum
puts (2 * 2).class   #=> Fixnum
puts (2.0 * 2).class #=> Float
puts 2.to_f         #=> 2.0 / Float 


a = [] # oder Array.new
a << 10 << 12 << -5 << 20 << 2

a.length                  # => 5
a.first                   # => 10
a.last                    # => 2
a.reverse                 # => [2,20,-5,12,10]
a.map{| n| n.to_s + "!"}  # => ["10!", "12!", "-5!", "-20", "2"]
a.sort                    # => [-5,2,10,12,20]
a.delete_at(3)            # => [10,12,-5,2]
a << 33                   # => [10,12,-5,2,33]
a.pop                     # => [10,12,-5,2]
a.pop(3)                  # => [12,-5,2]

h = {:us => "Washington", :de => "Berlin"}
h[:ca]  = "Ottawa"    # => {:us => "Washington", :de => "Berlin", :ca => "Ottawa"}
h[:pol] = "Warschau"  # => {:us => "Washington", :de => "Berlin", :ca => "Ottawa",
                      #     :pol => "Warschau"}
h.merge!({:aut => "Wien", :sui => "Bern"}) # => { :us => "Washington", :de => "Berlin",
                                           #      :pol => "Warschau", :aut => "Wien",
                                           #      :sui => "Bern"}
h.keys    # => [:us, :de, :ca, :pol, :aut, :sui]
h.values  # => ["Washington", "Berlin", "Ottawa", "Warschau", "Wien", "Bern"]

h.has_key?(:us) #=> true
h.has_value?("Stockholm") #=> false

h.values_at(:us,:sui) # => ["Washington", "Bern"]
h.clear #=> {}

class Person

  attr_accessor :name, :birthday, :lastname
  def initialize(name,birthday)
    @name = name
    @birthday = birthday
  end

  def age
    #....
  end

  def marry(other)
    self.lastname = other.lastname
  end

end

class Foo

  @@better = 12

  def self.better
    @@better
  end

end


class Animal 

  attr_accessor :color,:feets

  def self.with_feet(number_of_feets)
    new_animal        = self.new
    new_animal.feets  = number_of_feets
    new_animal
  end

end

class Cat < Animal

  def speak
    puts 'miaow'
  end

end

mortuus = Cat.with_feet(4)
p mortuus.feets # => 4
mortuus.speak # => "miaow"

lassy = Animal.with_feet(4)
#lassy.speak # => undefined method `speak'

class Array 

  def find
    for i in 0..size
      value = self[i]
      return value if yield(value)
    end
    return nil
  end

end

number = [1,3,5,7,9].find{|v| v*v > 30}

p number

class Coward

  attr_accessor :site

  def to_s
    "Coward post some stuff anonymously at #{site}."
  end
end

c = Coward.new
c.site = "http://rubyflow.com"

puts c

puts "Notice: " << c.to_s