class SessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]

    def new
    end 

    def create 
        user = User.find_by(username: params[:username])

        if user.try(:authenticate, params[:password])
            session[:user_id] = user.id
            redirect_to '/home'
        else 
            flash.alert = ["Incorrect username or password."]
            redirect_to new_session_path
        end 
    end

    def destroy
        session.delete :user_id
        redirect_to new_session_path
    end

    # def create 
    #     user = User.find_by(username: params[:username])

    #     if user.authenticate(params[:password])
    #         redirect_to user_path(user)
    #     else 
    #         redirect_to new_session_path
    #     end 

    # end 

end