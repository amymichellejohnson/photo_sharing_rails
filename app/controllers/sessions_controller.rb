class SessionsController < ApplicationController

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice]= "You've been logged in"
      session[:user_id] = @user.id
      redirect_to users_path
    else
      flash[:alert] = "There was a problem logging in"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've been logged out successfully"
    redirect_to users_path
  end
end
