class Room

  attr_accessor :visitors, :index

  def initialize(index)
    @index = index
    @visitors = []
  end

  def add_or_update_visitor(visitor_id, activity, timestemp)
    visitor = visitors.find{|visitor| visitor.index == visitor_id } 
    if visitor 
      visitor.set_timings(activity, timestemp)
    else  
      visitor = Visitor.new(visitor_id)
      visitor.set_timings(activity, timestemp)
      visitors << visitor
    end  
  end


  def total_visitors
    visitors.count
  end

  def total_visitors_time
    total_visitors_time = visitors.inject(0){|sum,visitor| sum + visitor.time_spent }
  end

  def avarage_visitor_time
    avarage_visitor_time = total_visitors_time/total_visitors
  end

end
