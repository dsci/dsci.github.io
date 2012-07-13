class FileConfig

  class << self

    def my_attr_accessor(*accessors)
      accessors.each do |accessor|

        define_method accessor do 
          self.instance_variable_get("@#{accessor}")
        end

        define_method "#{accessor}=" do |value|
          self.instance_variable_set("@#{accessor}", value)
        end
      end

    end

  end

  my_attr_accessor :path, :mime_type

end

c = FileConfig.new

c.path = "sdsdsd"

p c.path