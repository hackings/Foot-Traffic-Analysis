class Galary

  attr_accessor :rooms

  def initialize
    @rooms = []
  end


  def add_or_update_log(data)
    visitor_id, room_index, visitor_activity, timestemp = data.split
    room = find_or_add_room(room_index)
    room.add_or_update_visitor(visitor_id, visitor_activity, timestemp)
  end

  def find_or_add_room(index)
    room = rooms.find{|room| room.index == index } 
    unless room
     room = Room.new(index)
     rooms << room
    end  
    room
  end

end
