# -*- cording: utf-8 -*-
require_relative './shain.rb'
class Shunin < Shain
  def standup
    puts '主任が素早く立ち上がりました'
  end

  def calculate_salary(base)
    base * 2 + 1
  end
end