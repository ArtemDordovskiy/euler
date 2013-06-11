class Euler
  def initialize(n=999)
    @n = n
  end

  def solve
    palindrome(@n)
  end

  private
  def palindrome(n)
    array_of_palindromes = []
    (100..n).each do |i|
      (100..n).each do |j|
        array_of_palindromes.push(i*j) if check((i*j).to_s)
      end
    end
    array_of_palindromes.max
  end

  def check(number)
    number[0..2] == number[3..5].reverse
  end
end

task_4 = Euler.new
p task_4.solve
