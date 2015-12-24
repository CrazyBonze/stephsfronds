class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate!

  protected
  def authenticate!
    if params[:controller] == 'home'
      return
    else
      authenticate_user!
      if user_signed_in?
        return
      else
        if params[:controller] != 'image'
          return
        else
          render_404
        end
      end
    end
  end
end

def render_404
  respond_to do |format|
    format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
    format.xml  { head :not_found }
    format.any  { head :not_found }
  end
end
