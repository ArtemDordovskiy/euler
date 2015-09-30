require 'date'

class Euler
  def initialize(number=100)
    @number = number
  end

  def solve
    puts ((1..@number).inject(:*) || 1).to_s.chars.map(&:to_i).inject(:+)
  end
end

task_20 = Euler.new
task_20.solve
