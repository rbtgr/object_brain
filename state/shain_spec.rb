require_relative './shain'

describe Shain do
  let(:shain) {Shain.new}


  example '社員の給料は基本給と一緒。基本給100 給料100' do
    expect(shain.calculate_salary(100)).to eq 100
  end

  context '役職が担当の場合' do
    before { shain.yakusyoku = Tanto.new}
    example '役職が担当の場合、基本給と同じ' do
      expect(shain.calculate_salary(100)).to eq 100
    end

    example '役職が上がると、主任と同じく基本給＊2＋1' do
      expect(shain.up.calculate_salary(100)).to eq 201
    end
  end

  context '役職が主任の場合' do
    before { shain.yakusyoku = Shunin.new}
    example  '主任の給料は基本給＊2＋1。基本給100 給料201' do
      # shain.yakusyoku = Shunin.new
      expect(shain.calculate_salary(100)).to eq 201
    end

    example '降格すると100' do
      expect(shain.down.calculate_salary(100)).to eq 100
    end
  end
end
