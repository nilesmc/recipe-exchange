class RecipesController < ApplicationController

  def index
    @available_years = Recipe.all
  end

  def detail
    @item = Recipe.find_by_slug(params[:slug])
    return show_404 if @item.blank?

  end

  def filter
    # render '_table', layout: false
  end

end
