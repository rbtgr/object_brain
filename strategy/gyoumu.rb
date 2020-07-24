class Gyoumu
  def standup
    '起立'
  end
end


class TantoGyoumu < Gyoumu
  def standup
  '担当は慌てて起立しました'
  end
end

class ShuninGyoumu< Gyoumu
  def standup
    '主任が素早くたち上がりました'
  end

end