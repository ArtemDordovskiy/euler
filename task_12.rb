require 'prime'

class Euler
  def initialize
  end

  def solve
    i = false
    n = 1
    j = 1
    count = 1
    while i == false do
      Prime.prime_division(j).each{ |x| count*=x[1]+1 }

      if count > 500
        i = true
      else
        count = 1
        n += 1
        j = n*(n+1)/2
      end
    end
    j
  end
end

task_12 = Euler.new
p task_12.solve
