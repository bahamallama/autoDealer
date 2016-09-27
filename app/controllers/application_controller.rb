class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_filter :set_search, :set_site

  def set_search
    @q=Car.search(params[:q])
  end
  
  def set_site
    @site = Site.find(1)
  end

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:account_update) << :name
    end
    
    rescue_from CanCan::AccessDenied do |exception|
      flash[:error] = "Access denied!"
      redirect_to root_url
    end
    
end
