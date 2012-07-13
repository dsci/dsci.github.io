class OAuthConfig < Hash

  original_method_missing = instance_method(:method_missing)

  define_method :method_missing do |meth_name, *args, &block|
    wanted_key = meth_name
    return self[wanted_key] if self.has_key?(wanted_key)

    original_method_missing.bind(self).call(meth_name, *args, &block)
  end

end