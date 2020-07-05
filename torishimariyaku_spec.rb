# cording: utf-8
require_relative 'torishimariyaku'

describe Torishimariyaku do
  let(:torishimariyaku) { Torishimariyaku.new}
  example '取締役の給料は基本給4＊4＋2。基本給100 給料402' do
    expect(torishimariyaku.calculate_salary(100)).to eq 402
  end

  example '取締役は踏ん反り返って立ち上がる' do
    expect(torishimariyaku.standup).to eq '踏ん反り返って立ち上がりました'
  end

end
