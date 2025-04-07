# spec/sum_neighbors_spec.rb
require_relative '../lib/sum_neighbors'

RSpec.describe '#sum_neighbors' do
  it 'calculates the sum of neighbors with edge handling' do
    expect(sum_neighbors([1, 2, 3, 4, 5])).to eq([3, 6, 9, 12, 9])
  end

  it 'works with single element' do
    expect(sum_neighbors([10])).to eq([10])
  end

  it 'works with two elements' do
    expect(sum_neighbors([1, 2])).to eq([3, 3])
  end

  it 'works with all zeros' do
    expect(sum_neighbors([0, 0, 0])).to eq([0, 0, 0])
  end

  it 'handles negative numbers' do
    expect(sum_neighbors([-1, 2, -3, 4])).to eq([1, -2, 3, 1])
  end
end
