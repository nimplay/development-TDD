require_relative '../solver'

describe 'tests for class Solver' do
  before :each do
    @solver = Solver.new
  end

  context 'Factorial Method' do
    it 'Returns the factorial 0' do
      result = @solver.factorial(0)
      expect(result).to eql 1
    end

    it 'should return 40320 when Number 8' do
      result = @solver.factorial(8)
      expect(result).to eql 40320
    end

    it 'should raise an exception when N is a negative integer' do
      result = @solver.factorial(-5)
      expect(result).to match("-5 is not accepted, only numbers greater than 0")
    end
  end
end
