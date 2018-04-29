require 'rails_helper'

describe 'the sign-in process' do
  it 'logs in user and redirects to jobs index page with a success message' do
    visit root_path
    click_on 'Log in'
    fill_in 'Email', with: 'user1@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    save_and_open_page
    expect(page).to have_content 'Jobs List'
  end
end
