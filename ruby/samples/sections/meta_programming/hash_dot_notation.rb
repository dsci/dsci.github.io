class DatabaseConfig < Hash

  def method_missing(meth_name, *args, &block)
    if meth_name.to_s.match(/=$/)
      # getter, but works also for "hello==="
      self[meth_name.to_s.split("=").first.to_sym] = args.pop
    else
      wanted_key = meth_name.to_sym
      if self.has_key?(wanted_key)
        return self[wanted_key]
      else
        super
      end
    end
  end

end