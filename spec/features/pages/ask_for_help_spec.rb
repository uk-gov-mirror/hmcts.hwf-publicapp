# coding: utf-8
require 'rails_helper'

RSpec.feature 'As a user' do
  context 'I should be able to ask for technical help' do

    scenario "and to switch to Welsh" do
      visit '/'
      click_on 'technical help'
      expect(page).to have_text "Ask for technical help"
      click_button "Continue"
      expect(page).to have_text "You need to fix the errors on this page before continuing."
      within(:xpath, ".//div[@class='language-picker']") do
        click_link 'Cymraeg'
      end
      expect(page).to have_text "Gofynnwch am help technegol"
    end
  end
end
