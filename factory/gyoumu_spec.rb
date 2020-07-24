require_relative 'gyoumu'

describe Gyoumu do
  let(:gyoumu) {Gyoumu.new}

  example '社員はとりあえず起立します' do
    expect(gyoumu.standup).to eq "起立"
  end

  describe TantoGyoumu do
    let(:gyoumu) { TantoGyoumu.new}
    example '担当は慌てて立ち上がる' do
      expect(gyoumu.standup).to eq '担当は慌てて起立しました'
    end
  end

  describe ShuninGyoumu do
    let(:gyoumu) { ShuninGyoumu.new}
    example '主任は素早く立ち上がる' do
      expect(gyoumu.standup).to eq '主任が素早くたち上がりました'
    end
  end
end
