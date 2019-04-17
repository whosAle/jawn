class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  before_action :find_user, only: [:show, :destroy]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      log_in @user
      redirect_to neighborhoods_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def destroy
    @user.destroy
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
