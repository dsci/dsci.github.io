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

air_pressure = 1
if air_pressure < 10
  puts 'Houston, we have a problem!'
end

unless air_pressure > 10 
  puts 'Houston, we have a problem!'
end

numbers     = [3,6,7,19]
multiplied  = []

for number in numbers 
  multiplied << number * 2
end # => [6,12,14,38]

numbers.each{|number| multiplied << number * 2}

square = 2
while square < 1000
  square = square * square
end

puts 'Houston, we have a problem!' if air_pressure < 10

puts 'Houston, we have a problem!' unless air_pressure > 10

square = 2

square = square * square while square < 1000
