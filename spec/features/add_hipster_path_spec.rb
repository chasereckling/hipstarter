require 'rails_helper'

describe 'the add hipster path' do
	it 'allows a user to add a hipster', js: true do
		user_login
		visit '/'
		click_link 'Add a Hipster'
		fill_in 'fundraiser_name', with: 'Dave'
		fill_in 'fundraiser_description', with: 'Description'
		click_button 'Submit Changes'
		expect(page).to have_content('Dave')
	end
end
