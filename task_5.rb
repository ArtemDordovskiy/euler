class Euler
  def initialize(n=20)
    @n = n
  end

  def solve
    lcm(@n)
  end

  private
  def lcm(n,m=1)
    l = n.lcm(m)
    (n>1)? lcm(n-1, l) : l
  end
end

task_5 = Euler.new
p task_5.solve
