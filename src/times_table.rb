puts "Kindly input a prime number:";
user_input = gets.chomp

if(user_input.to_i.is_a? Integer)
    i = 1;
    while i < 13
        result = user_input.to_i * i
        puts "#{user_input} X #{i} = #{result}"
        i += 1;
    end
else
    puts "Looks like you have entered a string"
end
