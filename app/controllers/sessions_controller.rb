class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    #TODO change back to user_name
    user = User.find_by(name: params[:session][:user_name])
   #TODO authenticate password in the if 
    if user # && user.authenticate(params[:session][:password]
      log_in user
      redirect_to user
    else
#      flash[:danger] = user.errors.full_messages
      flash.now[:danger] = "Invalid name"
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end