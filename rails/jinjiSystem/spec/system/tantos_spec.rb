require 'rails_helper'

RSpec.describe "Tantos", type: :system do
  before do
    driven_by(:rack_test)
  end

  feature 'Standup' do
    scenario "Show 担当は慌てて起立しました when given a command 'standup' " do
      tanto = Tanto.new
      tanto.save!

      visit standup_shain_path tanto.id

      expect(page).to have_content '主任は慌てて起立しました'
    end
  end
end
