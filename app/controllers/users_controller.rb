class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.create(user_params)
    if @user.errors.any?
      @errors = @user.errors.full_messages.join(", ")
      render :new
    end
    session[:user_id] = @user.id
    redirect_to user_path(@user), notice: "Welcome #{@user.first_name}! Account successfully created"
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :telephone, :email, :password, :password_confirmation)
  end
end
