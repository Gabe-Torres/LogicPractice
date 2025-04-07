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
