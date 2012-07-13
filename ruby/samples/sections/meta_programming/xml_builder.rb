class XMLBuilder

  def method_missing(name, *args, &block)
    @indent ||= 0
    build_node("<#{name}>")
    @indent += 2
    build_node(args.join) unless args.empty?
    yield(self) if block_given?
    @indent -= 2
    build_node("</#{name}>")
  end

  private

  def build_node(string)
    puts " " * @indent + string
  end

end

xml = XMLBuilder.new

xml.person do |person|

  person.name "Dave"
  person.address do |address|
    address.street "123 Main"
    address.city "Pleasantville"
  end

  person.cv do |cv|

    cv.job do |job|
      job.employer "Ruby Inc." 
    end

  end

end

