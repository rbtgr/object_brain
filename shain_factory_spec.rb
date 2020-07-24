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

end
