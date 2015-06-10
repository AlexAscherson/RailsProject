class UsersController < ApplicationController

  # before_action :authenticate_user!

  def index
      @users = User.all
  end

  def admin
      @users = User.all
  end
end

