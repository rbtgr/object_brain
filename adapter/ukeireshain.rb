require_relative './hakenshain'

class Ukeireshain < Hakenshain
  def standup
    kiritsu
  end
end

shain = Ukeireshain.new
shain.standup
