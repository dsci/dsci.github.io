# -*- encoding : utf-8 -*-
=begin
 
Eine Autofabrik umfasst folgendes Sortiment:

* dreitürige Kleinwagen mit vier Sitzen
* LKWs mit verschiedenen Auflageflächen
* Familien Vans mit 8 Sitzen und einer Anhängekupplung

Die Firma 'Microsoft' bestellt in dieser Fabrik für
die Mitarbeiter

* 9 rote Kleinwagen (45 PS) mit dem Navigationsgerät "City" zu je 9800 Euro
* 4 blaue Familienvans (120 PS) mit dem Navigationsgerät "City+" und einer Anhängerkupplung zu je 23000 Euro
* für das Facility Management 1 gelber LKW (180 PS) mit der Auflagefläche "groß"
  zu je 73000 Euro

Aus technischen Gründen können Navigationsgeräte nicht in Nutzfahrzeugen verbaut
werden.

Die Firma 'Microsoft' erwartet von der Autofabrik eine
detailierte, typabhängige Übersicht über die Bestellung. 
=end

Factory = Object.new

Car     = Object.new

Company = Object.new

def Company.name=(name)
  @name = name
end

def Company.name
  @name
end

def Car.number_of_wheels=(number_of_wheels)
  @wheels = number_of_wheels
end

def Car.number_of_wheels
  @wheels
end

def Car.color=(color)
  @color = color
end

def Car.color
  @color 
end

def Car.ps=(ps)
  @ps = ps
end

def Car.ps
  @ps
end

def Car.price=(price)
  @price = price
end

def Car.price
  @price
end

def Car.seats=(seats)
  @seats = seats
end

def Car.seats
  @seats ||= 2
end

def Car.doors
  @doors ||= 2
end

def Car.doors=(doors)
  @doors = doors
end

def Car.with_basic_equipment(attributes={})
  new_car                   = clone
  new_car.seats             = attributes[:seats]  if attributes.has_key?(:seats) 
  new_car.number_of_wheels  = attributes[:wheels] if attributes.has_key?(:wheels)
  new_car.color             = attributes[:color]  if attributes.has_key?(:color)
  new_car.doors             = attributes[:doors]  if attributes.has_key?(:doors)
  new_car.ps                = attributes[:ps]     if attributes.has_key?(:ps)
  new_car
end

MotorCar = Car.with_basic_equipment(:wheels => 4)

def MotorCar.navigation
  @navigation
end

def MotorCar.navigation=(navigation_type)
  @navigation = navigation_type
end

SmallCar  = MotorCar.with_basic_equipment(:seats => 4, :doors => 3)
FamilyVan = MotorCar.with_basic_equipment(:seats => 8)

def FamilyVan.trailer_hitch=(with_hitch)
  @trailer_hitch = with_hitch
end

def FamilyVan.trailer_hitch
  @trailer_hitch ||= false
end

UtilityCar = Car.clone

def UtilityCar.cargo_area
  @cargo_area
end

def UtilityCar.cargo_area=(size_of_cargo_area)
  @cargo_area = size_of_cargo_area
end

def Factory.orderer=(orderer)
  @orderer = orderer
end

def Factory.orderer
  @orderer
end

