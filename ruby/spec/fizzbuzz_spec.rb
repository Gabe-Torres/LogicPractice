require_relative '../lib/fizzbuzz'
require 'rspec'

RSpec.describe 'FizzBuzz' do
  it 'returns the correct sequence for N = 15' do
    expected_output = [
      "1", "2", "Fizz", "4", "Buzz",
      "Fizz", "7", "8", "Fizz", "Buzz",
      "11", "Fizz", "13", "14", "FizzBuzz"
    ]
    expect(fizzbuzz(15)).to eq(expected_output)
  end

  it 'returns an empty array for N = 0' do
    expect(fizzbuzz(0)).to eq([])
  end

  it 'returns correct output for small numbers' do
    expect(fizzbuzz(3)).to eq(["1", "2", "Fizz"])
    expect(fizzbuzz(5)).to eq(["1", "2", "Fizz", "4", "Buzz"])
  end

  it 'returns correct output for N = 10' do
    expect(fizzbuzz(10)).to eq(["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz"])
  end
end
