FactoryGirl.define do 
	factory :place do
		name "Tony's Pizzeria"
		description "Best pepperoni slice."
		atitude(42.3631519)
		longitude(-71.056098)
		association :user
	end
end