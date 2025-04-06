def candy(ratings)
  counter = 0
  ratings.each_with_index do |num, index|
      if  index != 0 && index != ratings.length - 1 
          next_num = ratings[index + 1]
          previous_num = ratings[index - 1]

          if num >= next_num && num > previous_num
              counter += 2 
          else 
              counter += 1
          end
      elsif index != 0
          previous_num = ratings[index - 1]
          if previous_num < num
              counter += 2
          else
              counter += 1
          end
      elsif index != ratings.length - 1 
          next_num = ratings[index + 1]
          if next_num <= num
              counter += 2
          else 
              counter += 1
          end
      end
  end
  counter
end