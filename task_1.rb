class Euler
  def initialize(n=1000, a=3, b=5)
    @n = n
    @a = 3
    @b = 5
  end

  def solve
    (@a...@n).inject(0){|sum, num| (num % @a == 0) || (num % @b == 0) ? sum+num : sum}
  end
end

task_1 = Euler.new
p task_1.solve
