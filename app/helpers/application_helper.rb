module ApplicationHelper
  def admin_nav?
    if user_signed_in?
      render 'layouts/admin/navbar'
    else
      render 'layouts/navbar'
    end
  end

  def sign_in?
    if user_signed_in?
      lin
      "<a href='<%= user_session_url %>'>Sign In</a>"
    end
  end
end