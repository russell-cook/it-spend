class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	case resource
  	when User then surveys_path
  	when Admin then surveys_path
  	end
  end

  def after_sign_out_path_for(resource)
      surveys_path
  end

end
