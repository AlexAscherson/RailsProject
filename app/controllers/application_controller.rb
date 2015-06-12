class ApplicationController < ActionController::Base
  before_filter :set_user_prompts
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :role, :password, :password_confirmation)
    end
  end


  def set_user_prompts
    @user_prompts = Prompt.not_responded(current_user)
  end

  


end
