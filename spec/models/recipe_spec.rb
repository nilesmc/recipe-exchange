require 'rails_helper'

describe Recipe do

  it 'by_category scope gets recipes by particular category' do
    category = create(:category)
    create(:recipe, category_id: category.id)
    create_list(:recipe, 10)
    recipes = Recipe.by_category(category.branch, category.name)
    expect(recipes.count).to eq 1
    expect(recipes[0].category.name).to eq category.name
  end

  it 'by_branch scope gets recipes by particular branch' do
    category = create(:category)
    create(:recipe, category_id: category.id)
    create_list(:recipe, 10)
    recipes = Recipe.by_branch(category.branch)
    expect(recipes.count).to eq 1
    expect(recipes[0].category.branch).to eq category.branch
  end

  it 'search finds a matching Recipe' do
    recipe = create(:recipe, title: 'awesome title', content: 'great content ' * 5)
    create_list(:recipe, 10, title: ('a'..'c' * 2).to_a.shuffle.join)
    expect(Recipe.search('awesome').count).to eq 1
    expect(Recipe.search('awesome')[0].id).to eq recipe.id
    expect(Recipe.search('great').count).to eq 1
    expect(Recipe.search('great')[0].id).to eq recipe.id
  end

end