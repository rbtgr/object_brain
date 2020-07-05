# cording: utf-8
require_relative 'shunin'

describe Shunin do
  let(:shunin) { Shunin.new}
  example '主任の給料は基本給＊2＋1。基本給100 給料301' do
    expect(shunin.calculate_salary(100)).to eq 201
  end
end