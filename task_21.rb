class Euler
  def initialize(number=10000)
    @number = number
  end

  def solve
    mass = []
    @number.downto(2) do |num|
      mass_num = [1]
      (num/2).downto(2) do |num_2|
        if num % num_2 == 0
          mass_num << num_2
        end
      end
      sum = mass_num.inject(:+)
      if sum < @number
        mass_num = [1]
        (sum/2).downto(2) do |num_2|
          if sum % num_2 == 0
            mass_num << num_2
          end
        end
        mass << sum if num == mass_num.inject(:+) && num != sum
      end
    end
    puts mass.inject(:+)
  end
end

task_21 = Euler.new
task_21.solve
