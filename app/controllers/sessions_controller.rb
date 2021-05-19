class SessionsController < ApplicationController

    def welcome
    end

    def new
        #do nothing here
    end

    def create
        user = User.find_by(username: session_params[:username])
          if user && user.authenticate(session_params[:password])
          session[:user_id] = user.id
          flash[:msg] = "Logged in successfully"
          redirect_to user_path(user)
  
        else
          
          redirect_to login_path
          flash[:err] = "hmmm, looks like the information you entered doesn't match our records."
        end
    end

    def destroy
        session.delete :username
    end
end