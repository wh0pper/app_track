require 'rails_helper'

describe "the sign-in process" do
  it "logs in user and redirects to jobs index page" do
    visit root_path
    click_on "Log in"
    fill_in "Email", with: "user1@example.com"
    fill_in "user_password", with: "password"
    save_and_open_page

    click_on "Log in"
    expect(page).to have_content "Signed in successfully"
  end
end
