class UsersController < ApplicationController
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
      flash[:success] = "Thanks for signing up! Hope you find what you are looking for!"
      redirect_to @user
    else
      flash[:warning] = "Account not created."
      render 'new'
    end
  end


  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
