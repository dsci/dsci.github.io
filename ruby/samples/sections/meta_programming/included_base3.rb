module FaceRecognizable

  def self.included(base)
    base.send(:include, InstanceMethods)
    base.send(:extend, ClassMethods)
  end

  module ClassMethods 

    @path = ""
    @mime_type = ""

    def path; @path; end
    def mime_type; @mime_type; end

    # Something like this:
    #
    # recognize :path => "/Users/Bob/faces", :mime_type => "image/png"
    def recognizable(*args)
      options = args.pop

      raise "False type of argument definition!" unless options.is_a?(Hash)

      @path       = options.fetch(:path, "")
      @mime_type  = options.fetch(:mime_type, "")
    end

  end

  module InstanceMethods

    def recognize_faces(options={})
      sex = options[:sex]
      range = options.fetch(:range, 1..999999)

      extension = self.class.mime_type.split('/').last

      trace = <<-OUTPUT
        Recognize all #{sex} faces in #{self.class.path} but using only
        using images with #{extension} filename extension.
      
        Recognize pictures #{sex}_#{range.first}.#{extension} til #{sex}_#{range.last}.#{extension}
      
      OUTPUT

      puts trace

      for i in range do
        puts "trace image n# #{i}"
      end
    end
  end

end

class FamilyFilter

  def self.perform_with_female_filter
    300..400
  end

end

class Gallery
  include FaceRecognizable

  recognizable :path => "/Users/Bob/faces", :mime_type => "image/png"

  attr_accessor :type

  def initialize(attributes={})
    attributes.each_pair do |key,value|
      self.send("#{key}=",value) if self.respond_to?(key)
    end
  end

end

def recognize_with_filter(obj, recognize_method)
  options = yield
  obj.class.class_eval do
    if obj.type.eql?("female_art")
      original_recognize_faces_method = instance_method(recognize_method)
      define_method recognize_method do |options|
        # count female pictures before recognize the faces in it. 
        if options[:sex].eql?("female")
          count = <<-OUTPUT
            In #{self.class.path} female pictures are found.
            ---------------------------------------------------
          OUTPUT
    
          range = FamilyFilter.perform_with_female_filter
          options[:range] = range
          puts count
        end
        original_recognize_faces_method.bind(self).call(options)
      end
      obj.send(recognize_method, options)
    end
  end
  obj
end

# find or something
gal = Gallery.new(:type => "female_art")

gal = recognize_with_filter(gal, :recognize_faces) do
  {:sex => "female"}
end
