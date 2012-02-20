class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      session[:user_id] = user.id
      redirect_to cube_url
    else
      redirect_to root_url, alert: "Invalid user"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_url, notice: "Logged out"
  end
end
