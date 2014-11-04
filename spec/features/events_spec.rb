require 'rails_helper'

feature "Events" do

  scenario "User can manage an event" do

    visit root_path
    click_on "New Event"
    fill_in "Description", with: "My new event"
    click_on "Create Event"
    expect(page).to have_content("My new event")

    click_on "edit"
    fill_in "Description", with: "My old event"
    click_on "Update Event"
    expect(page).to have_no_content("My new event")
    expect(page).to have_content("My old event")
    save_and_open_page

    click_on "delete"
    expect(page).to have_no_content("My old event")
    save_and_open_page
  end

end
