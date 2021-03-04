class RegistrationController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id
      flash[:success] = "You have signe up successfully"
      redirect_to root_path
    else
      flash[:error] = @user.errors.full_messages
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end