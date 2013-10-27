require 'array'

describe Array do 

  it 'is able to take a block on' do
    a = [1,2,3,4]
    expect(a.inject_new {|sum, element| sum + element}).to eq 10
  end

  it 'is able to use multiples in a block' do 
    a = [1,2,3]
    expect(a.inject_new(0) {|sum, element| sum + (2*element)}).to eq 12
  end

  it 'is able to use an assigned parameter as its summing starting point' do
    a = [1,2,3]
    expect(a.inject_new(10) {|sum, element| sum + element}).to eq 16
  end

  it 'must be able to multiply numbers, whereby the numbers that are stored are multiplied with the number' do 
    a = [5,6,7,8,9,10]
    expect(a.inject_new {|product, number| product * number}).to eq 151200
  end

  it 'must find the longest word' do 
    array_of_strings = %w{ cat sheep bear }
    expect(array_of_strings.inject { |memo, word| memo.length > word.length ? memo : word}).to eq "sheep"
  end

end


