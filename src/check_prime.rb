
puts "Kindly input a prime number:";
user_input = gets.chomp
int_val = user_input.to_i
if(int_val > 1)
	divisor = (int_val / 2).round
	is_prime = int_val > 1 ? true : false;
	while divisor >= 2
	    if int_val % divisor == 0
	        is_prime = false
	        puts "#{user_input} is divisible by #{divisor}"
	        break;
	    end
	    divisor -= 1
	end
	puts is_prime  ? "#{user_input} is a prime number" : "#{user_input} is not a prime number"
else
puts "#{user_input} is not a prime number"
end