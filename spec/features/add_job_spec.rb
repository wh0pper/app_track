require 'rails_helper'

describe "crud functionality" do
  before :each do
    user = User.create(email: 'user1@example.com', password: 'password')
    sign_in user
  end

  it "creates a new job" do
    visit root_path
    fill_in "Title", with: "Test Job"
    fill_in "Company", with: "Test Company"
    fill_in "Post date", with: Date.today.strftime('%Y-%m-%d')
    # select_date("04/20/2018", :from => "Post date")
    fill_in "Rating", with: 5
    fill_in "Location", with: "Portland, OR"
    fill_in "Url", with: "website.com"
    save_and_open_page
    click_button "Create Job"
    expect(page).to have_content("Test Job")
  end


end
