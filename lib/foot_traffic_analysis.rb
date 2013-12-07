class FootTrafficAnalysis

  attr_accessor :log_file

  def initialize(log_file)
    @log_file = log_file   
    @log_entries = 0
  end

  def process_logs
    lines = File.open(log_file).collect(&:chomp)
    @log_entries = lines.shift
    @galary = Galary.new
    @log_entries.to_i.times do |t|
      @galary.add_or_update_log(lines[t])
    end
  end

  def report
    process_logs
    @galary.rooms.each do |room|
      puts "Room #{room.index}, #{room.avarage_visitor_time} minute average visit, #{room.total_visitors} visitor(s) total" 
    end
  end
 
end
