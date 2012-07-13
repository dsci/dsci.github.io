class Logger 

  attr_reader :log

  def initialize(where_to_log)
    @log = where_to_log
  end

  def append(message)
    @log << "This happens: " << message  
  end

end