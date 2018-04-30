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

  it "adds a new step to a job" do
    visit root_path
    fill_in "Title", with: "Test Job"
    fill_in "Company", with: "Test Company"
    fill_in "Post date", with: Date.today.strftime('%Y-%m-%d')
    fill_in "Rating", with: 5
    fill_in "Location", with: "Portland, OR"
    fill_in "Url", with: "website.com"
    click_button "Create Job"
    click_link "Test Job"
    click_link "Add a step"
    save_and_open_page
    fill_in "Description", with: "Test step"
    fill_in "Notes", with: "Just testin this out..."
    fill_in "Due date", with: Date.today.strftime('%Y-%m-%d')
    fill_in "Priority", with: 3
    click_button "Create Step"
    expect(page).to have_content("Test step")
  end

end
