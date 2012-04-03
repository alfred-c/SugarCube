class AuthenticationsController < ApplicationController
  def index
    @authentications = Authentication.all
  end

  def show
    @authentication = Authentication.find(params[:id])
  end

  def new
    @authentication = Authentication.new
  end

  def create
    # @authentication = Authentication.new(params[:authentication])
    #     if @authentication.save
    #       redirect_to @authentication, :notice => "Successfully created authentication."
    #     else
    #       render :action => 'new'
    #     end
    render :text => request.env["omniauth.auth"].to_yaml
  end

  def edit
    @authentication = Authentication.find(params[:id])
  end

  def update
    @authentication = Authentication.find(params[:id])
    if @authentication.update_attributes(params[:authentication])
      redirect_to @authentication, :notice  => "Successfully updated authentication."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end
end
