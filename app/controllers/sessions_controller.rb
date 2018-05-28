class SessionsController < ApplicationController
  
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || params[:name] == ''
      redirect_to login_path
    else 
      redirect_to root_path
    end
  end

  def destroy
    session.destroy 

    redirect_to root_path
  end
end
