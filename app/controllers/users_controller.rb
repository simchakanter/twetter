class UsersController < ApplicationController
  def show
    if params[:username]
      @user = User.find_by(:username => params[:username])
    else
      @user = User.find(params[:id])
    end
  end

end