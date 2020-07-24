# -*- cording: utf-8 -*-
require_relative 'shain_factory'

describe ShainFactory do
  let(:shain_factory) {ShainFactory.new}

  example 'Tantoオブジェクト生成しているかをチェックする' do
    expect(shain_factory.create('Tanto', 100)).to be_an_instance_of Tanto
  end

  example 'Shuninオブジェクト生成しているかをチェックする' do
    expect(shain_factory.create('Shunin', 100)).to be_an_instance_of Shunin
  end

  example 'Buchoオブジェクト生成しているかをチェックする' do
    expect(shain_factory.create('Bucho', 100)).to be_an_instance_of Bucho
  end

  example 'Torishimariyakuオブジェクト生成しているかをチェックする' do
    expect(shain_factory.create('Torishimariyaku', 100)).to be_an_instance_of Torishimariyaku
  end



  example '担当の給料は基本給と一緒。基本給100 給料100' do
    expect(shain_factory.create('Tanto', 100).calculate_salary).to eq 100
  end

  example '部長の給料は基本給の３倍なので。基本給100 給料300' do
    expect(shain_factory.create('Bucho', 100).calculate_salary).to eq 300
  end

  example '主任の給料は基本給＊2＋1。基本給100 給料201' do
    expect(shain_factory.create('Shunin', 100).calculate_salary).to eq 201
  end

  example '取締役の給料は基本給4＊4＋2。基本給100 給料402' do
    @torishimariyaku = shain_factory.create('Torishimariyaku', 100)
    expect(@torishimariyaku.calculate_salary).to eq 402
  end

  example '取締役は踏ん反り返って立ち上がる' do
    @torishimariyaku = shain_factory.create('Torishimariyaku', 100)
    expect(@torishimariyaku.standup).to eq '踏ん反り返って立ち上がりました'
  end

end
