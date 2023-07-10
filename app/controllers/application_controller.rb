class ApplicationController < ActionController::Base
    before_action :set_current_user
    def set_current_user
        if session[:user_id]
            Current.user = User.find(session[:user_id])
        end
    end
    def require_user_logged_in!
        redirect_to signin_path, alert: "You must be signed in to do that." if Current.user.nil?
    end
end
