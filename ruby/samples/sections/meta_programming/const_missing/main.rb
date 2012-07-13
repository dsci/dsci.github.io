class System

  def self.const_missing(name)
    require "./lib/#{name.to_s.downcase}.rb"
    eval "::#{name}"
  rescue 
    super
  end 

  def call(process, cmd, arguments)
    klass = self.class.const_get(process.to_s.capitalize.to_sym)  
    klass.new.send(cmd, arguments[:arguments])
  end

end

f = System.new

f.call(:fs, :ls, :arguments => ['la'])
f.call(:procs, :ps, :arguments => ['aux'])
