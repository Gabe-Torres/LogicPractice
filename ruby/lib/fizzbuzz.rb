require 'pry'
require 'rspec'

def fizzbuzz(n)
  (1..n).map do |i|
    if i % 3 == 0 && i % 5 == 0
      "FizzBuzz"
    elsif i % 3 == 0 
      "Fizz"
    elsif i % 5 == 0 
      "Buzz"
    else
      i.to_s
    end
  end
end



