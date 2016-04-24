class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

#   rescue_from 'ActiveRecord::InvalidForeignKey' do
#   # Flash and render, render API json error... whatever
# end




end
