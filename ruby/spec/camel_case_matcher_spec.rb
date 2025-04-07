require_relative '../lib/camel_case_matcher'

RSpec.describe '#camel_case_match?' do
  it 'returns true for valid camelCase match' do
    words = ["best", "time", "ever"]
    camel = "bestTimeEver"
    expect(camel_case_match?(camel, words)).to eq(true)
  end

  it 'returns false if camel case word has extra characters' do
    words = ["best", "time"]
    camel = "bestTimeForever"
    expect(camel_case_match?(camel, words)).to eq(false)
  end

  it 'returns false if word is not in the list' do
    words = ["cool", "fun"]
    camel = "coolTimeFun"
    expect(camel_case_match?(camel, words)).to eq(false)
  end

  it 'returns true for single word' do
    words = ["hello"]
    camel = "hello"
    expect(camel_case_match?(camel, words)).to eq(true)
  end
end