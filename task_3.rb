class Euler
  def initialize(n=600851475143)
    @n = n
    @array_of_div = []
  end

  def solve
    div(@n)
    @array_of_div.max
  end

  private
  def div(num)
    (2..num).each do |i|
      if num%i==0
        @array_of_div.push(i)
        div(num/i)
        break
      end
    end
  end
end

task_3 = Euler.new
p task_3.solve
