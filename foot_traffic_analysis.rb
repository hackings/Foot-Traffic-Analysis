Dir['./lib/**/*.rb'].each{|file| require file }

sample_1_analysis = FootTrafficAnalysis.new('sample_1.txt')
sample_1_analysis.report

sample_2_analysis = FootTrafficAnalysis.new('sample_2.txt')
sample_2_analysis.report
