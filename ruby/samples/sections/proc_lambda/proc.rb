 

def procable_and_returns(passed_colors)
  puts "Before the block is called."
  colors = [:red,:green]
  passed_colors.each{|color| colors << color}
  block =  Proc.new do |colors|
    return colors[rand(colors.size)]
  end

  result = block.call(colors)
  puts "We never see #{result} sheeps."
end

colors = [:blue, :white, :black]

procable_and_returns colors
#=> "Before the block is called."