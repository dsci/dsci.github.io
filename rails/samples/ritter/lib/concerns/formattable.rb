module Formattable
 
  extend ActiveSupport::Concern

  def self.const_missing(const_name)
    matcher = Regexp.new(/Formatter$/)
    if const_name.to_s =~ matcher
      require "#{Rails.root}/lib/formatters/#{const_name.to_s.underscore}.rb"
      eval "::#{const_name}"
    else
      super
    end
  end

  module ClassMethods

    def format_attribute
      @attribute
    end

    def formattable(attribute)
      @attribute = attribute
    end

  end

  def to_html
    attribute = self.class.format_attribute
    formatter = Formattable.const_get("#{self.author.formatter.capitalize}Formatter").new(read_attribute(attribute))
    rendered = formatter.to_html
    write_attribute(attribute,rendered)
  rescue => e
    #puts e.message
  end 
     

end