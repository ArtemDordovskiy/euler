class Euler
  def initialize(n=999, m=100)
    @n = n
    @m = m
  end

  def solve
    palindrome(@n, @m)
  end

  def solve_2
   cc = 0
    999.downto(332) do |i|
      c = (i.to_s+i.to_s.reverse).to_i
      999.downto(c/999) do |x|
        cc+=1
        if (c%x==0 && (c/x).to_s.length==3 && x.to_s.length==3)
          return c
        end
      end
    end
  end

  private
  def palindrome(n,m)
    p_new = 0
    p_old = 0
    while n >= m do
      x = n
      while x >= m do
        if check((n*x).to_s)
          p_new = n*x
          if p_new > p_old
            p_old = p_new
            x = x -1
          else
            break
          end
        else
          x = x-1
        end
      end
      (p_old > (n-1)**2)? break : n = n-1
    end
    p_old
  end

  def check(number)
    number == number.reverse
  end
end

task_4 = Euler.new
p task_4.solve
p task_4.solve_2
