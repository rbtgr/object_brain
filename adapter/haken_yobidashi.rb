require_relative './hakenshain'

class Hakenshain
  alias standup kiritsu
end

haken = Hakenshain.new
haken.standup
