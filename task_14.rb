class Euler
  def initialize
    @n = 999999
    @starting_number, @longest_chain = 1, 0
  end

  def solve
    1.upto(@n) do |n|
      length = collatz_length(n)
      @starting_number, @longest_chain = n, length if length > @longest_chain
    end
    puts "#{@starting_number}: #{@longest_chain}"
  end

  def collatz_length(number)
    return number if number <= 1

    length = 1
    while (number != 1)
      if (number % 2 == 0)
        number /= 2
      else
        number = 3*number + 1
      end
      length += 1
    end

    length
  end
end

task_14 = Euler.new
task_14.solve
