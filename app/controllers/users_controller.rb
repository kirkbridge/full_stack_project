class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Redirect to new user's page
      log_in @user
      flash[:success] = "Thanks for signing up! Hope you find what you are looking for!"
      redirect_to @user
    else
      flash.now[:warning] = "Account not created."
      render 'new'
    end
  end


  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(parms[:id])
      redirect_to(root_url) unless @user == current_user
    end
end
