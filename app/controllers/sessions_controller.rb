class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
    user = User.find_by_email(params[:email])
    if user
      sign_in user
      redirect_to cube_url
    else
      redirect_to root_url, alert: "Invalid user"
    end
  end

  def destroy
    sign_out
    redirect_to home_url, notice: "Logged out"
  end
end
