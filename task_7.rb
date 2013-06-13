class Euler
  def initialize(n=10001)
    @n = n
    @array_of_prime_number = [2]
  end

  def solve
    i = 1
    j = 1
    while j <= @n-1 do
      i+=1
      if @array_of_prime_number.select{|e| i%e==0}.size==0
        @array_of_prime_number.push(i)
        j+=1
      end
    end
    @array_of_prime_number.last
  end
end

task_7 = Euler.new
p task_7.solve
