require_relative "../encrypt"

# DECIDE ON THE METHOD SIGNATURE:
# method name -> encrypt
# does it take parameters -> takes 1 param (string)
# data type of the result -> string

# puts encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG") == "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

describe '#encrypt' do
  it 'returns an empty string when given an empty string' do
    expected_output = ''
    actual_output = encrypt('')

    expect(actual_output).to eq(expected_output)
  end

  it 'encrypts all caps sentense' do
    expected_output = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    actual_output = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")

    expect(actual_output).to eq(expected_output)
  end
end
