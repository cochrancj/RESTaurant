class ServersController < ApplicationController
  def new
    @server = Server.new
  end

  def create
    server = Server.create server_params
    redirect_to log_in_path
  end

  def profile
    if session[:user_id]
      @server = Server.find session[:user_id]
    else
      redirect_to log_in_path
    end
  end

  private

  def server_params
    params.require(:server).permit(:username, :password, :password_confirmation)
  end

end
