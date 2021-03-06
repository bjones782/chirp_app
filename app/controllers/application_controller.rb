class ApplicationController < ActionController::Base

    def current_user
        user_id = session[:user_id]
        user_id && User.find(user_id)
    end

    def authenticate!
        unless current_user
            flash[:info] = "You have to be logged in to do that!"
            redirect_to new_chirp_path
        end
    end

     

end
