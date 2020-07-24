require_relative 'shain'

class ShainFactory
  def create(type, baseSalary)

    # メタプログラミングを使わない版
    # shain = nil
    # if type == 'Tanto'
    #   shain = Tanto.new(baseSalary)
    # elsif type == 'Shunin'
    #   shain = Shunin.new(baseSalary)
    # elsif type == 'Bucho'
    #   shain = Bucho.new(baseSalary)
    # elsif type == 'Torishimariyaku'
    #   shain = Torishimariyaku.new(baseSalary)
    # end
    # shain


    # メタプログラミング版
    eval "#{type}.new(baseSalary)"

  end
end