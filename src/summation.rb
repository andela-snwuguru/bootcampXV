puts 'numbers space-separated:'
list = gets.chomp.split
sum = 0
list.each{|item| sum += item.to_i }
puts "Summation: #{sum}"