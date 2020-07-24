# -*- cording: utf-8 -*-

# require_relative 'shain'
# require_relative 'tanto'
# require_relative 'shunin'
# require_relative 'bucho'

require_relative 'shain_factory'

shain_factory = ShainFactory.new

#shain = Tanto.new

shain = shain_factory.create('Tanto',100)
puts shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です"

shain = shain_factory.create('Shunin',100)
puts shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です"

shain = shain_factory.create('Bucho',100)
puts shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です"

shain = shain_factory.create('Torishimariyaku',100)
puts shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です"

