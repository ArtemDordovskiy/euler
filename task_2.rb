class Euler
  def initialize(n=4000000)
    @n = n
    @fibs_array = []
  end

  def solve
    (1...@n).each do |i|
      fibs = fib(i)
      if fibs<@n
        @fibs_array.push(fibs)
      else
        break
      end
    end
    sum = @fibs_array.inject(0){|result, i| i.even?? result+i : result}
  end

  private
  def fib(n, a=0, b=1)
    if n==0
      a
    else
      fib(n-1, b, a+b)
    end
  end
end

task_2 = Euler.new
p task_2.solve
