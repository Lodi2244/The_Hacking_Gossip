class RegistrationController < ApplicationController

  def new
    @user = User.where(user_name: params[:user_name], email: params[:email], password: params[:password]).last
    if @user 
      flash[:info] = "Welcome #{@user.user_name} !"
      #redirect_to root_path
    else
      flash[:info] = "Connection failed"
      #redirect_to registration_new_path
    end
  end
end
