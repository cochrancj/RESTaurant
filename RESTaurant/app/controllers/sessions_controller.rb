class SessionsController < ApplicationController

  def create
    username = params[:username]
    password = params[:password]

    server = Server.find_by username: username

    if server && server.authenticate( password )
      session[:user_id] = server.id
      redirect_to profile_path
    else
      redirect_to log_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to log_in_path
  end
  
end
