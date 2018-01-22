# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_webusers
  user_id = 0
  10.times do
    Webuser.create(
      name: "test#{user_id}",
      email: "test#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id += 1
  end
end

def seed_categories
  cats = ['breakfast', 'brunch', 'lunch', 'dinner', 'snacks']

  cats.each do |title|
    Category.create(title: title, slug: title)
  end
end

def seed_recipes
  categories = Category.all

  categories.each do |category|
    5.times do
      title = Faker::Lorem.sentences[0]
      Recipe.create(
        title: title,
        slug:  title.parameterize,
        description: Faker::Lorem.sentences[0],
        ingredients: Faker::Lorem.sentences[0],
        instructions: Faker::Lorem.sentences[0],
        webuser_id: rand(1..9),
        category_id: category.id
      )
    end
  end
end

seed_webusers
seed_categories
seed_recipes