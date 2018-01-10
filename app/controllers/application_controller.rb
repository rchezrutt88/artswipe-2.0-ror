class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'application'

  def show
    render 'layouts/landing_page'
  end

  protected

  def authenticate_any!
   unless admin_signed_in? || user_signed_in?
     redirect_to new_user_session_url
   end
  end

end
