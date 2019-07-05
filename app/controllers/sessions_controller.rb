
class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      # error - invalid login_path
      flash.now[:danger] = 'Invalid password'
      render 'new'
    end
  end

  def destroy

  end


end
