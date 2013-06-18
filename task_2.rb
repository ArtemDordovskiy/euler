class Euler
  def initialize(n=4000000)
    @n = n
    @fibs = [1]
  end

  def solve
    fib = 1
    while fib < @n do
      @fibs << fib
      fib = fib + @fibs[-2]
    end
    sum = @fibs.inject(0){|result, i| i.even?? result+i : result}
  end
end

task_2 = Euler.new
p task_2.solve
