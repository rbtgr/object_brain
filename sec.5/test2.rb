require 'test/unit'
class TestExpense < Test::Unit::TestClass
  def test_deptName
    dept = DepartureStation.new("Shinagawa")
    assert_equal("Shinagawa", dept.name)
  end

  def test_destName
    dest = DestinationStation.new("Shinjuku")
    assert_equal("Shinjuku", dest.name)
  end

end

class DepartureStation
  attr_reader :name
  def initialize (name)
    @name = name
  end
end

class DestinationStation
  attr_reader :name
  def initialize (name)
    @name = name
  end
end

