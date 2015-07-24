require 'rails_helper'

describe 'the stripe charge path' do
	before do
		user_login
		FactoryGirl.create(:fundraiser)
		visit '/'
		click_on 'Adopt'
		click_on "dave"
		fill_in "custom_amount", with: 10
		click_button("Donate!")
		stripe = page.driver.window_handles.last
		page.within_window stripe do
			fill_in 'Email', with: 'test2@test2.com'
			fill_in 'card_number', with: '4242424242424242'
			fill_in 'cc-exp', with: '0422'
			fill_in 'cc-csc', with: '042'
			click_on 'submitButton'
		end
	end
		it {should have_content('submitted')}
end
