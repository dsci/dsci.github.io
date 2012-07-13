class Fs

  def ls(*arguments)
    cmd = "ls -#{arguments.join}"
    output = IO.popen(cmd)
    output.readlines.each{|line| puts line}
  end

end