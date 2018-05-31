class SessionsController < ApplicationController

  def welcome
    if !current_user
      redirect_to login_path
    end
  end


  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end


  def destroy
    session[:name] = nil
    redirect_to root_path
  end

end
