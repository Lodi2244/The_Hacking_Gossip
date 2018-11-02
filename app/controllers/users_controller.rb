class UsersController < ApplicationController

  def home

  end

  def index

  end

  def create
  @user = User.new(params[:user_name, :email, :password])
  end
end
