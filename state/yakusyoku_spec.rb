require_relative 'yakusyoku'

describe Yakusyoku do
  let(:yakusyoku) { Yakusyoku.new}
  example '社員の給料は基本給と一緒。基本給100 給料100' do
    expect(yakusyoku.calculate_salary(100)).to eq 100
  end

  describe Tanto do
    let(:yakusyoku) { Tanto.new}
    example '担当の給料は基本給と一緒。基本給100 給料100' do
      expect(yakusyoku.calculate_salary(100)).to eq 100
    end

    example '役職が上がると、主任と同じく基本給＊2＋1' do
      expect(yakusyoku.up.calculate_salary(100)).to eq 201
    end
  end

  describe Shunin do
    let(:yakusyoku) {Shunin.new}
    example  '主任の給料は基本給＊2＋1。基本給100 給料201' do
      expect(yakusyoku.calculate_salary(100)).to eq 201
    end

    example '降格すると100' do
      expect(yakusyoku.down.calculate_salary(100)).to eq 100
    end
  end



end
