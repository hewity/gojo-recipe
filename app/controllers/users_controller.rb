class UsersController < ApplicationController
  def user
    @user = User.find(params[:id])
  end
end
