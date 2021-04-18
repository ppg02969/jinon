class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to user_path
    else
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :age, :profile)
  end
end
