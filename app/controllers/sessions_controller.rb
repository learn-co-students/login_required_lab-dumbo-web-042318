class SessionsController < ApplicationController
  def new
  end

  def create 
    session[:name] = params[:name]
    if current_user
      redirect_to root_path
    else 
      redirect_to login_path
    end 
  end 

  def show 
    if session[:name].nil? || session[:name] == ""
      redirect_to login_path
    else 
      redirect_to root_path
    end 
  end 

  def destroy 
    session.delete :name
    redirect_to root_path
  end 
end 
