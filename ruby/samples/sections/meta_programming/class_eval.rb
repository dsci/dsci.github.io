require "rubygems"
require 'active_support/all'

module Relations

  def self.included(base)
    base.send(:extend, ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module InstanceMethods

    def reflect_on_association(type)
      if self.respond_to?(type)
        real_type = self.send(type).first.class.name
        return Class.new do
          attr_accessor :class_name
          def initialize(class_name)
            @class_name = class_name
          end
        end.new(real_type)
      end
    end

  end

  module ClassMethods

    def has_many(relation_name)
      relation = ActiveSupport::Inflector.singularize(relation_name.to_s).capitalize
      klass = const_get(relation.to_s)
      define_method relation_name do
        (ary = []) << klass.send(:new)
      end
    end

    def belongs_to(relation_name)
      klass = const_get(relation_name.to_s.camelize)
      define_method relation_name do
        return klass.send(:new)
      end
    end

  end

end

module Maintenancable

  def self.klass; @klass; end

  def self.included(base)
    @klass = base
    base.send(:extend, ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module InstanceMethods

    def maintenance_at(date)
      return MaintenanceDay.new
    end

  end

  module ClassMethods

    def locked_at(options={})
      ary = []
      3.times do
        ary << Maintenancable.klass.send(:new)
      end
      ary
    end

  end


end

class MaintenanceDay

  def period
    [3.days.ago, Time.now.advance(:days=> 4)]
  end

end

class Room
  include Maintenancable

  def identifier
    ""
  end
end

class Device
  include Maintenancable

  def identifier
    ""
  end
end


class ProcessDay

  include Relations

  has_many :rooms
  has_many :devices

end


class AvailableCheck

  include Relations

  belongs_to :process_day

  def initialize(date)
    [:rooms,:devices].each do |type|
      meth = <<-RUBY
        def analyze_#{type.to_s.singularize}_maintenance
          item_klass = process_day.reflect_on_association(type).class_name
          items_with_maintenance = process_day.send(type) + Module::const_get(item_klass).send(:locked_at)
          items_with_maintenance.each do |item|
            m_day = item.maintenance_at(date)
            warning = ""
            add_warning(warning, m_day.period, item.identifier)
          end
        end
        RUBY
      self.class.class_eval meth 
    end
  end

  def add_warning(warn_msg,period,identifier)

  end
end

check = AvailableCheck.new(2.days.ago)
p check.respond_to?(:analyze_room_maintenance)
p check.respond_to?(:analyze_device_maintenance)