class Euler
  def initialize
    @numbers = [3, 3, 5, 4, 4, 3, 5, 5, 4]
    @numbers_10 = [3, 6, 6, 8, 8, 7, 7, 9, 8, 8]
    @numbers_20 = [6, 6, 5, 5, 5, 7, 6, 6]
    @numbers_100 = 7
    @numbers_1000 = 8
  end

  def solve
    sum = 0
    1.upto(1000) do |num|
      if num%1000 == 0
        sum += 11
      elsif num/100 > 0
        sum += (@numbers_100 + @numbers[num/100 - 1])
        num_new = num % 100
        if num_new > 0
          sum +=3
          sum += if num_new > 19
                   if num_new%10 == 0 && num_new/10 > 1
                     @numbers_20[num_new/10-2]
                   else
                     (@numbers_20[num_new/10-2] + @numbers[num_new % 10 - 1])
                   end
                 else
                   num_new > 9 ? @numbers_10[num_new - 10] : @numbers[num_new - 1]
                 end
        end
      elsif num%10 == 0 && num/10 > 1
        sum += @numbers_20[num/10-2]
      elsif num/10 > 1
        sum += @numbers_20[num/10-2] + @numbers[num % 10 - 1]
      elsif num/10 == 1
        sum += @numbers_10[num - 10]
      else
        sum += @numbers[num - 1]
      end
    end

    puts sum
  end

end

task_17 = Euler.new
task_17.solve
