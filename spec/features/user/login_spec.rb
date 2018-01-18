require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:webuser) { create(:webuser) }

  scenario 'user navigates to the login page and successfully logs in', js: true do
    webuser
    visit root_path
    find('nav a', text: 'Login').click
    fill_in 'webuser[email]', with: webuser.email
    fill_in 'webuser[password]', with: webuser.password
    find('.login-button').click
    require 'pry'
    binding.pry
    expect(page).to have_selector('#webuser-settings')
  end

end