module SessionsHelper
  # Logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if there is any)
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  #Returns flase if the user is not logged in, true if they are.
  def logged_in?
    !current_user.nil?
  end

  #Logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def authorized
    byebug
    redirect_to login_path unless logged_in?
  end

  def custom_auth_method
    flash[:notice] = "not your accont YEET"
    redirect_to current_user
  end

end
