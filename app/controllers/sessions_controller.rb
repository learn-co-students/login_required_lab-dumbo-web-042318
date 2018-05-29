class SessionsController < ApplicationController

  def welcome

  end

  def new

  end

  def create
    session[:name] = params[:name]

    if session[:name] == nil || session[:name].empty?

      redirect_to login_path
    else

      redirect_to root_path
    end

  end


  def destroy
    session[:name] = params[:name]

    if session[:name] == nil || params[:name].empty?

      redirect_to login_path
    else

      session.delete :name
    end
  end


end
