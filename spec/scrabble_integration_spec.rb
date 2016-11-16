require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('output a number score', {:type => :feature}) do
  it('will output a number score with a word') do
    visit('/')
    fill_in('title', :with => 'hello')
    click_button('Send')
    expect(page).to have_content("8")
  end
end
