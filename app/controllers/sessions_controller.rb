class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    if params[:name] == nil
      redirect_to sessions_new_path
    elsif params[:name] == ""
      redirect_to sessions_new_path
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end
