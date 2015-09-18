class Euler
  def initialize(row = 20, col = 20)
    @row = row
    @col = col
  end

  def solve
    puts factorial_reduce(@row+@col)/(factorial_reduce(@row) * factorial_reduce(@col))
  end

  def factorial_reduce(n)
    (2..n).reduce(1, :*)
  end
end

task_15 = Euler.new
task_15.solve
