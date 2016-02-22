class  Array 
  def toTwenty
    (1..20).to_a
  end
   
  def toForty
    (2..40).step(2).to_a
  end

  def toOneThousand
    (10..1000).step(10).to_a
  end
   
  def search number
    result = Hash.new(0)
    result[:length] = self.length
    data = self
    lowest_index = 0
    highest_index = data.length - 1
    middle_index = data.length ?  (highest_index) / 2 : lowest_index
    result[:index] = middle_index
    result[:count] = 0
    if number == data[lowest_index]
     result[:index] = lowest_index
     return result
    elsif number == data[highest_index]
      result[:index] = highest_index
      return result
    end

    while true
      if data[middle_index] == nil
        break
      end

      if(data[middle_index] == number)
        result[:index] = middle_index
        break
      else
        if number > data[middle_index]
          if(data[middle_index + 1] == number)
            result[:index] = middle_index + 1
            break
          elsif data[highest_index - 1] == number
            result[:index] = highest_index - 1
            break
          end
          lowest_index = middle_index
          highest_index -= 1
          middle_index = ((highest_index) + middle_index ) / 2
        else
          if(data[middle_index - 1] == number)
            result[:index] = middle_index - 1
            break
          elsif data[lowest_index + 1] == number
            result[:index] = lowest_index + 1
            break
          end
            lowest_index += 1
          middle_index = (lowest_index + middle_index - 1) / 2
        end
      end 

      if highest_index - lowest_index  < 2
        result[:index] = -1
        break
      end

      result[:count] += 1
    end
    return result
  end
end

a = [].toTwenty
p a.search(33)