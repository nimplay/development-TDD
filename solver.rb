class Solver
  def factorial(number)
    return "#{number} is not accepted, only numbers greater than 0" if number.negative?

    case number
    when 0
      1
    else
      number * factorial(number - 1)
    end
  end

  def reverse(word)
    puts word.reverse
  end

  def fizzbuzz(number)
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
