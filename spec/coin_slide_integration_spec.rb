# require('sinatra')
# require('sinatra-contrib')
require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the coin slide feature', {:type => :feature}) do
    it ('processes the users entry and returns the change') do
      visit('/')
      fill_in('change', :with => 67)
      click_button('Get Coins')
      expect(page).to have_content("2 quarters, 1 dimes, 1 nickles, and 2 pennies")
    end
  end
