class ApplicationController < ActionController::Base

    helper_method :current_user
    helper_method :logged_in?
    helper_method :current_movie

    def homepage

    end


    #hadles the curent users info/trak user
    def current_user
        User.find_by(id: session[:user_id])
    end

    #checks if the is logged in or not
    def logged_in?
        !current_user.nil?
    end

    def current_movie
        Movie.find(session[:movie]["id"])
    end
end
