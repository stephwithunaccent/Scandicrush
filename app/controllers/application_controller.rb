class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception
  BRAND_NAME = 'The Genuines'.freeze

  def meta_title(title)
    [title, BRAND_NAME].reject(&:empty?).join(' | ')
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email password password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end

  def default_url_options
  { host: ENV["HOST"] || "localhost:3000" }
  end
end
