require 'rails_helper'

RSpec.feature "Homepage/Posts", type: :feature do
  scenario("the user visits the home page") do
    visit("http://localhost:3000/posts/new")
    expect(page).to have_content("Here You Can Upload A Post")
  end

  scenario("the user adds a new photo successfully") do
    visit("http://localhost:3000/posts/new")
    attach_file('post_image', 'spec/fixtures/dog.jpg')
    click_button('Upload Photo')
    expect(page).to have_content("Successfully added post!")
  end
=begin
  need to review error message for post uploading
  scenario("the user tries to add a photo without uploading a photo") do
    visit("http://localhost:3000/posts/new")
    click_button('Upload Photo')
    expect(page).to have_content("Error adding new post")
  end
=end
end


