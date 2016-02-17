def min_max args
    max = args[0]
    min = args[0]
    for number in args
        max = number if number > max
        min = number if number < min
    end
    return min == max ? [max] : [min,max] 
end

=begin
#uncomment this line to run test cases
test_cases = [[1, 2, 3, 4],[6, 4],[4, 66, 6, 44, 7, 78, 8, 68, 2],[5, 5, 5, 5]]

test_cases.each{|args|
	p min_max args
}
#test case end
=end

puts 'Enter numbers seperated with commas'
args = gets.chomp.split(',').map(&:to_i)
p min_max args