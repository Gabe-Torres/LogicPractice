require 'pry'
require 'rspec'

def solution(numbers)
    result = []
    
    (0..numbers.length-3).each do |i|
        a, b,c = numbers[i], numbers[i + 1], numbers[i + 2]
        
        if (a<b&&b>c) || (a>b && b<c)
            result << 1
        else 
            result << 0 
        end
    end 
    
    result
end

