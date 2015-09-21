class Euler
  def initialize(power=1000, number=2)
    @power = power
    @number = number
  end

  def solve
    puts (@number**@power).to_s.split('').map(&:to_i).reduce(0, :+)
  end

end

task_16 = Euler.new
task_16.solve
