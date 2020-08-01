require 'test/unit'

class TestExpense < Test::Unit::TestCase
  def test_deptName
    dept = DepartureStation.new("Shinagawa")
    assert_equal("Shinagawa", dept.name)
  end
end

class DepartureStation
  attr_reader :name
  def initialize (name)
    @name = name
  end
end
