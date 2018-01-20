FactoryGirl.define do
  factory :recipe do
    webuser
    category
    sequence(:title) { |n| "some title #{n}" }
    sequence(:slug) { |n| "some-slug-#{n}" }
    description 'example description'
    ingredients 'example ingredients'
    instructions 'example instructions'
  end
end