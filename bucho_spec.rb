# cording: utf-8
require_relative 'shain'

describe Bucho do
  let(:bucho) { Bucho.create}
  example '部長の給料は基本給の３倍なので。基本給100 給料300' do
    expect(bucho.calculate_salary).to eq 300
  end

end