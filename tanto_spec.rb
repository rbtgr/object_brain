# cording: utf-8
require_relative 'tanto'

describe Tanto do
  let(:tanto) { Tanto.new}
  example '担当の給料は基本給と一緒。基本給100 給料100' do
    expect(tanto.calculate_salary(100)).to eq 100
  end

end