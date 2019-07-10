class UsersController < ApplicationController

    # before_action :require_login, except: [:new, :create]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
        @user.chirps.build
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          redirect_to user_path(@user)
        else
          render :new
        end
      end
    



    private

    def user_params
        params.require(:user).permit(:username, :bio, :password, :profile_pic, :password_confirmation)
        #need to add authenticate above?
    end

    # def password_match?
    #     params[:user][:password] == params[:user][:password_confirmation]
    # end

end
