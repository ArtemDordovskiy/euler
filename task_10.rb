require 'bigdecimal'
require 'prime'

class Euler
  def initialize(n=2000000)
    @n = n
  end

  def solve
    sum = BigDecimal.new("0")
    Prime.each(@n){|x| sum = sum+x }
    sum.to_i
  end
end

task_10 = Euler.new
p task_10.solve
