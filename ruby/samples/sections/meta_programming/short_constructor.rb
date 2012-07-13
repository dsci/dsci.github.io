class Person

  attr_accessor :lastname, :firstname, :age

  def initialize(attrs)
    attrs.each_pair do |key,value|
      self.send("#{key.to_s}=", value) if self.respond_to?(key)
    end
  end

end