def Factory.order_overview
  overview = <<-text
  Bestellübersicht
    Besteller: #{orderer.name}

    Es wurden #{small_cars.size} Kleinwagen bestellt.
    Es wurden #{family_vans.size} Familien Vans bestellt.
    Es wurden #{utility_cars.size} Nutzfahrzeuge bestellt.

    Insgesamt bestellten Sie #{small_cars.size + family_vans.size + utility_cars.size} Fahrzeuge.
    =================================================
  text

  small_cars_sum    = 0 
  family_vans_sum   = 0
  utility_cars_sum  = 0

  overview << "\n\n"
  overview << "Kleinwagenübersicht:"
  overview << "\n\n"
  overview << "Stück\tFarbe\t\Sitze\tNavigationsgerät\tPreis\n"
  small_cars.each do |car|
    overview << "#{1}\t" << "#{car.color}\t" << "#{car.seats}\t" << "#{car.navigation}\t\t\t" << "#{car.price}\n"
    small_cars_sum += car.price
  end

  overview << "\nZwischensumme: #{small_cars_sum} Euro"

  overview << "\n\n"
  overview << "Familienwagenübersicht:"
  overview << "\n\n"
  overview << "Stück\tFarbe\t\Sitze\tNavigationsgerät\tAnhängerkupplung\tPreis\n"
  family_vans.each do |car|
    overview << "#{1}\t" << "#{car.color}\t" << "#{car.seats}\t" << "#{car.navigation}\t\t\t" << "#{car.trailer_hitch}\t\t\t" << "#{car.price}\n"
    family_vans_sum += car.price
  end

  overview << "\nZwischensumme: #{family_vans_sum + small_cars_sum} Euro"

  overview << "\n\n"
  overview << "Nutzfahrzeugübersicht:"
  overview << "\n\n"
  overview << "Stück\tFarbe\t\Sitze\tLadefläche\tPreis\n"
  utility_cars.each do |car|
    overview << "#{1}\t" << "#{car.color}\t" << "#{car.seats}\t" << "#{car.cargo_area}\t\t" << "#{car.price}\n"
    utility_cars_sum += car.price
  end

  total_sum = family_vans_sum + small_cars_sum + utility_cars_sum

  overview << "\nZwischensumme: #{total_sum} Euro"

  overview << "\n\nEs werden ihnen #{total_sum} Euro in Rechung gestellt."

  overview
end

def Factory.small_cars
  @small_cars ||= []
end

def Factory.family_vans
  @family_vans ||= []
end

def Factory.utility_cars
  @utility_cars ||= []
end

def Factory.order_small_car(attribute_of_car)
  color           = attribute_of_car[:color]
  navigation_type = attribute_of_car[:navigation_type]
  ps              = attribute_of_car[:ps]

  new_small_car = SmallCar.with_basic_equipment(:color => color, :ps => ps)
  new_small_car.navigation = navigation_type
  new_small_car.price = 9800
  small_cars << new_small_car
end

def Factory.order_family_van(attribute_of_car)
  color           = attribute_of_car[:color]
  navigation_type = attribute_of_car[:navigation_type]
  ps              = attribute_of_car[:ps]
  trailer_hitch   = attribute_of_car[:trailer_hitch]

  new_van = FamilyVan.with_basic_equipment(:color => color, :ps => ps)
  new_van.navigation    = navigation_type
  new_van.trailer_hitch = trailer_hitch 

  new_van.price = 23000
  family_vans << new_van
end

def Factory.order_utility_car(attribute_of_car)
  color           = attribute_of_car[:color]
  ps              = attribute_of_car[:ps]
  cargo_area      = attribute_of_car[:cargo_area]

  new_utility_car = UtilityCar.with_basic_equipment(:color => color, :ps => ps)
  new_utility_car.price = 73000
  new_utility_car.cargo_area = cargo_area
  utility_cars << new_utility_car
end

my_little_car_factory = Factory.clone

orderer = Company.clone
orderer.name = "Microsoft"

my_little_car_factory.orderer = orderer 

small_car_attributes = {
  :color => "rot",
  :navigation_type => "City",
  :ps => 45
}

family_vans_attributes = {
  :color => "blau",
  :navigation_type => "City+",
  :ps => 120,
  :trailer_hitch => true
}

utility_cars_attributes = {
  :color => "gelb",
  :cargo_area => "groß",
  :ps => 180
}

9.times do
  my_little_car_factory.order_small_car(small_car_attributes)
end

4.times do 
  my_little_car_factory.order_family_van(family_vans_attributes)
end

my_little_car_factory.order_utility_car(utility_cars_attributes)

puts my_little_car_factory.order_overview









