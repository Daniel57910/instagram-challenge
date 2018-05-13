require 'rails_helper'

RSpec.feature "Homepage/Posts", type: :feature do
  scenario("the user visits the home page") do
    visit("http://localhost:3000/posts")
    expect(page).to have_content("Welcome To Fake Instagram!")
  end
end

