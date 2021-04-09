class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   private

    def curr_user
      @_current_user ||= session[:current_user_id] &&
        User.find_by(id: session[:current_user_id])
    end
  
    def after_sign_in_path_for(resource)
        "/signedinuserprofile" 
    end
end
