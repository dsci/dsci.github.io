require 'java'

java_import 'java.lang.String' do |pkg,cls|
  'JString'
end


str = JString.new("abc")

puts str.class # => Java::JavaLang::String

puts str.respond_to?(:+) # => false

class JString

  def +(other)
    "#{self}#{other}" 
  end
end

puts str.respond_to?(:+) # => true
puts str + "defg" # => abcdefg