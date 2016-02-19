def  partition( ar) 
    
    count = ar.length - 1
    p = ar[0]
    left,right = [],[]
    while count > 0
        if ar[count] > p
            right << ar[count]
        else
            left << ar[count]
        end
        count -= 1
    end
    sorted = (left << p) + right
    if left.length < 2
        puts sorted.join(' ')
        return sorted
    end
    
    sorted_left = partition(left)
    
    sorted_right = partition(right)
    
    puts ((sorted_left << p) + sorted_right).join(' ')
   
    
end

ar = '5 8 1 3 7 9 2'
partition ar.split.map(&:to_i)
