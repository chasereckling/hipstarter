require 'rails_helper'

describe 'the stripe charge path', js: true do
	it("allows a user to charge a card") do
		user_login
		FactoryGirl.create(:fundraiser)
		visit '/'
		click_on 'Adopt'
		click_on "dave"
		fill_in "custom_amount", with: 10
		click_button("Donate!")
		sleep(2.second)
		stripe_iframe = all('iframe[name=stripe_checkout_app]').last
			within_frame stripe_iframe do
				fill_in 'email', with: 'test2@test2.com'
				fill_in 'Card number', with: '4242424242424242'
				fill_in 'MM / YY', with: '0422'
				fill_in 'CVC', with: '042'
				click_on('Pay')
			end
			sleep(3.second)
			expect(page).to have_content("submitted")
	end
end
