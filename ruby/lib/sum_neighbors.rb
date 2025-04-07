require 'pry'
require 'rspec'

def sum_neighbors(a)
  result = []

  a.each_index do |i|
    prev = (i > 0) ? a[i - 1] : 0
    curr = a[i]
    nxt = (i < a.length - 1) ? a[i + 1] : 0

    sum = prev + curr + nxt
    result << sum
  end
  result
end
# another way to achieve the same result, though it is less readable as each_cons handles a lot of the logic from the previous example 

# def sum_neighbors(a)
#   result = []

#   a = [0] + a + [0]  
  
#   a.each_cons(3) do |prev, curr, nxt|
#     result << prev + curr + nxt
#   end

#   result
# end
