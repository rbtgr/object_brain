require 'rails_helper'

RSpec.describe Tanto, type: :model do
  it "return yakusyoku as '担当' " do
    tanto = Tanto.new
    expect(tanto.yakusyoku).to eq '担当'
  end
end
