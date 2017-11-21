class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'application'

  def show
    render 'layouts/landing_page'
  end

  protected

  def authenticate_any!
    admin_signed_in? || user_signed_in?
  end

end
