require_relative './shain'

shain = Shain.new
shain.yakusyoku = Tanto.new
puts "担当の給料は#{shain.calculate_salary(100)}です"

shain.up
puts "昇進して主任になると#{shain.calculate_salary(100)}です"

shain.down
puts "降格すると#{shain.calculate_salary(100)}です"
