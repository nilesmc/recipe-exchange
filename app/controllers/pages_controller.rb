class PagesController < ApplicationController
  include ApplicationHelper

  def home
    @page = "Welcome to the Recipe Exchange"
    @items = Recipe.limit(5)
  end

  def error404
    return show_404
  end

  def sitemap
  end

end