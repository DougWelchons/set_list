require 'rails_helper'

RSpec.describe "artist index page" do
  it "can see a list of all artist names" do
    artist1 = Artist.create!(name: "John smith")
    artist2 = Artist.create!(name: "Joe smith")

    visit "/artists"

    expect(page).to have_content(artist1.name)
    expect(page).to have_content(artist2.name)
  end
end
