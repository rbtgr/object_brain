# -*- cording: utf-8 -*-
require_relative 'shain_factory'
shain_factory = ShainFactory.new

['Tanto','Shunin','Bucho','Torishimariyaku'].each do |roll|
  shain = shain_factory.create(roll,100)
  puts shain.standup
  puts "私の給料は#{shain.calculate_salary}円です"
end

