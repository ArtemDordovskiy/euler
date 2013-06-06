class Euler
  def initialize(n=100)
    @n = n
  end

  def solve
    square_of_the_sum - sum_of_square
  end

  private
  def sum_of_square
    (1..@n).inject(0){|result, i| result + i**2}
  end

  def square_of_the_sum
    sum = (1..@n).inject(0){|result, i| result + i}
    sum**2
  end
end

task_6 = Euler.new
p task_6.solve
