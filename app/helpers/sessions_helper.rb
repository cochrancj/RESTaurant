module SessionsHelper

  def current_server
    @current_server ||= get_current_server
  end

  def get_current_server
    if session[:server_id]
      Server.find(session[:server_id])
    else
      nil
    end
  end


end
