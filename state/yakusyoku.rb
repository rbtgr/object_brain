class Yakusyoku
  def calculate_salary(base)
    base
  end

  def up
  end

  def down
  end
end


class Tanto < Yakusyoku
  def up
    Shunin.new
  end
end


class Shunin < Yakusyoku
  def calculate_salary(base)
    base * 2 + 1
  end

  def down
    Tanto.new
  end
end