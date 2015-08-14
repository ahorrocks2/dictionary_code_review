require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word path', {:type => :feature}) do
  it('adds a word to the list') do
    visit('/')
    fill_in('new_word', :with => 'Snow')
    click_button('Add Word')
    expect(page).to have_content('Snow')
  end
end
