class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email, :role, :password, :password_confirmation))

    if user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    super
  end
end 