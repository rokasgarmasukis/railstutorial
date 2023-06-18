class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session # protect against session-fixation attack
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalud email/password'
      render 'new', status: :unprocessable_entity
    end
  end
end
