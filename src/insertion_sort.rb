def  insertionSort( ar) 
    count = ar.length - 1
    sorted = ar
    while count >= 0
        num = ar[count]
        i = count - 1
        is_lesser = false
        while i >= 0
            if num < ar[i]
                if(i == 0)
                    sorted[i + 1] = ar[i]
                    sorted[i] = num
                else
                    sorted[i + 1] = ar[i]
                end
                is_lesser = true
            else
                if is_lesser
                    sorted[i + 1] = num
                    is_lesser = false
                end
                break
            end
            i -= 1
        end
        puts sorted.join(' ')
        count -= 1
    end
end



def  insertionSortTwo( ar) 
    count = ar.length - 1
    sorted = ar
    j = 0
    while j <= count
        num = ar[j]
        i = j - 1
        while i >= 0
            if num < ar[i]
                sorted.insert(i,num) 
                sorted.delete_at(i + 2)
            end
            i -= 1
        end
        puts sorted.join(' ')
        j += 1
    end
    
end