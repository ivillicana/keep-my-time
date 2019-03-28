class SessionsController < ApplicationController

  def create
    binding.pry
  end

  def destroy
    session.delete :user_id
    redirect_to new_session_path
  end
end
