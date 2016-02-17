def fizzBuzz number
	#tenary operation
    #return number % 3 == 0 && number % 5 == 0 ? 'FizzBuzz' : number % 3 == 0 ? 'Fizz': number % 5 == 0 ? 'Buzz' : number
    return 'FizzBuzz' if number % 15 == 0
    return 'Fizz' if number % 3 == 0
    return 'Buzz' if number % 5 == 0
    number
end

#puts 'Choose a number:';
#number = gets.chomp.to_i

test_cases = [3,5,15,90,7]

test_cases.each{|number|
puts fizzBuzz number 
}
