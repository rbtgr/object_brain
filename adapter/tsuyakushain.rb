require_relative './shain'
require_relative './hakenshain'

class Tuyakushain < Shain
  def standup
    haken = Hakenshain.new
    haken.kiritsu
  end
end

shain = Tuyakushain.new
shain.standup
