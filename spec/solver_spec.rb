require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }

  context 'Factorial method tests' do
    it 'Should return 1 if the input is 0' do
      factorial0 = solver.factorial(0)
      expect(factorial0).to eq(1)
    end
    it 'Should raise an error if the number is less than 0' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
    it 'Should return the multiplication of all integers from 1 to the input' do
      factorial3 = solver.factorial(3)
      factorial4 = solver.factorial(4)

      expect(factorial3).to eq(6)
      expect(factorial4).to eq(24)
    end
  end

  context 'Reverse method tests' do
    it 'Should raise an error if the argument is not a string' do
      expect { solver.reverse(true) }.to raise_error(TypeError)
      expect { solver.reverse(23) }.to raise_error(TypeError)
    end

    it 'Should return the reversed string' do
      reversed_str = solver.reverse('hello')
      expect(reversed_str).to eq('olleh')
    end
  end

  context 'Fizzbuzz method tests' do
    it 'Should raise an error if the argument is not an integer' do
      expect { solver.fizzbuzz('5') }.to raise_error(TypeError)
      expect { solver.fizzbuzz(false) }.to raise_error(TypeError)
    end

    it "Should return 'fizz' if the integer is divisible by 3" do
      fizzbuzz6 = solver.fizzbuzz(6)
      expect(fizzbuzz6).to eq('fizz')
    end

    it "Should return 'buzz' if the integer is divisible by 5" do
      fizzbuzz10 = solver.fizzbuzz(10)
      expect(fizzbuzz10).to eq('buzz')
    end

    it "Should return 'fizzbuzz' if the integer is divisible by 3 and by 5" do
      fizzbuzz15 = solver.fizzbuzz(15)
      expect(fizzbuzz15).to eq('fizzbuzz')
    end

    it 'Should return a String' do
      fizzbuzz_type = solver.fizzbuzz(7).is_a?(String)
      fizzbuzz7 = solver.fizzbuzz(7)
      expect(fizzbuzz_type).to eq(true)
      expect(fizzbuzz7).to eq('7')
    end
  end
end
