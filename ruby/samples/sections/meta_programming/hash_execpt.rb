class Hash

  def except!(*keys)
    keys.each{|key| self.delete(key)}
    self
  end

end

hsh = {:a => 12, :c => 4356, :d => 12900, :b => 120}

hsh.except!(:a,:d,:b)

p hsh.has_key?(:a)
p hsh.has_key?(:c)