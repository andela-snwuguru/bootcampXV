require 'prime'
puts "Kindly input a prime number:";
user_input = gets.chomp
int_val = Prime.prime? user_input.to_i
puts  int_val ? "#{user_input} is a prime number" : "#{user_input} is not a prime number"