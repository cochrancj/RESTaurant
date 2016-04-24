class ServersController < ApplicationController

  def new
    @server = Server.new
      unless current_server.admin?
        redirect_to log_in_path
      end
  end

  def create
    unless current_server.admin?
      redirect_to log_in_path
    end

    server = Server.create server_params
    redirect_to log_in_path
  end

  def log_in
  end

  def profile
    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  private

  def server_params
    params.require(:server).permit(:username, :password, :password_confirmation, :admin)
  end



end
