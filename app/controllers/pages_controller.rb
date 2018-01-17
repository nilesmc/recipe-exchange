class PagesController < ApplicationController
  include ApplicationHelper
  def home
    @page = "Hello World"
  end

  def error404
    return show_404
  end

  def sitemap
  end

end