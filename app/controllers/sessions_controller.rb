class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    #TODO change back to user_name
    user = User.find_by(name: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to neighborhoods_path
    else
      flash.now[:danger] = "Invalid user and password combination"
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
