module Application

  class RitterConfig

    def self.setup 
      yield(self)
    end

    mattr_accessor :post_length
    @@post_length = 140

  end

end