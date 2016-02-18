
def aritGeo arg
   return 0 if(arg.length === 0)
    is_arit = false
    is_geo = false
    diff = arg[1] - arg[0]
    ratio = arg[1].to_f/arg[0]
    i = 1
    
    while i < arg.length
        number = i + 1
        is_arit = arit?(arg[0],number,diff,arg[i]) ? true : false
        is_geo = geo?(arg[0],number,ratio,arg[i]) ? true : false 
        i += 1
    end
    
    return 'Arithmetic' if(is_arit)

    return 'Geometric' if(is_geo)

    return -1; 
end

def arit? first,number,diff,expected_value
    result = first + (number - 1) * diff;
    return result == expected_value;
end


def geo? first,number,ratio,expected_value
    result = first * (ratio**(number - 1))
    return result == expected_value;
end