FactoryGirl.define do
	factory :user do
		name	"Mark"
		email	"mark@example.com"
		password	"awesome"
		password_confirmation	"awesome"	
	end
end