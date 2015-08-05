FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "doogiehou#{n}@gmail.com"
    end
    password "doitnow"
    password_confirmation "doitnow"
  end
end