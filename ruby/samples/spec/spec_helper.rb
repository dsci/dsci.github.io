require "rubygems"
require "rspec"

unspecable = %w{prototyping}

Dir[File.expand_path(File.join(File.dirname(__FILE__), '..', 'sections', '**'))].each do |f|
  unless unspecable.include?(f.split("/").last)
    Dir[File.expand_path(File.join(f, '**', '*.rb'))].each do |file|
      require file
    end
  end
end

def logger_file
  File.expand_path(File.join(File.dirname(__FILE__), 'fixtures', 'logger.txt'))
end

def open_file(file_path)
  if block_given?
    File.open(file_path, "r+") do |file|
      yield file
    end
  else
    File.open(file_path, "r+")
  end
end