def prime? number
   return number >= 2 unless number > 3
   
   return false if number % 2 == 0 ||  number % 3 == 0 ||  number % 5 == 0
   
   return false if (number ** 0.5).is_a? Integer
   
   list_of_divisor = (7..(number ** 0.5).floor)
   
   list_of_divisor.step(4).each{|value|
       return false if number % value == 0 || number % (value + 2) == 0
   }
   return true
   
end

puts "Kindly input a prime number:";
user_input = gets.chomp.to_i
is_prime = prime? user_input
puts  is_prime ? "#{user_input} is a prime number" : "#{user_input} is not a prime number"