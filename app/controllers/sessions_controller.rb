class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
    user = User.authenticate(params[:email],
                             params[:password])
    if user
      sign_in user
      redirect_to cube_url
    else
      redirect_to root_url, alert: "Invalid user"
    end
  end
  
  def createFacebookUser
    auth =  request.env["omniauth.auth"]
    user = User.find_by_fb_uid_and_fb_tokenfields(auth["uid"], auth["credentials"]["token"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id

    redirect_to inviateFB_path
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
