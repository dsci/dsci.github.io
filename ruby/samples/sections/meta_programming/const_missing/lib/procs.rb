class Procs

  def ps(*arguments)
    cmd = "ps #{arguments.join}"
    output = IO.popen(cmd)
    output.readlines.each{|line| puts line}
  end 

end