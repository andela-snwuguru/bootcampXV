def min_max args
    return 'Kindly provide an Array' if !(args.is_a? Array)
    min,max = args.min,args.max
    return min == max ? [max] : [min,max] 
end

puts 'Enter numbers seperated with commas'
args = gets.chomp.split(',').map(&:to_i)
p args
p min_max args