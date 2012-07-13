class Logger2 

  attr_reader :log

  def initialize(where_to_log)
    @log = where_to_log
  end

  def append(message)
    raise TypeError.new("logger needs <<.") unless @log.respond_to?(:<<)
    @log << "This happens: " << message
  end

end