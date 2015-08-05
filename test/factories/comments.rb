FactoryGirl.define do 
	factory :comment do
		message "the best"
		association :user
		association :place
	end
end