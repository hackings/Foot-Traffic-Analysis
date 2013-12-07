class FootTrafficAnalysis

  attr_accessor :log_file

  def initialize(log_file)
    @log_file = log_file   
    @log_entries = 0
  end

  def process_logs

  end

  def report
    process_logs


  end
 
end
