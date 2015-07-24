require 'rails_helper'

	describe 'the login path' do
		it 'allows a user to log in' do
			user = FactoryGirl.create(:user)
			user.save
			visit '/users/sign_in'
			fill_in 'Email', with: user.email
			fill_in 'Password', with: user.password
			click_button('Log in')
			expect(page).to have_content('logged in')
		end
	end

	describe 'the sign up path' do
		it 'allows a user to sign up' do
			visit '/users/sign_up'
			fill_in 'Email', with: 'test@test.com'
			fill_in 'user_password', with: 'password'
			fill_in 'Password confirmation', with: 'password'
			click_button('Sign up')
			expect(page).to have_content('logged in')
		end
	end
