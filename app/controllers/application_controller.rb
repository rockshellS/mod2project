class ApplicationController < ActionController::Base
    def current_user
        session[:username]
    end 


    # def require_login
    #     redirect_to controller: 'sessions', action: 'new' unless current_user
    # end 

end
