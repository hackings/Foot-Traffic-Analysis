class Visitor
  attr_accessor :index

  def initialize(index)
    @index = index
    @in_time = 0
    @out_time = 0 
  end

  def time_spent 
    @out_time - @in_time 
  end

  def set_timings(activity, timestemp)
    if activity == 'I'
      @in_time = timestemp.to_i
    else  
      @out_time = timestemp.to_i
    end
  end

end
