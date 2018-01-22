class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper ApplicationHelper
  before_action :init_markdown

private

  def init_markdown
    options = {
      hard_wrap: true,
      space_after_headers: true,
    }

    extensions = {
      autolink: true,
    }

    renderer = Redcarpet::Render::HTML.new(options)
    @markdown = Redcarpet::Markdown.new(renderer, extensions)
  end

  def show_404
    render template: 'pages/error404.html.slim', status: :not_found
  end

end
