class ApplicationDeviseController < Fae::ApplicationController
  layout :layout_by_resource

  skip_before_action :check_disabled_environment, if: -> { custom_devise_controller? }
  skip_before_action :first_user_redirect, if: -> { custom_devise_controller? }
  skip_before_action :authenticate_user!, if: -> { custom_devise_controller? }
  skip_before_action :build_nav, if: -> { custom_devise_controller? }
  skip_before_action :set_option, if: -> { custom_devise_controller?(['api']) }
  skip_before_action :detect_cancellation, if: -> { custom_devise_controller? }
  skip_before_action :set_change_user, if: -> { custom_devise_controller? }
  skip_before_action :set_locale, if: -> { custom_devise_controller? }

  protect_from_forgery prepend: true, if: Proc.new { |c| c.request.format.json? }

  helper_method :custom_devise_controller?

  def after_sign_in_path_for(_resource)
    require "pry"
    binding.pry
    custom_devise_controller?(['webusers']) ? edit_webuser_registration_path : super
  end

  def after_sign_out_path_for(_resource)
    require "pry"
    binding.pry
    custom_devise_controller?(['webusers']) ? new_webuser_session_path : super
  end

  private

  def layout_by_resource
    if custom_devise_controller?
      "application"
    else
      "devise"
    end
  end

  def custom_devise_controller?(values = ['api', 'webusers'])
    (values & request.path.split('/')).length > 0
  end
end