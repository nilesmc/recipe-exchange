require "rails_helper"

RSpec.feature "Sign up", :type => :feature do
  let(:webuser) { build(:webuser) }

  scenario 'user navigates to sign up page and successfully signs up', js: true do
    visit root_path
    find('nav a', text: 'Signup').click
    fill_in 'webuser[name]', with: webuser.name
    fill_in 'webuser[email]', with: webuser.email
    fill_in 'webuser[password]', with: webuser.password
    fill_in 'webuser[password_confirmation]', with: webuser.password_confirmation
    find('.sign-up-button').click
    expect(page).to have_selector('#user-settings')
  end

end