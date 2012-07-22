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

def with_return_and_new
  prc = Proc.new { return 'This is printed' }
  prc.call
  'Never seen'
end