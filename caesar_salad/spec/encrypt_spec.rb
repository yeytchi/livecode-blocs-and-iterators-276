require_relative '../encrypt.rb'

describe '#encrypt' do
  it 'should return empty string when passed an empty string' do
    actual = encrypt('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'should return the correct modified text' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
)
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
