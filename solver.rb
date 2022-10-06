class Solver
  def factorial(number)
    raise ArgumentError if number.negative?

    case number
    when 0
      1
    else
      number * factorial(number - 1)
    end
  end

  def reverse(word)
    raise TypeError unless word.is_a? String

    word.reverse
  end

  def fizzbuzz(number)
    raise TypeError unless number.is_a? Integer

    num = number.to_i
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num
    end
  end
end

puts Solver.new.factorial(8)
puts Solver.new.reverse('hello')
puts Solver.new.fizzbuzz(15)
