require 'pry'
require 'rspec'

def camel_case_match?(camel, words)
  camel_split = camel.split(/(?=[A-Z])/).map(&:downcase)
  
  camel_split.all? { |word| words.include?(word) }
end
