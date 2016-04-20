class ServersController < ApplicationController

  def new
    @server = Server.new
  end

  def create
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
    params.require(:server).permit(:username, :password, :password_confirmation)
  end

end
