require 'rspec'

def remove_duplicates(nums)
  counts = Hash.new(0)
  nums.delete_if { |num| (counts[num] += 1) > 2 }.size
  # nums.delete_if do |num|
  #   counts[num] += 1
  #   true if counts[num] > 2
  # end
  # return nums.size
end

RSpec.describe 'Check remove duplicate' do
  it '[1,2,3] to [1,2,3]' do
    expect(remove_duplicates([1,2,3])).to eq 3
  end

  it '[1,1,2,3] to [1,1,2,3]' do
    expect(remove_duplicates([1,1,2,3])).to eq 4
  end

  it '[1,1,2,2,3] to [1,1,2,2,3]' do
    expect(remove_duplicates([1,1,2,2,3])).to eq 5
  end

  it '[1,1,1,2,2,3] to [1,1,2,2,3]' do
    expect(remove_duplicates([1,1,1,2,2,3])).to eq 5
  end

  it '[1,1,1,2,2,2,3] to [1,1,2,2,3]' do
    expect(remove_duplicates([1,1,1,2,2,2,3])).to eq 5
  end

  it '[1,1,1,2] to [1,1,2,2,3]' do
    expect(remove_duplicates([1,1,1,2])).to eq 3
  end
end