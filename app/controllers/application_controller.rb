class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'application'

  def show
    render 'layouts/landing_page'
  end

end
