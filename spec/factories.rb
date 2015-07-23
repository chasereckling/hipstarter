FactoryGirl.define do
	factory :user do
		email('test@test.com')
		password('testtest')
		admin false
	end
	factory :admin, class: User do
		email('admin@admin.com')
		password('adminadmin')
		admin true
	end
	factory :fundraiser do
		name('dave')
		description('dave dave dave')
		user
	end
end
