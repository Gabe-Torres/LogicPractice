require_relative '../lib/zigzag_triple'
require 'rspec'

RSpec.describe 'zigzag_triple' do
  it 'returns correct zigzag pattern for test cases' do
    expect(solution([1, 2, 1, 3, 4])).to eq([1, 1, 0])
    expect(solution([1, 2, 3, 4])).to eq([0, 0])
    expect(solution([1000000000, 1000000000, 1000000000])).to eq([0])
    expect(solution([1, 2, 4, 3, 1])).to eq([0, 1, 0])
    expect(solution([3, 5, 2, 6, 10])).to eq([1, 1, 0])
    expect(solution([1, 3, 4, 5, 6, 14, 14])).to eq([0, 0, 0, 0, 0])
    expect(solution([1, 5, 7, 3, 10, 2, 4, 9, 8, 6])).to eq([0, 1, 1, 1, 1, 0, 1, 0])
    expect(solution([11, 14, 3, 17, 16, 13, 3, 7, 19, 8])).to eq([1, 1, 1, 0, 0, 1, 0, 1])
  end
end