class BaseController < ApplicationController
  layout 'application'

  def show
    render 'landing_page'
  end
end
