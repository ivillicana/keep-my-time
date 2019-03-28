class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:user][:email].downcase)
    @user = @user.try(:authenticate, params[:user][:password])
    return redirect_to new_session_path, alert: "Unable to sign in" unless @user

    session[:user_id] = @user.id
    redirect_to user_path(@user), notice: "Welcome #{@user.first_name}!"
  end

  def destroy
    session.delete :user_id
    redirect_to new_session_path
  end
end
