require_relative 'yakusyoku'

class Shain
  attr_accessor :yakusyoku
  def initialize
    @yakusyoku = Yakusyoku.new
  end

  def calculate_salary(base)
    @yakusyoku.calculate_salary(base)
  end

  def up
    @yakusyoku = yakusyoku.up
  end

  def down
    @yakusyoku = yakusyoku.down
  end
end