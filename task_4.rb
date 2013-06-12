class Euler
  def initialize(n=999)
    @n = n
  end

  def solve
    palindrome(@n)
  end

  private
  def palindrome(n)
    p_new = 0
    p_old = 0
    while n >= 100 do
      m = n
      while m >= 100 do
        if check((n*m).to_s)
          p_new = n*m
          if p_new > p_old
            p_old = p_new
            m = m -1
          else
            break
          end
        else
          m = m-1
        end
      end
      (p_old > (n-1)**2)? break : n = n-1
    end
    p_old
  end

  def check(number)
    number[0..2] == number[3..5].reverse
  end
end

task_4 = Euler.new
p task_4.solve
