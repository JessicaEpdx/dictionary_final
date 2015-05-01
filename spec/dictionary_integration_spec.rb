require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path of index', {:type=> :feature}) do
  it("takes you to success page when you add a word") do
    visit('/')
    click_button('Add!')
    expect(page).to have_content("Great you added the word")
  end
end

describe('path of word list at index', {:type=> :feature}) do
  it("prints out a list of words added at index page") do
    visit('/')
    fill_in("word", :with=> "deer")
    click_button('Add!')
    visit('/')
    expect(page).to have_content("deer")
  end
end

describe('path of word', {:type=> :feature}) do
    it("takes you to individual word page") do
    visit('/word/:id')
    expect(page).to have_content("Add your own definition")
  end
end
