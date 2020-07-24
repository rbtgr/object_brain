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
end

class Tanto < Shain
  def standup
    puts '担当は慌てて起立しました'
  end
end

class Shunin < Shain
  def standup
    '主任が素早くたち上がりました'
  end

  def base
    @base * 2
  end

  def addition
    1
  end
end

class Bucho < Shain
  def standup
    '部長がだるそうに立ち上がりました'
  end

  def base
    @base * 3
  end
end

class Torishimariyaku < Shain
  def standup
    '踏ん反り返って立ち上がりました'
  end

  def base
    @base * 4
  end

  def addition
    2
  end

end

