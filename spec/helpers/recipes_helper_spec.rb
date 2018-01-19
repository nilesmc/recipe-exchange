require 'rails_helper'

RSpec.describe RecipesHelper, :type => :helper do

  context '#create_new_recipe_partial_path' do
    it "returns a signed_in partial's path" do
      helper.stub(:webuser_signed_in?).and_return(true)
      expect(helper.create_new_recipe_partial_path). to (
        eq 'recipes/branch/create_new_recipe/signed_in'
      )
    end

    it "returns a signed_in partial's path" do
      helper.stub(:webuser_signed_in?).and_return(false)
      expect(helper.create_new_recipe_partial_path). to (
        eq 'recipes/branch/create_new_recipe/not_signed_in'
      )
    end
  end

  context '#all_categories_button_partial_path' do
    it "returns an all_selected partial's path" do
      controller.params[:category] = ''
      expect(helper.all_categories_button_partial_path).to (
        eq 'recipes/branch/categories/all_selected'
      )
    end

    it "returns an all_not_selected partial's path" do
      controller.params[:category] = 'category'
      expect(helper.all_categories_button_partial_path).to (
        eq 'recipes/branch/categories/all_not_selected'
      )
    end
  end

  context '#no_recipes_partial_path' do
    it "returns a no_recipes partial's path" do
      assign(:recipes, [])
      expect(helper.no_recipes_partial_path).to (
        eq 'recipes/branch/no_recipes'
      )
    end

    it "returns an empty partial's path" do
      assign(:recipes, [1])
      expect(helper.no_recipes_partial_path).to (
        eq 'shared/empty_partial'
      )
    end
  end
end