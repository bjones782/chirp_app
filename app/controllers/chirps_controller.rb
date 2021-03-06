class ChirpsController < ApplicationController

    # before_action :require_login

    def index
        @chirps = Chirp.all
        @chirp = Chirp.new
        @users = User.all
    end 
    
    def new
        @chirp = Chirp.new
    end

    def show
        @chirp = Chirp.find(params[:id])
        @chirps = Chirp.all
    end 

    # def create
    #     @chirp = Chirp.new
    # end

    def create
        @chirp = Chirp.new(chirp_params)
        if @chirp.save
        redirect_to user_path(@chirp.user)
        else
        render :new
        end
    end


    private

    def chirp_params
        params.require(:chirp).permit(:user_id, :content, :chirp_id, :squwaks)
    end

end
