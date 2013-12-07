Dir['./lib/**/*.rb'].each{|file| require file }

puts '---------------Sample test 1--------------------'
sample_1_analysis = FootTrafficAnalysis.new('sample_1.txt')
sample_1_analysis.report

puts '---------------Sample test 2--------------------'
sample_2_analysis = FootTrafficAnalysis.new('sample_2.txt')
sample_2_analysis.report
