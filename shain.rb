# -*- cording: utf-8 -*-
require_relative 'salary'

class Shain
  include Salary

  def initialize(baseSalary)
    @base = baseSalary
  end

  def standup
    puts "起立"
  end

  # def calculate_salary(base)
  #   base
  # end
end