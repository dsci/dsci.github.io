class Struct

  @children = []

  class << self
    attr_reader :children

    def inherited(klass)
      @children << klass
    end

  end

end

Fred = Struct.new(:name)
Dave = Struct.new(:name)

p Struct.children

class Cellphone

  attr_accessor :camera, :volume, :speaker

  original_method_missing = instance_method(:method_missing)

  define_method(:method_missing) do |meth_name, *args, &block|
    if meth_name.to_s.include?("siri")
      puts "siri is supported for this phone"
    else
      original_method_missing.bind(self).call(meth_name,*args,&block)
    end
  end

end

phone = Cellphone.new

#phone.has_siri?
#phone.has_s_voice?
