# -*- cording: utf-8 -*-
require_relative './shain.rb'
class Bucho < Shain
  def standup
    puts '部長が面倒そうに立ち上がりました'
  end

  # def calculate_salary(base)
  #   base * 3
  # end

  def base
    @base * 3
  end
end