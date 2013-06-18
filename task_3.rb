class Euler
  def initialize(n=600851475143)
    @n = n
    @max = 0
  end

  def solve
    div(@n)
    @max
  end

  private
  def div(num)
    i = 2
    while num%i!=0 do
      i+=1
    end
    ((num/i) > 1)? div(num/i) : @max = i
  end
end

task_3 = Euler.new
p task_3.solve
