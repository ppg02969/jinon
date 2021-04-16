class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@tweets = @user.tweet
  end
end
