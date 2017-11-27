class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # if we find a user and there password matches they are logged in
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Successfully Logged in ;)"
      redirect_to user
    else
      flash.now[:danger] = "Invalild email/password combination"
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = "Successfully logged out. Come back soon :)"
    redirect_to root_url
  end
end
