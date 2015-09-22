require 'rspec'

def remove_duplicates(nums)
  counts = Hash.new(0)
  new_array = []
  nums.each do |num|
    counts[num] += 1
    new_array << num if counts[num] < 3
  end
  return new_array
end

RSpec.describe 'Check remove duplicate' do
  it '[1,2,3] to [1,2,3]' do
    expect(remove_duplicates([1,2,3])).to eq [1,2,3]
  end

  it '[1,1,2,3] to [1,1,2,3]' do
    expect(remove_duplicates([1,1,2,3])).to eq [1,1,2,3]
  end

  it '[1,1,2,2,3] to [1,1,2,2,3]' do
    expect(remove_duplicates([1,1,2,2,3])).to eq [1,1,2,2,3]
  end

  it '[1,1,1,2,2,3] to [1,1,2,2,3]' do
    expect(remove_duplicates([1,1,1,2,2,3])).to eq [1,1,2,2,3]
  end

  it '[1,1,1,2,2,2,3] to [1,1,2,2,3]' do
    expect(remove_duplicates([1,1,1,2,2,2,3])).to eq [1,1,2,2,3]
  end
end