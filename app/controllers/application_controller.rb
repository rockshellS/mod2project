class ApplicationController < ActionController::Base
    helper_method :current_user
    before_action :require_login

    def current_user
        User.find(session[:user_id]) if session[:user_id]
    end 


    def require_login
        redirect_to controller: 'sessions', action: 'new' unless current_user
    end 

end
