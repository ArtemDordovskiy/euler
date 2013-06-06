require 'date'

class Euler
  def initialize(date_start, date_end)
    @date_start = date_start
    @date_end = date_end
  end

  def solve
    (@date_start..@date_end).count{ |date| date.wday == 0 && date.mday == 1 }
  end
end

date_start = Date.new(1901,1,1)
date_end = Date.new(2000,12,31)
task_19 = Euler.new(date_start, date_end)
p task_19.solve
