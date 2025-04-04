require 'pry'
require 'rspec'

def solution(numbers)
    result = []
    
    numbers.each_cons(3) do |triple|
        first_num = triple[0]
        second_num = triple[1]
        third_num = triple[2]

        if (first_num < second_num && second_num > third_num) || (first_num > second_num && second_num < third_num) 
            result.push(1)
        else 
            result.push(0)
        end
    end
    result
end


