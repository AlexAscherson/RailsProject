class UsersController < ApplicationController

  # before_action :authenticate_user!

  def index
      @users = User.all
      
  end

  def admin
      @user_prompts = Prompt.not_responded(current_user)
      @users = User.all
  end
end

