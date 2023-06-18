module SessionsHelper
  # Logs in the iven user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Return the current logged-in user (if any)
  def current_user
    return unless session[:user_id]

    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherweise
  def logged_in?
    !current_user.nil?
  end

  def log_out
    reset_session
    @current_user = nil
  end
end
