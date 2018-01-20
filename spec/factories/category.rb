FactoryGirl.define do
  factory :category do
    sequence(:title) { |n| "some title #{n}" }
    sequence(:slug) { |n| "some-slug-#{n}" }
    sequence(:description) { |n| "some description #{n}" }
  end
end