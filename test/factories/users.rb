FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "doogiehou#{n}@gmail.com"
    end
    password "doitnownow"
    password_confirmation "doitnownow"
  end
end