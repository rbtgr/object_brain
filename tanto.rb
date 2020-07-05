# -*- cording: utf-8 -*-
require_relative './shain.rb'

class Tanto < Shain
  def standup
    puts '担当は慌てて起立しました'
  end

  def calculate_salary(base)
    base
  end
end