require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:webuser) { create(:webuser) }

  scenario 'user successfully logs out', js: true do
    sign_in webuser
    visit root_path
    find('nav #user-settings').click
    find('nav a', text: 'Log out').click
    expect(page).to have_selector('nav a', text: 'Login')
  end

end