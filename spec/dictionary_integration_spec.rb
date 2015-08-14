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

  it('brings the user to a specific words definition(s)') do
    visit('/')
    fill_in('new_word', :with => 'White')
    click_button('Add Word')
    click_link('White')
    expect(page).to have_content('White')
  end

  it('allows user to add definition of specific word on its page') do
    visit('/')
    fill_in('new_word', :with => 'Dwarf')
    click_button('Add Word')
    click_link('Dwarf')
    fill_in('new_part_of_speech', :with => 'Noun')
    fill_in('new_definition', :with => 'A short mythical being.')
    click_button('Add Definition')
    expect(page).to have_content('short mythical being.')
  end
end
