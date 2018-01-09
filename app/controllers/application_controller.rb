class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def show_404
    render template: 'pages/error404.html.slim', status: :not_found
  end

end
