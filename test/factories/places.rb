FactoryGirl.define do 
	factory :place do
		name "Tony's Pizzeria"
		address "123 Main Street"
		description "Best pepperoni slice."
		latitude(42.3631519)
    	longitude(-71.056098)
		association :user
	end
end