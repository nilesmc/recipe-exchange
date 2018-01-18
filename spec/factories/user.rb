FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "NameTest#{n}" }
    sequence(:email) { |n| "emailtest#{n}@test.com" }
    password '12345678'
    password_confirmation '12345678'
  end
end