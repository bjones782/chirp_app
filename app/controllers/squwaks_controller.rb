class SquwaksController < ApplicationController

#     before_action :authenticate_user!

# #   def create
# #     @squwak = Squwak.new(chirp_id: params[:chirp_id], user: current_user)
# #     # respond_to do |format|
# #     #   format.js
# #     end
# #   end

#     def new
#         @squwak = Squwak.new(squwak_params)
#     end

#   def create
#     @user = current_user.id
#     @chirp = params[:chirp_id]
#     squwaks = {user_id: @user, chirp_id: @chirp}
#     @squwak = Squwak.new(squwaks)

#     @squwak.save!
#     if @squwak.save
#       redirect_to chirps_path
#     else
#      redirect_to chirp_path
#     end
#   end

before_action :find_chirp
# before_action :find_squwak, only: [:destroy]

  def create 
    @chirp.squwaks.create(user_id: current_user.id)
    redirect_to chirp_path(@chirp)
  end

  private

    def find_chirp
      @chirp = Chirp.find(params[:chirp_id])
    end

    def squwak_params
      params.require(:squwak).permit(:user_id, :chirp_id, :current_user)
    end

    # def find_squwak
    #     @squwak = @chirp.squwaks.find(params[:id])
    # end

    # def destroy
    #     @chirp.squwaks.destroy(user_id: current_user.id)
    #     if !(already_squwaked?)
    #       flash[:notice] = "Cannot unsquwak"
    #     else
          
    #   @squwak.destroy
    #     end
    #     redirect_to chirps_path
    #   end

#   def destroy
#     @favorite = Favorite.find(params[:id])
#     respond_to do |format|
#       format.js
#     end
#   end


end
