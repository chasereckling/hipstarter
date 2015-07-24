require 'rails_helper'

describe 'the stripe charge path' do
	it 'allows users to donate to hipsters', js: true do
	user_login
	FactoryGirl.create(:fundraiser)
	visit '/'
	click_on "dave"
	fill_in "custom_amount", with: 10
	click_button "Donate!"
	fill_in 'Email', with: 'test2@test2.com'
	fill_in 'Card number', with: '4242424242424242'
	fill_in 'MM/YY', with: '0422'
	fill_in 'CVC', with: '042'
	click_button 'Pay'
	expect(page).to have_content("submitted")
	end
end
