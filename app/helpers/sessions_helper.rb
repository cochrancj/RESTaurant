module SessionsHelper
  #
  # before_filter :redirect_if_not_admin :only => [:root]
  #
  # def redirect_if_not_admin
  #   if !@user.is_admin?
  #   redirect_to :root
  # end

  # RETURNS ERROR COMPLAINING ABOUT SYNTAX - NOT EXPECTING :

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
