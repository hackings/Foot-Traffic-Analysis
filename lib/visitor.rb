class Visitor
  attr_accessor :index, :in_time, :out_time

  def initialize(index)
    @index = index
    @in_time = 0
    @out_time = 0 
  end

  def time_spent 
    out_time - in_time 
  end

end
