module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Squares

  def initialize(number)
    @numbers = []
    count = 1
    number.times do
      @numbers << count
      count += 1
    end
  end

  def sum_of_squares
    squares = []
    @numbers.each do |number|
      squares << number**2
    end
    sum = 0
    squares.each do |square|
      sum += square
    end
    return sum
  end

  def square_of_sum
    sum = 0
    @numbers.each do |number|
      sum += number
    end
    square = sum**2
  end

  def difference
    square_of_sum - sum_of_squares
  end

end