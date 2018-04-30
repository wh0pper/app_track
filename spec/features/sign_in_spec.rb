require 'rails_helper'

describe 'the sign-up process' do
  it 'signs up new user and redirects to jobs index page with a success message' do
    visit root_path
    fill_in "Email", with: 'test@test.com'
    fill_in "Password", with: 'password'
    fill_in "Password confirmation", with: 'password'
    click_button "Sign up"
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end

describe 'the sign-in process' do
  it 'logs in user and redirects to jobs index page with a success message' do
    User.create(email: 'user1@example.com', password: 'password')
    visit root_path
    click_on 'Log in'
    fill_in "Email", with: 'user1@example.com'
    fill_in "Password", with: 'password'
    click_button "Log in"
    expect(page).to have_content 'Jobs List'
  end
end
