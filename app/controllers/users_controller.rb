class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end



  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the Site!"
      session[:user_id] = @user.id
      redirect_to users_path
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end
end
