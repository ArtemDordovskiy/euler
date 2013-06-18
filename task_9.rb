class Euler
  def initialize(n=1000)
    @n = n
  end

  def solve
    mult = (1..@n).select{ |i| (1..@n).select{ |j| 1000-i-j > 0 && (i**2+j**2) == (1000-i-j)**2 }.size == 1 }
    mult[0]*mult[1]*(@n-mult[0]-mult[1])
  end
end

task_9 = Euler.new
p task_9.solve
